class VotesController < ApplicationController
  before_filter :set_decision

  def new
    @vote = Vote.new(decision: @decision)
    @votable_restaurants = @vote.votable_restaurants.decorate
  end

  def create
    
  end

  private
    def set_decision
      @decision = Decision.find(params[:decision_id])
    end
end