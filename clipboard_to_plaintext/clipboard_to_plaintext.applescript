-- 
-- created by stymyuko
--

-- ペーストボード（= クリップボード）のデータをプレーンテキストへ変換、再度ペーストボードへコピー
do shell script "pbpaste -Prefer txt | pbcopy"