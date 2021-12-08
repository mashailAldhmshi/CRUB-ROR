class Project2sController < ApplicationController
before_action :set_project2, only: [:show, :edit, :update, :destroy]

def show
end

def index
    @project2s = Project2.all
end

def new
    @project2s = Project2.new
end

def edit
end

def create
    @project2 = Project2.new(project2_params)
    if @project2.save
      flash [:notice] = "Project2 was created successfully."
    redirect_to @project2
    else
        render 'new'
    end
end

def update
    if @project2.update(project2_params)
      flash [:notice] = "Project2 was update successfully."
      redirect_to @project2
    else
        render 'new'
    end
end

def destroy
    @project2.destroy
    redirect_to @project2s_path
end

private

def set_project2
@project2s  = Project2.find(params [:id])
end

def project2_params
    (params.requier(:project2).permit(:title, :description)
end

end
