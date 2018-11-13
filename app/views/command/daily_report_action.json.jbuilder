json.text "日報登録"
json.set! 'attachments' do 
	json.array!([1]) do 
		json.text "時間を選んでください"
		json.fallback "選択してください！"
		json.callback_id "choose_hour"
		json.color "#3AA3E3"
		json.attachment_type "default"
		json.set! 'actions' do
			json.array!([1]) do |t|
				json.name "hour"
				json.text "選択する"
				json.type "select"
				json.set! "options" do
					json.array!(@times) do |hour|
						json.text hour
						json.value hour
					end
				end
			end
		end
	end
end