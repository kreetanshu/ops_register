class NegativeFeedbacksController < ApplicationController
  before_action :set_negative_feedback, only: [:show, :edit, :update, :destroy]

  # GET /negative_feedbacks
  # GET /negative_feedbacks.json
  def index
    @negative_feedbacks = NegativeFeedback.all
  end

  # GET /negative_feedbacks/1
  # GET /negative_feedbacks/1.json
  def show
  end

  # GET /negative_feedbacks/new
  def new
    @negative_feedback = NegativeFeedback.new
  end

  # GET /negative_feedbacks/1/edit
  def edit
  end

  # POST /negative_feedbacks
  # POST /negative_feedbacks.json
  def create
    @negative_feedback = NegativeFeedback.new(negative_feedback_params)

    respond_to do |format|
      if @negative_feedback.save
        format.html { redirect_to @negative_feedback, notice: 'Negative feedback was successfully created.' }
        format.json { render :show, status: :created, location: @negative_feedback }
      else
        format.html { render :new }
        format.json { render json: @negative_feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /negative_feedbacks/1
  # PATCH/PUT /negative_feedbacks/1.json
  def update
    respond_to do |format|
      if @negative_feedback.update(negative_feedback_params)
        format.html { redirect_to @negative_feedback, notice: 'Negative feedback was successfully updated.' }
        format.json { render :show, status: :ok, location: @negative_feedback }
      else
        format.html { render :edit }
        format.json { render json: @negative_feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /negative_feedbacks/1
  # DELETE /negative_feedbacks/1.json
  def destroy
    @negative_feedback.destroy
    respond_to do |format|
      format.html { redirect_to negative_feedbacks_url, notice: 'Negative feedback was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_negative_feedback
      @negative_feedback = NegativeFeedback.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def negative_feedback_params
      params.require(:negative_feedback).permit(:date, :cook, :customer, :feedback, :remark, :spid, :customer_id)
    end
end
