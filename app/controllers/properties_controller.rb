class PropertiesController < ApplicationController
  before_action :set_property, only: %i[show edit update destroy]
  before_action :set_accesses, only: %i[show edit update]

  def index
    @properties = Property.all  
  end

  def show
    @accesses = @property.accesses  
  end  

  def new
    @property= Property.new
    2.times { @property.accesses.build } 
  end    

  def edit
    @property.accesses.build      
  end

  def create
    @property= Property.new(property_params)
    if @property.save
      redirect_to properties_path, notice: "作成しました"      
    else
      2.times { @property.accesses.build }
      render :new
    end  
  end

  def update
    if @property.update(property_params)
      redirect_to properties_path, notice: "編集しました"
    else    
      render :edit    
    end
  end

  def destory
    @property.destroy
    redirect_to properties_path, notice: "削除しました" 
  end

  private

  def set_property
    @property = Property.find(params[:id])
  end

  def set_accesses
    @accesses = @property.accesses
  end

  def property_params
    params.require(:property).permit(:property, :rent, :address, :age, :remarks, accesses_attributes: [:id, :line, :station, :time])
  end
end
