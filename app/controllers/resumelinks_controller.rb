class ResumelinksController < ApplicationController
  before_action :set_resumelink, only: [:show, :edit, :update, :destroy]

  # GET /resumelinks
  # GET /resumelinks.json
  def index
    @resumelinks = Resumelink.all
  end

  # GET /resumelinks/1
  # GET /resumelinks/1.json
  def show
  end

  # GET /resumelinks/new
  def new
    @resumelink = Resumelink.new
  end

  # GET /resumelinks/1/edit
  def edit
  end

  # POST /resumelinks
  # POST /resumelinks.json
  def create
    @resumelink = Resumelink.new(resumelink_params)

    respond_to do |format|
      if @resumelink.save
        format.html { redirect_to @resumelink, notice: 'Resumelink was successfully created.' }
        format.json { render :show, status: :created, location: @resumelink }
      else
        format.html { render :new }
        format.json { render json: @resumelink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resumelinks/1
  # PATCH/PUT /resumelinks/1.json
  def update
    respond_to do |format|
      if @resumelink.update(resumelink_params)
        format.html { redirect_to @resumelink, notice: 'Resumelink was successfully updated.' }
        format.json { render :show, status: :ok, location: @resumelink }
      else
        format.html { render :edit }
        format.json { render json: @resumelink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resumelinks/1
  # DELETE /resumelinks/1.json
  def destroy
    @resumelink.destroy
    respond_to do |format|
      format.html { redirect_to resumelinks_url, notice: 'Resumelink was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resumelink
      @resumelink = Resumelink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resumelink_params
      params.require(:resumelink).permit(:resumelink, :default_resume_format, :show_profile, :show_resume, :download_automatically, :user_id, :profile_id)
    end
end
