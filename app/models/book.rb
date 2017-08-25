class Book < ActiveRecord::Base
  has_many :checkouts
  has_many :categorizations
  has_many :categories, through: :categorizations

  validates :title, presence: true
  validates :author, presence: true
  validates :rating, allow_nil: true, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
  #inclusion: {in: 0..100}
  #allow_nil:true is optional
end
