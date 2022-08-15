class Api::V1::LaunchersController < ApplicationController
  before_action :set_launcher, only: %i[show update destroy]

  def index
    @launchers = Launcher.all # TODO : paginate
  end

  def show; end

  def update
    if @launcher.update(launcher_params)
      render :show
    else
      render_error
    end
  end

  def create
    @launcher = Launcher.new(launcher_params)
    if @launcher.save
      render :show, status: :created
    else
      render_error
    end
  end

  def destroy
    @launcher.destroy
    head :no_content
  end

  private

  def set_launcher
    @launcher = Launcher.find(params[:id])
  end

  def launcher_params
    params.require(:launcher).permit(:imported_t, :status, :data)
  end

  def render_error
    render json: { errors: @launcher.errors.full_messages },
      status: :unprocessable_entity
  end
end