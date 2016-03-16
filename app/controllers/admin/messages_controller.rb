class Admin::MessagesController < Admin::ApplicationController
  def index
    @messages = Message.order(id: :desc).page(params[:page]).per(15)
  end

  def show
    @message = Message.find(params[:id])
  end
end
