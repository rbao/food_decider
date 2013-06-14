class VotesController < ApplicationController
  before_action :set_related_resources
  before_action :new_vote

  def new
  end

  def create
    if @vote.save
      redirect_to decisions_path
    else
      render :new
    end
  end

  private
    def new_vote
      @vote = Vote.new(params[:vote])
      @vote.choices = @choices
    end

    def set_related_resources
      @decision = Decision.find(params[:decision_id])
      @choices = @decision.choices
    end
end