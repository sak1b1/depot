class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy

  before_destroy :ensure_not_referenced_by_any_line_item
  def add_product(product)
    current_item= line_items.find_by(product_id: product.id)
    if current_item
      current_item +=1
    else
      current_item= line_items.build(product_id: product.id)
    end
    current_item
  end
  private
    def ensure_not_referenced_by_any_line_item
      unless line_items.empty?
        errors.add(:base, 'Line Items present')
        throw :abort
      end
    end
end
