class User < ApplicationRecord
  # here establishing realtion that user has many quotes
  has_many :quote

  # adding validation such that user cant have black name and email (musr have presence)
  validates :name, presence: true
  validates :email, presence: true
end
