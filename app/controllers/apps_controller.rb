class AppsController < ApplicationController
  def index
    @apps = App.page params[:page]

    if params[:order]
      @apps = @apps.order(id: params[:order])
      
    end

    if params[:max]
      @apps = @apps.all.limit(params[:max])
    end

    if params[:start_name] && [:end_name]
      @apps = @apps.between_name(params[:start_name], params[:end_name])
    elsif params[:start_name]
      @apps = @apps.starts_with_name(params[:start_name])
    elsif params[:end_name]
      @apps = @apps.ends_with_name(params[:end_name])
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
