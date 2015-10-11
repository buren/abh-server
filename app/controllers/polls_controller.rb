class PollsController < ApplicationController
  # GET /poll
  def poll
    render json: simple_save(poll_record)
  end

  # GET /result
  def result
    render json: poll_result
  end

  private

  def poll_result
    question = params[:question]
    if params[:points] == 'true'
      Point.question_result(question)
    else
      Answer.answer_count(question)
    end
  end

  def poll_record
    params[:points] == 'true' ? point_record : answer_record
  end

  def point_record
    Point.create(
      question: params[:question],
      x_value: params[:x],
      y_value: params[:y]
    )
  end

  def answer_record
    Answer.create(
      question: params[:question],
      answer: params[:value]
    )
  end

  def simple_save(record)
    status = 200
    message = 'Saved.'

    unless record.valid?
      status = 422
      message = record.errors.full_messages.join(', ')
    end
    { status: status, message: message }
  end
end
