class DecisionDecorator < Draper::Decorator
  delegate_all
  
  decorates_association :choices
end
