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
	json.array!([1]) do 
		json.text "送信しますか？"
		json.fallback ""
		json.callback_id "send"
		json.color "#3AA3E3"
		json.attachment_type "default"
		json.set! 'actions' do
			json.array!([1]) do |t|
				json.name "send"
				json.text "送信"
				json.type "button"
				json.value 1
			end
			json.array!([1]) do |t|
				json.name "cancel"
				json.text "キャンセル"
				json.type "button"
				json.value 0
				json.set! "confirm" do
					json.title "よろしいですか？"
					json.text "日報登録をやめますか？"
					json.ok_text "はい"
					json.dismiss_text "いいえ"
				end
			end
		end
	end
end 