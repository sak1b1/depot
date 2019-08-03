require 'test_helper'

class ProductTest < ActiveSupport::TestCase


  test "product price must be positive" do
    puts "========In product testing mode:========"
    product = Product.new(title: "My Book Title", description: "yyy", image_url: "zzz.jpg", price: -100)
    #product.price = -1
    puts "valid product? :#{assert product.valid?}"
    #assert_equal ["must be greater than or equal to 0.01"], product.errors[:price]

  end

end
