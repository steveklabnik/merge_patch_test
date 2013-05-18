class MergesController < ApplicationController
  def index
    safe_params = params.require(:merge).permit(:original, :patch)

    @result = JSON::MergePatch.new(
      safe_params[:original],
      safe_params[:patch]
    ).call

    respond_to do |format|
      format.html do
      end

      format.json_merge_patch do
        render :json => @result
      end
    end 
  end
end
