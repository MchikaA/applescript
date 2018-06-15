-- 
-- created by stymyuko
--

-- タイトル
set theTitle to "アカウントの管理"

(*
リストおよび呼び出されるアカウント項目は例です
適宜修正してください
リストにあるメールアドレスとFTPアドレスは例示用です
*)
-- リスト
set theList to {"1: Adobe ID", "2: Apple ID", "3: 社内 サーバ（Basic認証）", "4: 社内 メール（sample@example.net）", "5: 社内 FTP（example.net）"}

-- リストから項目を選択し変数へ代入。注: キャンセルボタンクリックはfalseが入る
set selectAcc to (choose from list theList with prompt "知りたい項目を選択" with title theTitle OK button name "OK" cancel button name "キャンセル")

-- falseの場合、終了
if selectAcc is false then
	return selectAcc
end if

-- 項目が選択された場合。{}が必要
if selectAcc is {"1: Adobe ID"} then
	display dialog "Adobe ID" default answer "ID: " & return & "パスワード: " & return & "メモ: " with title theTitle buttons {"OK"} default button "OK"
	
else if selectAcc is {"2: Apple ID"} then
	display dialog "Apple ID" default answer "ID: " & return & "パスワード: " & return & "メモ: " with title theTitle buttons {"OK"} default button "OK"
	
else if selectAcc is {"3: 社内 サーバ（Basic認証）"} then
	display dialog "社内 サーバ（Basic認証）" default answer "ID: " & return & "パスワード: " & return & "メモ: " with title theTitle buttons {"OK"} default button "OK"
	
else if selectAcc is {"4: 社内 メール（sample@example.net）"} then
	display dialog "社内 メール（sample@example.net）" default answer "ID: " & return & "パスワード: " & return & "メモ: " with title theTitle buttons {"OK"} default button "OK"
	
else if selectAcc is {"5: 社内 FTP（example.net）"} then
	display dialog "社内 FTP（example.net）" default answer "ホスト or サーバ: " & return & "ユーザ: " & return & "パスワード: " & return & "メモ: " with title theTitle buttons {"OK"} default button "OK"
	
else
	-- もしものエラー用
	display dialog "エラーが起きました！" & return & "" buttons {"OK"} default button 1 with icon 0
	
end if