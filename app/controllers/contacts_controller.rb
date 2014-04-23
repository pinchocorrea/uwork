class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Gracias por preferirnos. Te contactaremos al toque!'
    else
      flash.now[:error] = 'Ups! no pudimos mandar tu mensaje.'
      render :new
    end
  end
end