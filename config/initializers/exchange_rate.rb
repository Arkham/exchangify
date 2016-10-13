ExchangeRate::Sources::ECB.feed_path =
  if Rails.env.test?
    File.expand_path("../../../spec/fixtures/ecb.xml", __FILE__)
  else
    File.expand_path("../../../data/ecb.xml", __FILE__)
  end
