class UsersController < ApplicationController

  def create
    user = User.new(
      username: params[:username],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      avatar: params[:avatar]
    )
    
    if user.save
      session[:user_id] = user.id
      flash[:success] = 'Successfully created account!'
      redirect_to '/trips'
    else
      flash[:warning] = 'Something went wrong. Please try again.'
      redirect_to '/'
    end
  end

  def edit
    
  end

  def update
    @user = current_user
    @user.update(
      username: params[:username],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      first_name: params[:first_name],
      last_name: params[:last_name],
      bio: params[:bio]
    )
    flash[:success] = 'Account Updated!'
    # if user.save
    #   session[:user_id] = user.id
    #   flash[:success] = 'Successfully created account!'
    #   redirect_to '/'
    # else
    #   flash[:warning] = 'Invalid email or password!'
    #   redirect_to '/signup'
    # end
    redirect_to "/trips"
  end

end
