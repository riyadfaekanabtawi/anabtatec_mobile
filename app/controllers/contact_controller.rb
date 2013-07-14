class ContactController < ApplicationController
  include SimpleCaptcha::ControllerHelpers
def index
end
def new
   @message = Message.new
end
def create
   @message = Message.new(params[:message])
   if @message.save &amp;&amp; simple_captcha_valid?
      redirect_to(root_path, :notice =&gt; "Message was successfully sent.")
   else
      flash.now.alert = "Required fields or secret code was invalid!"
      render :new
   end
end
end


