class YouthHackerControllerController < ApplicationController

  def create 
    puts params
    youth = YouthHacker.create(params.require(:youth_hacker).permit(:age, :gender, :address, :category, :name))
    all_hackers_matching = Mentor.where(:category => youth.category) 
    puts all_hackers_matching
  end

  def create_mentor
    mentor = Mentor.create(params.require(:mentor).permit(:age, :gender, :address, :category, :name))
  end

  def index
  end

  def new
    @youth_hacker = YouthHacker.new 
  end

  def show 
  end

end
