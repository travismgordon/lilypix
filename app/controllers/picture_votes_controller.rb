class PictureVotesController < ApplicationController
  before_action :set_picture_vote, only: [:show, :edit, :update, :destroy]

  # GET /picture_votes
  # GET /picture_votes.json
  def index
    @picture_votes = PictureVote.all
  end

  # GET /picture_votes/1
  # GET /picture_votes/1.json
  def show
  end

  # GET /picture_votes/new
  def new
    @picture_vote = PictureVote.new
  end

  # GET /picture_votes/1/edit
  def edit
  end

  # POST /picture_votes
  # POST /picture_votes.json
  def create
    @picture_vote = PictureVote.new(picture_vote_params)

    respond_to do |format|
      if @picture_vote.save
        format.html { redirect_to @picture_vote, notice: 'Picture vote was successfully created.' }
        format.json { render :show, status: :created, location: @picture_vote }
      else
        format.html { render :new }
        format.json { render json: @picture_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /picture_votes/1
  # PATCH/PUT /picture_votes/1.json
  def update
    respond_to do |format|
      if @picture_vote.update(picture_vote_params)
        format.html { redirect_to @picture_vote, notice: 'Picture vote was successfully updated.' }
        format.json { render :show, status: :ok, location: @picture_vote }
      else
        format.html { render :edit }
        format.json { render json: @picture_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /picture_votes/1
  # DELETE /picture_votes/1.json
  def destroy
    @picture_vote.destroy
    respond_to do |format|
      format.html { redirect_to picture_votes_url, notice: 'Picture vote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_picture_vote
      @picture_vote = PictureVote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def picture_vote_params
      params.require(:picture_vote).permit(:direction, :user, :picture_id)
    end
end
