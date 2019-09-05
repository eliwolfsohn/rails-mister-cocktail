class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def create
    render plain: "Add to DB cocktail '#{params[:title]}' with description '#{params[:description]} and status '#{params[:completed]}"
    @cocktail.save
    redirect_to cocktail_path(@cocktail)
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def edit
    @cocktail = Cocktail.find(params[:id])
  end

  def update
    @cocktail = Cocktail.find(params[:id])
    @cocktail.update(cocktail_params)
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to root_path
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:title, :details, :completed)
  end
end
