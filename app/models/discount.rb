class Discount < ApplicationRecord
  belongs_to :laptop
  enum type_of: { '%': 0, '-': 1 }
end
