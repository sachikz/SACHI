class ContactController < ApplicationController

  def index
    @contact = Contact.new
  end

  def check
    @contact = Contact.new(contact_params)
    if @contact.valid?
      render :action => 'check' # check.html.erbを表示
    else
      render :action => 'index' # index.html.erbを表示
    end
  end

  def thanks
    @contact = Contact.new(contact_params)
    ContactMailer.received_email(@contact).deliver_now
    render :action => 'thanks' # thanks.html.erbを表示
  end

  private

    def contact_params # ストロングパラメーターの設定
      params.require(:contact).permit(:name, :email, :message)
    end
end
