class PositionsController < ApplicationController
  def new
    @position = Position.new
  end

  def create
    @position = Position.new(params[:position])
    if @position.save
      redirect_to positions_path, :notice => 'Position successfully added.'
    else
      render :action => 'new'
    end
  end

  def edit
    @position = Position.find(params[:id])
  end

  def update
    @position = Position.find(params[:id])
    if @position.update_attributes(params[:position])
      redirect_to positions_path, :notice => 'Updated position information successfully.'
    else
      render :action => 'edit'
    end
  end

  def index
    @positions = Position.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @positions }
    end
  end

  def show
    @position = Position.find(params[:id])
  end

end
