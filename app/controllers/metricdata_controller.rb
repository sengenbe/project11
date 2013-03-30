class MetricdataController < ApplicationController
  # GET /metricdata
  # GET /metricdata.json
  def index
    @metricdata = Metricdatum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @metricdata }
    end
  end

  # GET /metricdata/1
  # GET /metricdata/1.json
  def show
    @metricdatum = Metricdatum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @metricdatum }
    end
  end

  # GET /metricdata/new
  # GET /metricdata/new.json
  def new
    @metricdatum = Metricdatum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @metricdatum }
    end
  end

  # GET /metricdata/1/edit
  def edit
    @metricdatum = Metricdatum.find(params[:id])
  end

  # POST /metricdata
  # POST /metricdata.json
  def create
    @metricdatum = Metricdatum.new(params[:metricdatum])

    respond_to do |format|
      if @metricdatum.save
        format.html { redirect_to @metricdatum, notice: 'Metricdatum was successfully created.' }
        format.json { render json: @metricdatum, status: :created, location: @metricdatum }
      else
        format.html { render action: "new" }
        format.json { render json: @metricdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /metricdata/1
  # PUT /metricdata/1.json
  def update
    @metricdatum = Metricdatum.find(params[:id])

    respond_to do |format|
      if @metricdatum.update_attributes(params[:metricdatum])
        format.html { redirect_to @metricdatum, notice: 'Metricdatum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @metricdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metricdata/1
  # DELETE /metricdata/1.json
  def destroy
    @metricdatum = Metricdatum.find(params[:id])
    @metricdatum.destroy

    respond_to do |format|
      format.html { redirect_to metricdata_url }
      format.json { head :no_content }
    end
  end
end
