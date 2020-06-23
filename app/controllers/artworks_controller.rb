class ArtworksController < ApplicationController
   
  def index
    if params[:user_id]
      render json: Artwork.artworks_for_user_id(params[:user_id])
    end
  end
  
  def create
    artwork = Artwork.new(artwork_params)

    if artwork.save
      render json: artwork, status: :created
    else
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    artwork = Artwork.find(params[:id])
    render json: artwork
  end

  def update
    artwork = Artwork.find(params[:id])
    artwork.update(artwork_params)
  end

  def destroy
    artwork = Artwork.find(params[:id])
    artwork.destroy
    render json: artwork
  end




  private
    def artwork_params
      params.require(:artwork).permit(:title, :image_url, :artist_id)
    end
end