class Property < ApplicationRecord
  has_many :accesses 
  accepts_nested_attributes_for :accesses 
end
