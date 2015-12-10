class Review < ActiveRecord::Base
  belongs_to :student
  belongs_to :course

  validates :student,
    presence: true

  validates :course,
    presence: true

  validates :text,
    presence: true

  validates :rating_out_of_ten,
    numericality: { only_integer: true }
  validates :rating_out_of_ten,
    numericality: { greater_than_or_equal_to: 1 }
  validates :rating_out_of_ten,
    numericality: { less_than_or_equal_to: 10 }
end
