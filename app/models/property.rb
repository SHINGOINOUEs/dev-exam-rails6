class Property < ApplicationRecord
  has_many :access 
  accepts_nested_attributes_for :access 
end
