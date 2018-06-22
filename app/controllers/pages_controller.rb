class PagesController < ApplicationController
  def index
    @project = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
     if @project.save
       redirect_to root_path
     else
       render 'new'
     end
  end


  def destroy
    @project = Project.find(params[:id])
    if @project.destroy
      redirect_to root_path
    end
  end
  private

  def project_params
    params.require(:project).permit(:id, :name, :tasks_attributes => [:id, :title, :project_id])
  end
end
