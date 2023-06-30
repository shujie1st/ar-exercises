class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: {minimum: 3, message: "Error: Store must have a name that is a minimum of 3 characters!"}
  validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0, message: "Error: Annual_revenue must be a number (integer) and must be 0 or more!"}

  validate :must_carry_mens_or_womens_apparel

  def must_carry_mens_or_womens_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:base, "Error: Store must carry at least one of the men's or women's apparel!")
    end
  end
end
