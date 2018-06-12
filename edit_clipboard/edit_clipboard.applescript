-- Created by stymyuko

set {buttonvalue, textvalue} to {button returned, text returned} of (display dialog "このクリップボードの情報をどうしますか？" default answer (the clipboard as string) buttons {"削除", "この内容で編集", "なにもしない"})

if buttonvalue is "この内容で編集" then
	set the clipboard to textvalue
else if buttonvalue is "削除" then
	set the clipboard to ""
end if