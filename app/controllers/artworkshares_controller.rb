class ArtworksharesController < ApplicationController
  
  def create
    artwork_share = ArtworkShare.new(artwork_shares_params)

    if artwork_share.save
      render json: artwork_share, status: :created
    else
      render json: artwork_share.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    artwork_share = ArtworkShare.find(params[:id])
    artwork_share.destroy
    render json: artwork_share
  end

  private
    
    def artwork_shares_params
      params.require(:artworkshare).permit(:viewer_id, :artwork_id)
    end
end