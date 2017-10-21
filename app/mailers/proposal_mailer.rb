class ProposalMailer < ApplicationMailer
  def email(client)
    @proposal = proposal
    mail(to: @proposal.client_email, subject: "You've recived a new proposal")
  end
end
