class Article < ApplicationRecord
  validates :title, presence: true,
                    length: { minimum: 5 }
  has_many :comments,dependent: :destroy #will delete after deleting associated article 
end
