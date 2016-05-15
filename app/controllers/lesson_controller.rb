class LessonController < ApplicationController

  before_action :set_message, only: :step7

  def step1
    render text: "こんにちわ、#{params[:name]}さん"
  end

  def step2
    render text: params[:controller] + "#" + params[:action]
  end

  def step3
    redirect_to action:"step4"
  end

  def step4
    render text: "step4に移動しました"
  end

  def step5
    flash[:notice] = "step6に移動するよ"
    redirect_to action:"step6"
  end

  def step6
    render text: flash[:notice]
  end

  def step7
    render text: @message
  end

  private
  def set_message
    @message = "こにゃにゃちわ"
  end

end
