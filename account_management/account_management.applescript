-- 
-- created by stymyuko
--

-- タイトル
set theTitle to "アカウントの管理"

-- リスト1
(*
リスト1は適宜修正してください
リスト1とリスト2は同じ数にしてください
リスト1にあるメールアドレスとFTPアドレスは例示用です
*)
set theList1 to {"Adobe ID", "Apple ID", "社内 サーバ（Basic認証）", "社内 メール（sample@example.net）", "社内 FTP（example.net）"}

--リスト2
(*
リスト2は適宜修正してください
リスト1とリスト2は同じ数にしてください
*)
set theList2 to {{"ID: sample1", "パスワード: sample1", "メモ: sample1", ""}, {"ID: sample2", "パスワード: sample2", "メモ: sample2", ""}, {"ID: sample3", "パスワード: sample3", "メモ: sample3", ""}, {"ID: sample4", "パスワード: sample4", "メモ: sample4", ""}, {"ホスト or サーバ: sample5", "ユーザ: sample5", "パスワード: sample5", "メモ: sample5"}}

-- 区切り文字
set myDelimiter to ": "

--リスト1の長さを取得
set listLength to length of theList1

-- 新しい連番付きリスト用
set serialNumList to {}

-- from から to になるまで、繰り返す（リスト1の長さ分）
-- 連番付きリスト serialNumList を作成する
repeat with i from 1 to listLength
	set list1Item to item i of theList1 as string
	set list1Num to i as string
	set end of serialNumList to list1Num & myDelimiter & list1Item
end repeat

-- serialNumList の内容で、項目選択ダイアログを表示
-- 選択された項目を変数へ代入。注: キャンセルボタンクリックはfalseが入る
set selectAcc to (choose from list serialNumList with prompt "知りたい項目を選択" with title theTitle OK button name "OK" cancel button name "キャンセル")

-- falseの場合、終了
if selectAcc is false then
	return selectAcc
end if

-- from から to になるまで、繰り返す（リスト1の長さ分）
-- 選択された項目によって、リスト2の内容でダイアログを表示させる
(*
リスト2の2次元リスト内の数と同じだけkeyを作成してください
例: item1〜4で、key1〜4を作成
*)
repeat with i from 1 to listLength
	if selectAcc is {item i of serialNumList as string} then
		set keyTitle to item i of theList1 as string
		set key1 to item 1 of item i of theList2 as string
		set key2 to item 2 of item i of theList2 as string
		set key3 to item 3 of item i of theList2 as string
		set key4 to item 4 of item i of theList2 as string
		set keyToral to key1 & return & key2 & return & key3 & return & key4
		display dialog keyTitle default answer keyToral with title theTitle buttons {"OK"} default button "OK"
	end if
end repeat