class ConversionsController < ApplicationController
  def new
    @conversion = Conversion.new
  end

  def create
    conversion_params = params[:conversion]

    date = Date.parse(conversion_params[:date])
    amount = conversion_params[:amount].to_f
    from_currency = conversion_params[:from_currency]
    to_currency = conversion_params[:to_currency]

    rate = ExchangeRate.at(date, from_currency, to_currency)

    @conversion = Conversion.new({
      date: date,
      amount: amount,
      from_currency: from_currency,
      to_currency: to_currency,
      converted_amount: (amount * rate).round(2)
    })
  end
end
