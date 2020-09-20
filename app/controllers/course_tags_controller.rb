class CourseTagsController < ApplicationController
  before_action :set_course_tag, only: [:show, :edit, :update, :destroy]

  # GET /course_tags
  # GET /course_tags.json
  def index
    @course_tags = CourseTag.all
  end

  # GET /course_tags/1
  # GET /course_tags/1.json
  def show
  end

  # GET /course_tags/new
  def new
    @course_tag = CourseTag.new
  end

  # GET /course_tags/1/edit
  def edit
  end

  # POST /course_tags
  # POST /course_tags.json
  def create
    @course_tag = CourseTag.new(course_tag_params)

    respond_to do |format|
      if @course_tag.save
        format.html { redirect_to @course_tag, notice: 'Course tag was successfully created.' }
        format.json { render :show, status: :created, location: @course_tag }
      else
        format.html { render :new }
        format.json { render json: @course_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_tags/1
  # PATCH/PUT /course_tags/1.json
  def update
    respond_to do |format|
      if @course_tag.update(course_tag_params)
        format.html { redirect_to @course_tag, notice: 'Course tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_tag }
      else
        format.html { render :edit }
        format.json { render json: @course_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_tags/1
  # DELETE /course_tags/1.json
  def destroy
    @course_tag.destroy
    respond_to do |format|
      format.html { redirect_to course_tags_url, notice: 'Course tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_tag
      @course_tag = CourseTag.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def course_tag_params
      params.require(:course_tag).permit(:course, :subject, :is_active)
    end
end
