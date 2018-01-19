class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :introduce_mistakes

  private

  def introduce_mistakes
    raise 'random mistake as a service' if (Time.now.to_i % 5).zero?
  end
end
