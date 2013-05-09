class JobsController < ApplicationController

  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find_by_id(params[:id])
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new
    @job.category_id = params[:category_id]
    @job.homeowner_id = params[:homeowner_id]
    @job.contractor_id = params[:contractor_id]
    @job.description = params[:description]
    @job.appointment_date = params[:appointment_date]
    @job.status = params[:status]
    @job.address = params[:address]
    
    if @job.save
            redirect_to jobs_url
          else
      render 'new'
    end
  end

  def edit
    @job = Job.find_by_id(params[:id])
  end

  def update
    @job = Job.find_by_id(params[:id])
    @job.category_id = params[:category_id]
    @job.homeowner_id = params[:homeowner_id]
    @job.contractor_id = params[:contractor_id]
    @job.description = params[:description]
    @job.appointment_date = params[:appointment_date]
    @job.status = params[:status]
    @job.address = params[:address]
    
    if @job.save
            redirect_to jobs_url
          else
      render 'edit'
    end
  end

  def destroy
    @job = Job.find_by_id(params[:id])
    @job.destroy
        redirect_to jobs_url
      end
end
