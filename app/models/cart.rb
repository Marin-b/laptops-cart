class Cart < Hash
  def initialize
    super(0)
  end

  def add(item)
    self[item] += 1
  end

  def total_price
    uniq_items
    uniq_discounts
  end

  private

  def uniq_items
    Laptop.where(slug: keys)
  end

  def uniq_discounts
    Discount.where(laptop: @uniq_items)
  end
end
