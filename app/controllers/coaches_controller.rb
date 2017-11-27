class CoachesController < ApplicationController
  before_action :set_coach, only: [:show, :edit, :update, :destroy]

  def index
    @coaches = Coach.all
  end

  def show
  end

  def new
    @coach = Coach.new
    @users = User.all
    @teams = Team.all
  end

  def edit
    @users = User.all
    @teams = Team.all
  end

  def create
    @coach = Coach.new(coach_params)

    if @coach.save
      redirect_to @coach
      flash[:success] = "Successfully created :)"
    else
      render 'new'
    end
  end

  def update
    if @coach.update(coach_params)
      redirect_to @coach
      flash[:success] = "You edited the things :)"
    else
      render 'edit'
    end
  end

  def destroy
    @coach.destroy
    redirect_to coaches_url
  end

  private

  def set_coach
    @coach = Coach.find(params[:id])
  end

  def coach_params
    params.require(:coach).permit(:user_id, :team_id)
  end
end
