class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true, :greater_than_or_equal_to: 0}
  validates :has_at_least_mens_or_womens

  def has_at_least_mens_or_womens
    unless womens_apparel.present? || mens_apparel.present?
      error.add(:mens_apparel, "must have at least mens or womens apparel")
      error.add(:womens_apparel, "must have at least mens or womens apparel")
    end
  end

end
