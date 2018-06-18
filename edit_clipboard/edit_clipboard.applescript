-- 
-- created by stymyuko
--

-- タイトル
set theTitle to "クリップボードのデータを編集"

-- クリップボードのデータが文字列かどうかを判別
set judgeStr to clipboard info for string

-- クリップボードのデータが空ではない場合、変数へ代入。空の場合、アラートを出して終了
if judgeStr ≠ {} then
	set strClipboard to the clipboard
else if judgeStr = {} then
	display alert "クリップボードに文字列が入っていないようです！" buttons {"OK"}
	return
end if

set {buttonVal, textVal} to {button returned, text returned} of (display dialog "このクリップボードの情報をどうしますか？" default answer strClipboard with title theTitle buttons {"削除", "この内容で上書き", "なにもしない"})

if buttonVal is "この内容で編集" then
	set the clipboard to textVal
else if buttonVal is "削除" then
	set the clipboard to ""
end if