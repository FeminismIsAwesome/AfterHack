class YouthHackerControllerController < ApplicationController

  def create 
    puts params
    youth = YouthHacker.create(params.require(:youth_hacker).permit(:age, :gender, :address, :category, :name))
    all_hackers_matching = Mentor.where(:category => youth.category) 
    session[:youth] = youth
  end

  

  def hackers_index
    @hackers =  Mentor.where(:category => session[:youth].category)
  end

  def index
  end

  def new
    @youth_hacker = YouthHacker.new 
  end

  def new_mentor
    @mentor = Mentor.new
  end

  def show 
  end

end
