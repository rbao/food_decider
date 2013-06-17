class ChoiceDecorator < Draper::Decorator
  delegate_all

  decorates_association :restaurant
end
