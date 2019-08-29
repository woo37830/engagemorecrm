class DoablesController < ApplicationController
  before_action :set_doable, only: [:show, :edit, :update, :destroy]

  # GET /doables
  def index
    @doables = Doable.all
  end

  # GET /doables/1
  def show
  end

  # GET /doables/new
  def new
    @doable = Doable.new
  end

  # GET /doables/1/edit
  def edit
  end

  # POST /doables
  def create
    @doable = Doable.new(doable_params)

    if @doable.save
      redirect_to @doable, notice: 'Doable was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /doables/1
  def update
    if @doable.update(doable_params)
      redirect_to @doable, notice: 'Doable was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /doables/1
  def destroy
    @doable.destroy
    redirect_to doables_url, notice: 'Doable was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doable
      @doable = Doable.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def doable_params
      params.require(:doable).permit(:name, :description)
    end
end
