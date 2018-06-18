-- 
-- created by stymyuko
--

(*
URLに入力してください
URLを https://id:password@www.example.com/ などとすると、
BASIC認証のかかっているサイトに直接アクセスできます
*)
-- URLの設定
set openUrl to ""

-- URLを入力していない場合、アラートを出して終了
if openUrl is "" then
	display alert "スクリプトにURLを入力してください！" buttons {"OK"}
	return
end if

-- Google Chromeで開く
tell application "Google Chrome"
	open location openUrl
end tell