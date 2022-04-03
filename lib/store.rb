class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validate :has_at_least_mens_or_womens, on: :create

  def has_at_least_mens_or_womens
    unless womens_apparel.present? || mens_apparel.present?
      errors.add(:store, "must have at least mens or womens apparel")
    end
  end

end
