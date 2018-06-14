-- 
-- created by stymyuko
--

-- アラートで準備ができているか確認
display alert "準備はできていますか？" & return & return & "確認:" & return & "ホスト名ごとに1つずつ改行を入れた" & return & "テキストファイルを用意してください。" & return & "※LAN接続しているもののみ取得できます。" & return & "※一番最後の行に改行を入れ忘れないこと！" & return & return & "例:" & return & "ホスト名Ａ（改行）" & return & "ホスト名Ｂ（改行）" & return & "ホスト名Ｃ（改行）" buttons {"キャンセル", "OK"} default button 2

-- キャンセルボタンクリックで停止
if button returned of result is "キャンセル" then
	error number -128
end if

-- 外部ファイルを変数theStrに代入する。
set theStr to choose file with prompt "ホスト名を入れたテキストファイルを選択してください"

-- POSIX path の作成
set posixPath to (quoted form of POSIX path of contents of theStr) as Unicode text
posixPath

set ipAddr to do shell script "cat " & posixPath & " | while read i; do smbutil lookup $i; done"

do shell script "echo " & return & "/********実行結果" & return & ipAddr & return & "********/" & " >> " & posixPath

-- 終了アラート
display alert "完了しました！" & return & "テキストファイルを確認してください" buttons {"OK"}