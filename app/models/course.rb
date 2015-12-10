class Course < ActiveRecord::Base
  has_many :reviews
  validates :title,
    presence: true

  validates :professor,
    presence: true

  validates :description,
    presence: true

  validates :poster_image,
    presence: true

  def review_average
    reviews.sum(:rating_out_of_ten)/((reviews.size).nonzero? || 1)
  end
end
