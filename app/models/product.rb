class Product < ApplicationRecord
  validates_uniqueness_of :title, :message => "already exists"
end
