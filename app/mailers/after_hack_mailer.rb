class AfterHackMailer < ActionMailer::Base
  default from: "afterhack@afterhack.com"
  def alert(user)
    @hacker = user
    @youthHackers = YouthHacker.all
    mail(to: @hacker.address, subject: "New youth mentors are available!")
    
  end
end
