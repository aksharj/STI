class Product < ActiveRecord::Base
  COLORS = [["Blue","Blue"],["Red","Red"],["Yellow","Yellow"],["Black","Black"]]
  validates_presence_of :name,:description,:price
  validates_numericality_of :price
end