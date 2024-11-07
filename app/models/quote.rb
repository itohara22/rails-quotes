class Quote < ApplicationRecord
  # making relation betwwen data table, this is tells that quote belongs to user
  belongs_to :user

  # validating that the content field in quotes has max length of 150 chars
  validates :content, length: { maximum: 150 }, presence: true
end
