class SurveysController < ApplicationController
  before_action :set_survey, only: [:show, :edit, :update, :destroy]


  def index
    @surveys = Survey.all
    
  end

  def show
  end

  def new
    @survey = Survey.new
  end

  def edit
  end

  def create
    @survey = Survey.new(survey_params)
    respond_to do |format|
      if @survey.save
        format.html { redirect_to new_user_session_path, notice: 'Encuesta recibida exitosamente' }
        format.json { render :show, status: :created, location: @survey }
      else
        format.html { render :new }
        format.json { render json: @survey.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @survey.update(survey_params)
        format.html { redirect_to @survey, notice: 'Encuesta actualizada exitosamente' }
        format.json { render :show, status: :ok, location: @survey }
      else
        format.html { render :edit }
        format.json { render json: @survey.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @survey.destroy
    respond_to do |format|
      format.html { redirect_to surveys_url, notice: 'Encuesta eliminada exitosamente' }
      format.json { head :no_content }
    end
  end

  private
    def set_survey
      @survey = Survey.find(params[:id])
    end

    def survey_params
      params.require(:survey).permit(:genero, :edad, :presupuesto, :compania, :factores, :importante, :color, :lineas, :economizar, :dispuesto, :eres)
    end
end
