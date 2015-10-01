class ProfilesController < ApplicationController

  def index
    @profiles = Profile.all  
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      redirect_to profile_path(@profile)
    else
      render 'new'
    end
  end

  def edit

  end

  def update

  end

  def delete

  end

  private
    def profile_params
      params.fetch(:profile).permit(:avatar, :first_name, :second_name, :gender, :birthday, :height, :weight)
    end

end
