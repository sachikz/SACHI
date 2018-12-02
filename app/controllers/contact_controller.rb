class ContactController < ApplicationController

  def index
    @contact = Contact.new
    render :action => 'index' # index.html.erbを表示
  end

  def confirm
    @contact = Contact.new(contact_params)
    if @contact.valid?
      render :action => 'confirm' # confirm.html.erbを表示
    else
      render :action => 'index' # index.html.erbを表示
    end
  end

  def thanks
    @contact = Contact.new(contact_params)
    ContactMailer.received_email(@contact).deliver
    render :action => 'thanks' # thanks.html.erbを表示
  end

  private

    def contact_params # ストロングパラメーターの設定
      params.require(:contact).permit(:name, :email, :message)
    end
end
