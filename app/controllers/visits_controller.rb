class VisitsController < ApplicationController
  def new
    @visit = Visit.new
    @visit.animals.build 
    @visit.date ||= Date.today
  end

  def create
    @visit = Visit.new(params[:visit])
    if @visit.save
      redirect_to practice_path(:id => @visit.practice_id), :notice => "Successfully created visit."
    else
      render :action => 'new'
    end
  end

  def edit
    @visit = Visit.find(params[:id])
    @visit.date ||= Date.today
  end

  def update
    @visit = Visit.find(params[:id])
    if @visit.update_attributes(params[:visit])
      redirect_to @visit, :notice  => "Successfully updated visit."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @visit = Visit.find(params[:id])
    @visit.destroy
    redirect_to visits_url, :notice => "Successfully destroyed visit."
  end
end
