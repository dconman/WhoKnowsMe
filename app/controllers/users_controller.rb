# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :set_user, only: [:index, :show, :edit, :update, :destroy]
  # GET /user
  def show
  end

  # GET /user/new
  def new
    @user = User.new
  end

  # GET /user/edit
  def edit
  end

  # POST /user
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path, status: :see_other, notice: "User was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /user
  def update
    if @user.update(user_params)
      redirect_to user_path, status: :see_other, notice: "User was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /user
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to login_user_path, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  # GET /user/login
  # POST /user/login
  def login
    redirect_to(user_path, status: :see_other) && return if logged_in?
    return unless request.post?
    @user = User.find_by(username: user_params[:username])
    if @user && @user.authenticate(user_params[:password])
      session[:user_id] = @user.id
      @error = nil
      redirect_to(user_path, status: :see_other) && return
    else
      @error = "Invalid username and password"
    end
  end

  # POST /user/logout
  def logout
    session[:user_id] = nil
    redirect_to login_user_path
  end


  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username, :password)
    end
end
