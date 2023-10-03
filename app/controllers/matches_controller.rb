class MatchesController < ApplicationController
  before_action :match_params, only: %i[create]

  def index
    @matches = Match.all
    @markers = @matches.geocoded.map do |match|
      {
        lat: match.latitude,
        lng: match.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {match: match})
      }
    end
  end

  def new
    @match = Match.new
  end

  def create
    @match = Match.new(match_params)

    if @match.save
      redirect_to match_path(@match), notice: "Partida criada com sucesso!"
    else
      puts "Validation Errors: #{@match.errors.full_messages}"
      render :new
    end
  end


  def show
    @match = Match.find(params[:id])
  end

  def edit
    @match = Match.find(params[:id])
  end

  def update
    @match = Match.find(params[:id])
    if match.update
      redirect_to match_path(@match), notice: 'Partida atualizada com sucesso!'
    else
      render :edit
    end
  end

  def destroy
    @match = Match.find(params[:id])
    @match.destroy
    redirect_to root_path, notice: 'Partida deletada com sucesso!'
  end

  private

  def match_params
    params.require(:match).permit(:address, :datetime, :latitude, :longitude, :price, :bbq, :goalkeaper, :field_type)
  end


end
