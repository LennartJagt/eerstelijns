class PracticesController < ApplicationController
  def index
    @practices = Practice.all
  end

  def show
    @practice = Practice.find(params[:id])
  end

  def new
    @practice = Practice.new 
    @practice.build_address

  end

  def create
    @practice = Practice.new(params[:practice])
    if @practice.save
      redirect_to @practice, :notice => "Successfully created practice."
    else
      render :action => 'new'
    end
  end

  def edit
    @practice = Practice.find(params[:id])
  end

  def update
    @practice = Practice.find(params[:id])
    if @practice.update_attributes(params[:practice])
      redirect_to @practice, :notice  => "Successfully updated practice."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @practice = Practice.find(params[:id])
    @practice.destroy
    redirect_to practices_url, :notice => "Successfully destroyed practice."
  end
end
