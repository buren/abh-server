class Answer < ActiveRecord::Base
  validates_presence_of :question, :answer

  def self.answer_count(type)
    where(question: type).group(:answer).count
  end
end
