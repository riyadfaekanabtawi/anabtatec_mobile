class ContactController < ApplicationController

  def new
    @contact = Contact.new
  end
  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to @contact, notice: 'Email was succesfully sent.' }
        format.json { render action: 'show', status: :created, location: @contact }
      else
        format.html { render action: 'new' }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end
  def contact_params
      params.require(:contact).permit(:fullname, :email, :subject, :message, :phone, :country )
    end
end


