-- 
-- created by stymyuko
--

-- 準備ができているかアラートで確認
display alert "準備はできていますか？" & return & return & "確認:" & return & "ホスト名ごとに1つずつ改行を入れた" & return & "テキストファイルを用意してください。" & return & "※LAN接続しているもののみ取得できます。" & return & "※一番最後の行に改行を入れ忘れないこと！" & return & return & "例:" & return & "ホスト名Ａ（改行）" & return & "ホスト名Ｂ（改行）" & return & "ホスト名Ｃ（改行）" buttons {"キャンセル", "OK"} default button 2

-- キャンセルボタンクリックで停止
if button returned of result is "キャンセル" then
	error number -128
end if

-- 外部ファイルをHFSパスへ
set hfsPath to choose file with prompt "ホスト名を入れたテキストファイルを選択してください"

-- HFSパスからPOSIXパスへ
set posixPath to (quoted form of POSIX path of contents of hfsPath) as Unicode text

-- smbutil lookup コマンド
set ipAddr to do shell script "cat " & posixPath & " | while read i; do smbutil lookup $i; done"

-- 結果が空ではない場合、ファイルへ追記。空の場合、アラートを出して終了
if ipAddr ≠ "" then
	do shell script "echo " & return & "/********実行結果" & return & ipAddr & return & "********/" & " >> " & posixPath
else if ipAddr = "" then
	display alert "取得できなかったようです！" buttons {"OK"}
	return
end if

-- 終了アラート
display alert "完了しました！" & return & "テキストファイルを確認してください" buttons {"OK"}