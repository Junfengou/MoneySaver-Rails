class Budget < ApplicationRecord
  has_one :debt
  has_one :income
  has_one :giving
  has_one :expense
  has_one :user
end
