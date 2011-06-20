class ApplicationController < ActionController::Base
  protect_from_forgery

  protected
  def self.consumer
    OAuth::Consumer.new(
      'consumer', #consumer key
      'consumer secret', #secret key
      { site: "http://twitter.com" }
    )
  end
end
