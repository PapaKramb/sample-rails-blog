class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user, optional: true  

  validates :title, length: { maximum: 140 }, presence: true
  validates :text, length: { maximum: 4000 }, presence: true

  def subject
    title
  end

  def last_comment
    comments.last
  end
end
