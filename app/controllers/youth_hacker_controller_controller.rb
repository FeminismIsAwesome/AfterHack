class YouthHackerControllerController < ApplicationController

  def email_something(hacker)
    AfterHackMailer.alert(hacker)
  end

  def create 
    puts params
    youth = YouthHacker.create(params.require(:youth_hacker).permit(:age, :gender, :address, :category, :name, :tech))
    all_hackers_matching = Mentor.where("category = #{youth.category} OR tech = #{tech}") 
    all_hackers_matching.each  do |hacker|
        if(hacker.address != nil && hacker.address != "")
          email_something(hacker)
        end
    end
    redirect_to registered_url
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
