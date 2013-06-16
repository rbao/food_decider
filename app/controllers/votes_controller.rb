class VotesController < ApplicationController
  before_action :set_related_resources, except: [:success]
  before_action :new_vote

  def new
    @choices = @vote.choices.decorate
  end

  def create
    @choices = @vote.choices.decorate

    if @vote.save
      redirect_to success_vote_path
    else
      render :new
    end
  end

  def success
  end

  private

    def require_login?
      false
    end

    def new_vote
      @vote = Vote.new(params[:vote])
      @vote.decision = @decision
    end

    def set_related_resources
      @decision = Decision.find(params[:decision_id])
    end
end