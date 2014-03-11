class CrewsController < ApplicationController
  before_action :set_crew, only: [:show, :edit, :update, :destroy]

  # GET /crews
  def index
    @crews = Crew.all
  end

  # GET /crews/1
  def show
  end

  # GET /crews/new
  def new
    @crew = Crew.new
  end

  # GET /crews/1/edit
  def edit
  end

  # POST /crews
  def create
    @crew = Crew.new(crew_params)

    if @crew.save
      redirect_to @crew, notice: 'Crew was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /crews/1
  def update
    if @crew.update(crew_params)
      redirect_to @crew, notice: 'Crew was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /crews/1
  def destroy
    @crew.destroy
    redirect_to crews_url, notice: 'Crew was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crew
      @crew = Crew.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def crew_params
      params.require(:crew).permit(:car_number, :driver_name, :phone_number)
    end
end
