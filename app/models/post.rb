class Post < ApplicationRecord
  belongs_to :user
  validates :company, :site, presence: true
end
