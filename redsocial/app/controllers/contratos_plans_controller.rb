class ContratosPlansController < ApplicationController
  before_action :set_contratos_plan, only: [:show, :edit, :update, :destroy]

  # GET /contratos_plans
  # GET /contratos_plans.json
  def index
    @contratos_plans = ContratosPlan.all
  end

  # GET /contratos_plans/1
  # GET /contratos_plans/1.json
  def show
  end

  # GET /contratos_plans/new
  def new
    @contratos_plan = ContratosPlan.new
  end

  # GET /contratos_plans/1/edit
  def edit
  end

  # POST /contratos_plans
  # POST /contratos_plans.json
  def create
    @contratos_plan = ContratosPlan.new(contratos_plan_params)

    respond_to do |format|
      if @contratos_plan.save
        format.html { redirect_to @contratos_plan, notice: 'Contratos plan was successfully created.' }
        format.json { render :show, status: :created, location: @contratos_plan }
      else
        format.html { render :new }
        format.json { render json: @contratos_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contratos_plans/1
  # PATCH/PUT /contratos_plans/1.json
  def update
    respond_to do |format|
      if @contratos_plan.update(contratos_plan_params)
        format.html { redirect_to @contratos_plan, notice: 'Contratos plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @contratos_plan }
      else
        format.html { render :edit }
        format.json { render json: @contratos_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contratos_plans/1
  # DELETE /contratos_plans/1.json
  def destroy
    @contratos_plan.destroy
    respond_to do |format|
      format.html { redirect_to contratos_plans_url, notice: 'Contratos plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contratos_plan
      @contratos_plan = ContratosPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contratos_plan_params
      params.require(:contratos_plan).permit(:valorTotal)
    end
end
