class Answer < ActiveRecord::Base
  validates_presence_of :question, :answer

  QUESTIONS = {
    weather:  'How many of you liked the weather today?',
    others: 'Developed with others?',
    oss: 'How many of you heard about Open source software',
    github: 'How many of you have know of GitHub?'
  }
end
