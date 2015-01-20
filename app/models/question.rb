class Question < ActiveRecord::Base
  belongs_to :project

  has_many :possible_answers

  #Allows for answers to have more than one answer.
  accepts_nested_attributes_for :possible_answers,
      reject_if: proc { |attributes| attributes['title'].blank? }
end
