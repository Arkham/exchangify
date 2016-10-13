module ApplicationHelper
  def options_for_currencies
    ExchangeRate.currencies.map do |c|
      [c, c]
    end
  end
end
