class DataValuesController < ApplicationController
  before_action :set_data_value, only: [:show, :edit, :update, :destroy]

  # GET /data_values
  # GET /data_values.json
  def index
    @data_values = DataValue.all
  end

  # GET /data_values/1
  # GET /data_values/1.json
  def show
  end

  # GET /data_values/new
  def new
    @data_value = DataValue.new
  end

  # GET /data_values/1/edit
  def edit
  end

  # POST /data_values
  # POST /data_values.json
  def create
    @data_value = DataValue.new(data_value_params)

    respond_to do |format|
      if @data_value.save
        format.html { redirect_to @data_value, notice: 'Data value was successfully created.' }
        format.json { render :show, status: :created, location: @data_value }
      else
        format.html { render :new }
        format.json { render json: @data_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_values/1
  # PATCH/PUT /data_values/1.json
  def update
    respond_to do |format|
      if @data_value.update(data_value_params)
        format.html { redirect_to @data_value, notice: 'Data value was successfully updated.' }
        format.json { render :show, status: :ok, location: @data_value }
      else
        format.html { render :edit }
        format.json { render json: @data_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_values/1
  # DELETE /data_values/1.json
  def destroy
    @data_value.destroy
    respond_to do |format|
      format.html { redirect_to data_values_url, notice: 'Data value was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_value
      @data_value = DataValue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_value_params
      params.fetch(:data_value, {})
    end
end
