class MatchesController < ApplicationController
  def index
    @matches = Match.all
  end

  def new
    @match = Match.new
  end

  def create
    @match = Match.new(match_params)
    if @match.save
      # TODO: 今は index に遷移しているが、本来は「1試合目の結果入力画面」
      #       に遷移する。今後対応する。
      redirect_to matches_path
    else
      render :new
    end
  end

  private

  def match_params
    params.require(:match).permit(:saki)
  end
end
