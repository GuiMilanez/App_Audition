class AppsController < ApplicationController
  def index
    @apps = App.where(:id => 1..5)

    if params[:max]
      
    end
   
    if params[:start_id] && params[:end_id]
      @apps = @apps.between(params[:start_id], params[:end_id])
    elsif params[:start_id]
      @apps = @apps.starts_with(params[:start_id])
    elsif params[:end_id]
      @apps = @apps.ends_with(params[:end_id])
    end

    respond_to do |format|
      format.html
      format.json do
        render json: @apps.map do |app|
            {
              id: app.id,
              name: app.name,
            }
        end 
      end
    end
  end

  def show
  end
  

end
