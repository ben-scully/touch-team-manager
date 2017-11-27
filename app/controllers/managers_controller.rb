class ManagersController < ApplicationController
  before_action :set_manager, only: [:show, :edit, :update, :destroy]

  def index
    @managers = Manager.all
  end

  def show
  end

  def new
    @manager = Manager.new
    @users = User.all
    @teams = Team.all
  end

  def edit
    @users = User.all
    @teams = Team.all
  end

  def create
    @manager = Manager.new(manager_params)

    if @manager.save
      redirect_to @manager
      flash[:success] = "Successfully created :)"
    else
      render 'new'
    end
  end

  def update
    if @manager.update(manager_params)
      redirect_to @manager
      flash[:success] = "You edited the things :)"
    else
      render 'edit'
    end
  end

  def destroy
    @manager.destroy
    redirect_to managers_url
  end

  private

  def set_manager
    @manager = Manager.find(params[:id])
  end

  def manager_params
    params.require(:manager).permit(:user_id, :team_id)
  end
end
