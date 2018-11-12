json.text "Would you like to play a game?"
json.set! 'attachments' do 
	json.array! do 
		json.text "Choose a game to play"
		json.fallback "You are unable to choose a game"
		json.callback_id "wopr_game"
		json.color "#3AA3E3"
		json.attachment_type "default"
		json.set! 'actions' do
			json.array!(@test) do |t|
				json.name "game"
				json.text t
				json.type "button"
				json.value t
			end
		end
	end
end 