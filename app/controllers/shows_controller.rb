class ShowsController < ApplicationController
  def index
    @shows = Show.all
  end

  def show
  	@show = Show.find(params[:id])
  end

  def new
  @show = Show.new
end

def edit
  @show = Show.find(params[:id])
end
 
def create
  @show = Show.new(show_params)
 
  if @show.save
    redirect_to @show
  else
    render 'new'
  end
end
 
def update
  @show = Show.find(params[:id])
 
  if @show.update(show_params)
    redirect_to @show
  else
    render 'edit'
  end
end
 
private
  def show_params
    params.require(:show).permit(:name, :venue)
  end
end
