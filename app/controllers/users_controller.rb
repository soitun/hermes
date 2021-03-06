class UsersController < ApplicationController
  before_filter :set_current_user_id
  # GET /users
  # GET /users.xml
  def index
    @users = User.all
    respond_with(@users)
  end

  # GET /users/1
  # GET /users/1.xml
  def show
    @user = User.find(params[:id])
    respond_with(@user)
  end

  # GET /users/new
  # GET /users/new.xml
  def new
    @user = User.new
    respond_with(@user)
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.xml
  def create
    @user = User.new(params[:user])
    @user.save
    respond_with(@user)
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    respond_with(@user)
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_with(@user)
  end

private
  
  def set_current_user_id
    params[:id] ||= current_user.id
  end

end
