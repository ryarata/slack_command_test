Rails.application.routes.draw do
  match 'daily_report' => "command#daily_report",via: [:get,:post]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
