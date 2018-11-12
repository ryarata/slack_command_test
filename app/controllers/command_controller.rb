class CommandController < ActionController::Base
  protect_from_forgery with: :null_session
  def daily_report
  	@date = []
  	now = DateTime.now
  	past_date = now.ago(14.days)
  	(0..13).each do |d|
  		day = past_date.since(d.days)
  		@date.push(day.strftime("%y年%m月%d日"))
  	end
  	@times = []
  	unit = 30
  	(0..14).each do |h|
  		hour = ((unit + unit * h) / 60).to_f
  		@times.push("#{hour.to_s}時間")
  	end
  end

  def daily_report_action
  	
  end

  def daily_report_menu
  	
  end
end
