class JobsController < ApplicationController
  before_action :find_job, only: [:show, :edit, :update, :destroy]

  def index
    @jobs = Job.order(created_at: :desc)
  end

  def show
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(jobs_params)

    if @job.save
      redirect_to job_url(@job)
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @job.update(jobs_params)
      redirect_to job_path(@job)
    else
      render :edit
    end
  end

  def destroy
    @job.destroy
    redirect_to root_url
  end

  private

    def jobs_params
      params.require(:job).permit(:title, :description, :company, :url)
    end

    def find_job
      @job = Job.find(params[:id])
    end
end
