class Conversion
  include ActiveModel::Model

  attr_accessor :date, :amount, :from_currency, :to_currency, :converted_amount
end
