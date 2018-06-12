-- Created by stymyuko

tell application "Google Chrome"
	
	(*
	open location のURLを変更してください
	URLを http://id:password@www.foo.com/ などとすると、
	BASIC認証のかかっているサイトに直接アクセスできます
	*)
	open location "https://www.google.co.jp/"
end tell