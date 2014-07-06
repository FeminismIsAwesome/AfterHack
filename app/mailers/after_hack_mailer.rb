class AfterHackMailer < ActionMailer::Base
  default from: "afterhack@afterhack.com"
  def alert_email(user)
    @hacker = user
    mail(to: @hacker.address, subject: "New youth mentors are available!")
    
  end
end
