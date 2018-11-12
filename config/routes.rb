Rails.application.routes.draw do
  get 'daily_report' => "command#daily_report"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
