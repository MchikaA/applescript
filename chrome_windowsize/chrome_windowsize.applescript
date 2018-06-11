-- Created by stymyuko

set windowsize to item 1 of (choose from list {"横600px×縦600px", "横1300px×縦1000px", "サイズを入力する"} with prompt "ウィンドウサイズを選択。" with title "Chromeのウィンドウサイズを変更" OK button name "OK" cancel button name "キャンセル")

if windowsize is "横600px×縦600px" then
	set A to 0
	set B to 0
	set C to 600
	set D to 600
else if windowsize is "横1300px×縦1000px" then
	set A to 0
	set B to 0
	set C to 1300
	set D to 1000
else if windowsize is "サイズを入力する" then
	set yoko to display dialog "ウィンドウサイズ（横/px）を「半角数字」で入力してください。" with title "Chromeのウィンドウサイズを変更" default answer "例：600　※1920以下" buttons {"キャンセル", "OK"} default button 2
	set yoko to text returned of the result
	set tate to display dialog "ウィンドウサイズ（縦/px）を「半角数字」で入力してください。" with title "Chromeのウィンドウサイズを変更" default answer "例：600　※1080以下" buttons {"キャンセル", "OK"} default button 2
	set tate to text returned of the result
	
	set A to 0
	set B to 0
	set C to yoko
	set D to tate
end if

tell application "Google Chrome"
	activate
	delay 1
	set bounds of window 1 to {A, B, C, D}
end tell