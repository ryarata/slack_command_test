json.text "日報登録"
json.set! 'attachments' do 
	json.array!([1]) do 
		json.text "日付を選んでください"
		json.fallback "選択してください！"
		json.callback_id "choose_date"
		json.color "#3AA3E3"
		json.attachment_type "default"
		json.set! 'actions' do
			json.array!([1]) do |t|
				json.name "date"
				json.text "選択する"
				json.type "select"
				json.set! "options" do
					json.array!(@date) do |date|
						json.text date
						json.value date
					end
				end
			end
		end
	end
end 