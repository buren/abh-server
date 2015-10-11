class Point < ActiveRecord::Base
  validates_presence_of :question, :x_value, :y_value

  def self.question_result(type)
    where(question: type)
      .pluck(:x_value, :y_value)
  end
end
