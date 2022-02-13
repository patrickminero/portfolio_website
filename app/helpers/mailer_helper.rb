module MailerHelper
  def send_email(mailer_class, mailer_method, **args)
    mailer_class.with(**args).send(mailer_method).deliver_later
  end
end