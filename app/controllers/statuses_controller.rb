class StatusesController < ApplicationController
    def create
   # @status = Status.new(status_params)
    
    @status = current_business.statuses.build(status_params)
    respond_to do |format|
      if @status.save
        format.html { redirect_to :back}
        format.json { render action: 'show', status: :created, location: @status }
      else
        format.html { render action: 'new' }
        format.json { render json: @status.errors, status: :unprocessable_entity }
      end
    end
  end
  
  
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_status
      @status = Status.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def status_params
      params.require(:status).permit(:user_id, :content)
    end
end
