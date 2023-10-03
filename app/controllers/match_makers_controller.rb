class MatchMakersController < ApplicationController
  before_action :set_match, except: [:index]
  before_action :set_match_maker, only: [:edit, :update, :destroy]

  def index
    @match_makers = @match.match_makers
  end

  def new
    @match_maker = @match.match_makers.build
  end

  def create
    @match_maker = @match.match_makers.build(match_maker_params)
    if @match_maker.save
      redirect_to match_match_makers_path(@match), notice: 'Match Maker criado com sucesso!'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @match_maker.update(match_maker_params)
      redirect_to match_match_makers_path(@match), notice: 'Match Maker atualizado com sucesso!'
    else
      render :edit
    end
  end

  def destroy
    @match_maker.destroy
    redirect_to match_match_makers_path(@match), notice: 'Match Maker excluído com sucesso!'
  end

  private

  def match_maker_params
    # Defina os parâmetros permitidos para a criação/atualização do Match Maker
    params.require(:match_maker).permit(:nome, :outra_atributo)
  end

  def set_match
    @match = Match.find(params[:match_id])
  end

  def set_match_maker
    @match_maker = @match.match_makers.find(params[:id])
  end
end
