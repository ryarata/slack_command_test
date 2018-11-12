class CommandController < ActionController::Base
  protect_from_forgery with: :null_session
  def daily_report
  	@test = ["apple","banana","cola"]
  end
end
