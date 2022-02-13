class ContactMailer < ApplicationMailer
  def invite
    @contact = params[:contact]
    @name = @contact.name
    @email = @contact.email
    @message = @contact.message

    mail(
      to: "Patrick Minero <patrickminerovalencia@gmail.com>",
      from: "#{@name} <#{@email}>",
      subject: "Someone contacted you on patminero.com"
    )
  end
end