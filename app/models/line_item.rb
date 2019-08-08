class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  def total_price
    product.price * quantity
  end
=begin
  def whatever
    Rails.logger.info "\n=========i am whatever in lite_item(model)==========\n"
  end
=end

  def decrease_product(anything)
    Rails.logger.info "\n====in line_item(model): decrease_product and #{anything.inspect}====\n"
    current_item=LineItem.find_by(id: anything.id)
    Rails.logger.info "\n====in line_item(model): current_item:  #{current_item.inspect}====\n"


      if current_item
        if current_item.quantity > 1
          current_item.quantity -=1
          current_item.save
        else
          #line_items.destroy(product_id: product.id)
          current_item.destroy
        end

      end


  end
end
