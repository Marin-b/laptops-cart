Discount.destroy_all
Laptop.destroy_all

laptops = [
  { name: 'Macbook Pro 13', price: 60, slug: 'AP1' },
  { name: 'Lenovo Thinkpad', price: 41, slug: 'LN1' },
  { name: 'HP 850 G5', price: 39, slug: 'HP1' }
]

laptops.each { |laptop| Laptop.create(laptop) }

discounts = [
  {
    min_quantity: 2,
    max_quantity: 2,
    type_of: 0,
    amount: 50,
    laptop: Laptop.find_by_slug('LN1'),
    start_date: Date.today,
    end_date: Date.today.next_year
  },
  {
    min_quantity: 2,
    max_quantity: nil,
    type_of: 0,
    amount: 10,
    laptop: Laptop.find_by_slug('AP1'),
    start_date: Date.today,
    end_date: Date.today.next_year
  }
]

discounts.each { |discount| Discount.create(discount) }

%w[laptop discount].each do |item|
  item_class = item.capitalize.constantize
  puts "#{item_class.count} #{item}s created"
end
