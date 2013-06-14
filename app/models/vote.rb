class Vote
  include ActiveModel::Model

  attr_accessor :choices, :voted_choices, :yes_choice_ids, :no_choice_ids

  validate :voted

  def voted_choices
    @voted_choices ||= {}
    @voted_choices
  end

  def yes_choice_ids
    return @yes_choice_ids if @yes_choice_ids
    @yes_choice_ids = []
    voted_choices.each do |choice_id, value|
      @yes_choice_ids << choice_id if value == 'yes' 
    end
    @yes_choice_ids
  end

  def no_choice_ids
    return @no_choice_ids if @no_choice_ids
    @no_choice_ids = []
    voted_choices.each do |choice_id, value|
      @no_choice_ids << choice_id if value == 'no' 
    end
    @no_choice_ids
  end

  def save
    return false unless valid?
    choices.each do |choice|
      choice.points += 1 if yes_choice_ids.include?(choice.id.to_s)
      choice.points -= 2 if no_choice_ids.include?(choice.id.to_s)
      choice.save
    end
  end

  private
    def voted
      errors.add(:base, "You must vote either yes or no for at least one restaurant") if voted_choices.blank?
    end

end