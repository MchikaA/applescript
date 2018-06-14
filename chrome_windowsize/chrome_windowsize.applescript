-- Created by stymyuko

-- タイトル
set titleOrigin to "Chrome のウィンドウサイズを変更"

-- リスト
set theList to {"横600px×縦600px", "横1300px×縦1000px", "サイズを入力する"}

-- リストから項目を選択し変数へ入れる
-- 注意: キャンセルボタンはfalseが入る
set selectSize to (choose from list theList with prompt "ウィンドウサイズを選択" with title titleOrigin OK button name "OK" cancel button name "キャンセル")

-- falseの場合、終了
if selectSize is false then
	return selectSize
end if

-- 項目がチョイスされた場合。{}が必要
if selectSize is {"横600px×縦600px"} then
	set aNum to 0
	set bNum to 0
	set cNum to 600
	set dNum to 600
	
else if selectSize is {"横1300px×縦1000px"} then
	set aNum to 0
	set bNum to 0
	set cNum to 1300
	set dNum to 1000
	
else if selectSize is {"サイズを入力する"} then
	set widthVal to display dialog "ウィンドウサイズ（横/px）を「半角数字」で入力してください。" with title titleOrigin default answer "例: 600　※1920以下" buttons {"キャンセル", "OK"} default button 2
	set widthVal to text returned of the result
	set heightVal to display dialog "ウィンドウサイズ（縦/px）を「半角数字」で入力してください。" with title titleOrigin default answer "例: 600　※1080以下" buttons {"キャンセル", "OK"} default button 2
	set heightVal to text returned of the result
	
	set aNum to 0
	set bNum to 0
	set cNum to widthVal
	set dNum to heightVal
end if

-- Google Chrome
tell application "Google Chrome"
	activate
	delay 1
	set bounds of window 1 to {aNum, bNum, cNum, dNum}
end tell