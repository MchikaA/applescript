-- Created by stymyuko

set junbi to display alert "準備はできていますか？" & return & return & "　①ホスト名ごとに1つずつ改行を入れた" & return & "　　テキストファイルを用意してください。" & return & "　　※LAN接続しているもののみ取得できます。" & return & "　　※一番最後の行に改行を入れ忘れないこと！" & return & return & "　　▼例" & return & "　　ホスト名Ａ（改行）" & return & "　　ホスト名Ｂ（改行）" & return & "　　ホスト名Ｃ（改行）" buttons {"キャンセル", "OK"} default button 2

-- キャンセルボタンクリックで停止
if button returned of result is "キャンセル" then
	error number -128
end if

set theString to choose file with prompt "ホスト名を入れたテキストファイルを選択してください" -->外部ファイルを変数theStringに代入する。
set P_path to (quoted form of POSIX path of contents of theString) as Unicode text
P_path


set ip_add to do shell script "cat " & P_path & " | while read i; do smbutil lookup $i; done"

do shell script "echo " & return & "/********実行結果" & return & ip_add & return & "********/" & " >> " & P_path

-- 終了時アラート追加
set owari to display alert "完了しました！" buttons {"OK"}