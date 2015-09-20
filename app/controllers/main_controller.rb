class MainController < ApplicationController
  def weight_height
    Physical.create!(weight: params[:weight], height: params[:height])
    render json: { status: 200 }
  end

  def weight_height_chart
    render json: Physical.all.map { |p| [p.weight, p.height] }
  end

  def polls
    Answer.create!(question: params[:type], answer: params[:value])
    render json: {
      status: 200
    }
  end

  def polls_chart
    render json: Answer.where(question: params[:type]).group(:answer).count
  end
end
