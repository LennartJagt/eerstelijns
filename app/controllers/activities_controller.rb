class ActivitiesController < ApplicationController

def new
  @activity = Activity.new
  
end

def create
  @activity = Activity.new(params[:visit])
  if @activity.save
    redirect_to activity_path :notice => "Successfully created activity."
  else
    render :action => 'new'
  end
end

def edit
  @activity = Activity.find(params[:id])
  
end

def update
  @activity = Activity.find(params[:id])
  if @activity.update_attributes(params[:activity])
    redirect_to @activity, :notice  => "Successfully updated visit."
  else
    render :action => 'edit'
  end
end

def destroy
  @activity = Activity.find(params[:id])
  @activity.destroy
  redirect_to activity_url, :notice => "Successfully destroyed activity."
end
end