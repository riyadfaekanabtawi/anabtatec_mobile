class Notifier < ActionMailer::Base
 def notification(message)
   @message = message
   mail(
      to: "riyadcarioca@gmail.com",
      from: message.email,
      subject: message.subject
   )
end
end
