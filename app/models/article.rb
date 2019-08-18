class Article < ApplicationRecord
  validates :title, presence: true,
                    length: { minimum: 15 }
  belongs_to :author
end
