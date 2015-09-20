class MainController < ApplicationController
  # GET /weight_height
  def weight_height
    Physical.create!(weight: params[:weight], height: params[:height])
    render json: { status: 200 }
  end

  # GET /weight_height_chart
  def weight_height_chart
    render json: Physical.pluck(:weight, :height)
  end

  # GET /polls
  def polls
    Answer.create!(question: params[:type], answer: params[:value])
    render json: {
      status: 200
    }
  end

  # GET /polls_chart
  def polls_chart
    render json: Answer.where(question: params[:type]).group(:answer).count
  end

  # GET /clear
  # Clear database
  def clear
    [Answer, Physical].map(&:delete_all)
    render json: {
      status: 200
    }
  end
end
