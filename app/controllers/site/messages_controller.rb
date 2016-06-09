class Site::MessagesController < Site::ApplicationController
  def new
  	@message = Message.new
    @visitor = Visitor.new
  end

  def create
    @visitor = Visitor.new(visitor_params)

    if @visitor.save
      @message = Message.new(message_params)
      @message.visitor_id = @visitor.id

      if @message.save
        redirect_to contato_path, notice: "Mensagem enviada, obrigado!"
      end
    else
      redirect_to contato_path, notice: "Ocorreram erros ao enviar:"
    end
  end


  def visitor_params
    params.require(:visitor).permit(:id, :name, :phone, :email)
  end

  def message_params
    params.require(:message).permit(:id, :content)
  end
end