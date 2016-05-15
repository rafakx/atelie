class Site::ContactController < Site::ApplicationController
  def index
  	@messages = Message.all
  end
end
