class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]

  def index
    @players = Player.all
  end

  def show
  end

  def new
    @player = Player.new
    @users = User.all
    @teams = Team.all
  end

  def edit
    @users = User.all
    @teams = Team.all
  end

  def create
    @player = Player.new(player_params)

    if @player.save
      redirect_to @player
      flash[:success] = "Player successfully created :)"
    else
      render 'new'
    end
  end

  def update
    if @player.update(player_params)
      redirect_to @player
      flash[:success] = "You edited the things :)"
    else
      render 'edit'
    end
  end

  def destroy
    @player.destroy
    redirect_to players_url
  end

  private
  def set_player
    @player = Player.find(params[:id])
  end

  def player_params
    params.require(:player).permit(:user_id, :team_id)
  end
end
