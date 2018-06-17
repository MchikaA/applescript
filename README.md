<img src="img/applescript.png" alt="applescript_icon" title="applescript_icon" width="100" >

# AppleScript

過去に作成した作業効率化（自動処理）のAppleScriptを公開します。

* **テキスト形式（.applescript）** と **スクリプト形式（.scpt）** のセットにしています [（セットで公開する理由を参照）](#target1)。
* 動作チェックはスクリプト形式（.scpt）で行なっています。
* コードが少ないものだけここで管理します。
* コードが多いものは別途リポジトリ単位で管理します。
<br><br>

---
### Script List

* [account_management](account_management/) -- ダイアログでアカウントを管理
* [chrome_windowsize](chrome_windowsize/) -- Chrome のウィンドウサイズを変更
* [clipboard_to_plaintext](clipboard_to_plaintext/) -- クリップボードのデータをプレーンテキストへ変換
* [edit_clipboard](edit_clipboard/) -- クリップボードのデータを編集
* [open_chrome_with_url](open_chrome_with_url/) -- ホスト名をIPアドレスへ変換（LAN接続のみ）
* [hostname_to_ip_address](hostname_to_ip_address/) -- Chrome でURLを開く
<br><br>

---
<a name ="target1"></a>
### セットで公開する理由

1. スクリプトエディタ.app（2.9）を使用しているが、コードに日本語が混ざると「UTF-8のテキスト形式」へ保存できない。
2. 「UTF-8のテキスト形式」じゃないとdiffができないので、GitHubへpushする前にコンバートしないといけない。
3. コンバートしたものは動作チェックしたくない。もし動作しない場合のためにスクリプト形式を添付する。

**【メモ】スクリプトエディタ.appの問題点**

- スクリプトエディタで新規作成しテキスト形式へ保存すると...
    - 日本語が混ざらない場合、**ASCII** ？ になる。
    - 日本語が混ざる場合、**Shift-JIS** になる。
    - Shift-JISで保存できない日本語が混ざる場合、**UTF-16** になる。
    - ちなみに、一度 **Shift-JIS** や **UTF-16** で作成したファイル中の日本語を取り除いて、上書き保存しても文字コードは変わらない。