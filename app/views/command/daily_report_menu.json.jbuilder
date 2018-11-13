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