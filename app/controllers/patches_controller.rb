class PatchesController < ApplicationController
  def index
    safe_params = params.require(:patch).permit(:original, :operations)

    @result = JSON.patch(
      safe_params[:original],
      safe_params[:operations]
    )

    respond_to do |format|
      format.html do
      end
      format.json_patch do
        render :json => @result
      end
    end
  end
end
