-- Created by stymyuko

-- クリップボードのデータが文字列かどうかを判別
set judgeStr to clipboard info for string

-- クリップボードのデータが空ではない場合、変数へ入れる
-- クリップボードのデータが空の場合、アラートを出して終了
if judgeStr ≠ {} then
	set strClipboard to the clipboard
else if judgeStr = {} then
	display alert "クリップボードに文字列が入っていないようです"
	return
end if

set {buttonVal, textVal} to {button returned, text returned} of (display dialog "このクリップボードの情報をどうしますか？" default answer strClipboard buttons {"削除", "この内容で編集", "なにもしない"})

if buttonVal is "この内容で編集" then
	set the clipboard to textVal
else if buttonVal is "削除" then
	set the clipboard to ""
end if