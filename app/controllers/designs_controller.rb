class DesignsController < ApplicationController
  skip_before_filter :authorize
  before_action :set_design, only: [:show, :edit, :update, :destroy]

  # GET /designs
  # GET /designs.json
  def index
    session[:design_style] = params[:style] if params[:style] != nil?
    session[:design_household] = params[:household] if params[:household] != nil?
    session[:design_stage] = params[:stage] if params[:stage] != nil?

    @designs = Design.all
    @designs = @designs.where("style =?", session[:design_style]) if not session[:design_style].blank?
    @designs = @designs.where("household =?", session[:design_household]) if not session[:design_household].blank?
    @designs = @designs.where("stage =?", session[:design_stage]) if not session[:design_stage].blank?
  end

  # GET /designs/1
  # GET /designs/1.json
  def show
  end

  # GET /designs/new
  def new
    @design = Design.new
  end

  # GET /designs/1/edit
  def edit
  end

  # POST /designs
  # POST /designs.json
  def create
    #@design = Design.new(design_params)

    @designer = Designer.find(params[:designer_id])
    @design = @designer.designs.create(design_params)

    respond_to do |format|
      if @design.save

        if params[:images]
          params[:images].each { |image|
            @design.photos.create(image: image)
          }
        end

        format.html { redirect_to design_path(@design), notice: 'Design was successfully created.' }
        format.json { render :show, status: :created, location: @design }
      else
        format.html { render :new }
        format.json { render json: @design.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /designs/1
  # PATCH/PUT /designs/1.json
  def update
    respond_to do |format|
      if params[:images]
        params[:images].each { |image|
          @design.photos.create(image: image)
          render :text => @design.photos.inspect
        }
      end

      if @design.update(design_params)
        format.html { redirect_to @design, notice: 'Design was successfully updated.' }
        format.json { render :show, status: :ok, location: @design }
      else
        format.html { render :edit }
        format.json { render json: @design.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /designs/1
  # DELETE /designs/1.json
  def destroy
    @design.destroy
    respond_to do |format|
      format.html { redirect_to designs_url, notice: 'Design was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_design
      @design = Design.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def design_params
      params.require(:design).permit(:name, :stage, :style, :household, :author, :pic, :photos)
    end
end
