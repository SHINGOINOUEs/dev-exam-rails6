class PropertiesController < ApplicationController
  def index
    @properties = Property.all  
    @accesses = Access.all
  end

  def show
    Property.find(params[:id])    
  end  

  def new
    @property= Property.new
    2.times { @property.access.build } 
  end    

  def edit
  end

  def create
    Property.create(property_params)    
    redirect_to new_Property_path
  end

  def update
  end

  def destory
  end

  private

  def Property_params
    params.require(:property).permit(:property,:rent,:address, :age,:distance)
  end
end
