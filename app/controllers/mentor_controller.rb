class MentorController < ApplicationController
def create
    mentor = Mentor.create(params.require(:mentor).permit(:age, :gender, :address, :category, :name, :tech))
    session[:mentor] = mentor
    redirect_to registered_url
  end
  def index
    @mentors =  YouthHacker.where(:category => session[:youth].category)
  end
    def new
    @mentor = Mentor.new
  end

  def test
    @hacker = Mentor.first
    @youthHackers = YouthHacker.all
    
  end
end
