class AdminSessionsController < ApplicationController
  ADMIN_USERNAME = ENV['ADMIN_USERNAME']
  ADMIN_PASSWORD = ENV['ADMIN_PASSWORD']

  def new
  end

  def create
    if params[:password] == ADMIN_PASSWORD && params[:username] == ADMIN_USERNAME
      session[:admin] = true
      redirect_to items_path, notice: 'Admin logged in successfully.'
    else
      flash.now[:alert] = 'Invalid credentials.'
      render :new
    end
  end

  def destroy
    session[:admin] = nil
    redirect_to root_path, notice: 'Admin logged out successfully.'
  end
end
