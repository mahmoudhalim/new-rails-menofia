class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]

  # GET /users
  def index
    @users = User.all
  end

  # GET /users/:id
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/:id/edit
  def edit
  end

  # POST /users
  def create
    @user =  User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH /users/:id
  def update
    if @user.update(user_params)
      redirect_to @user
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /users/:id
  def destroy
    @user.destroy
    redirect_to users_path
  end

  def set_user
    @user = User.find(params[:id])
  end

  # to create user from params directly
  def user_params
    params.require(:user).permit(:name, :dob, :email, :phone, :address)
  end
end
