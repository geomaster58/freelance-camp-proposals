class FreelanceProposalsController < ApplicationController
  before_action :set_freelance_proposal, only: [:show, :update, :destroy]

  # GET /freelance_proposals
  def index
    @freelance_proposals = FreelanceProposal.all

    render json: @freelance_proposals
  end

  # GET /freelance_proposals/1
  def show
    render json: @freelance_proposal
  end

  # POST /freelance_proposals
  def create
    @freelance_proposal = FreelanceProposal.new(freelance_proposal_params)

    if @freelance_proposal.save
      render json: @freelance_proposal, status: :created, location: @freelance_proposal
    else
      render json: @freelance_proposal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /freelance_proposals/1
  def update
    if @freelance_proposal.update(freelance_proposal_params)
      render json: @freelance_proposal
    else
      render json: @freelance_proposal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /freelance_proposals/1
  def destroy
    @freelance_proposal.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_freelance_proposal
      @freelance_proposal = FreelanceProposal.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def freelance_proposal_params
      params.require(:freelance_proposal).permit(:customer, :portfolio_url, :tools, :estimated_hours, :hourly_rate, :weeks_to_compelete, :client_email)
    end
end
