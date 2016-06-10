class UniversitiesController < ApplicationController
  before_action :university, except: [:index, :new, :create]

  def index
    @universities = University.all
  end

  def show
  end

  def new
    @university = University.new
  end

  def create
    @university = University.new(university_params)
    if @university.save
      flash[:success] = 'University created!'
      redirect_to university_path(@university)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @university.update(university_params)
      flash[:success] = 'University updated!'
      redirect_to university_path(@university)
    else
      render :edit
    end
  end

  def destroy
    @university.destroy
    flash[:success] = 'University deleted!'
    redirect_to universities_path
  end

  private
  def university
    @university = University.find(params[:id])
  end

  def university_params
    params.require(:university).permit(:name, :class_size, :year_est)
  end
end
