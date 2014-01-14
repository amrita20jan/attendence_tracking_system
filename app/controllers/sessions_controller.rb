class SessionsController < ApplicationController


  def new
  end

 
  def login

     if @user=User.find_by_username(params[:username])
              session[:user_id] = @user.id
              #puts "============#{session[:user_id] = @user.id}0------------------------"
             a=Time.now.to_datetime.in_time_zone('Mumbai')
             if (10<=a.hour)&&(00==a.min)
				puts " ______________________You Logged at right time  : #{a}" 
		     else
				puts "___________________________ You Logged late  : #{a}"
		   	 end
		   	 @user.user_times.create(:arrival_time=>a)

              #puts "-----------------------------------------" 
              redirect_to user_path(@user)
       
      else              
          redirect_to "/users"
      end
  end 

 
  def logout
      session[:user_id]=nil
      redirect_to "/users"
  end
end

