-- 
-- created by stymyuko
--

-- �^�C�g��
set theTitle to "Chrome �̃E�B���h�E�T�C�Y��ύX"

-- ���X�g
set theList to {"��600px�~�c600px", "��1300px�~�c1000px", "�T�C�Y����͂���"}

-- ���X�g���獀�ڂ�I�����ϐ��֑���B��: �L�����Z���{�^���N���b�N��false������
set selectSize to (choose from list theList with prompt "�E�B���h�E�T�C�Y��I��" with title theTitle OK button name "OK" cancel button name "�L�����Z��")

-- false�̏ꍇ�A�I��
if selectSize is false then
	return
end if

-- ���ڂ��I�����ꂽ�ꍇ�B{}���K�v
if selectSize is {"��600px�~�c600px"} then
	set aNum to 0
	set bNum to 0
	set cNum to 600
	set dNum to 600
	
else if selectSize is {"��1300px�~�c1000px"} then
	set aNum to 0
	set bNum to 0
	set cNum to 1300
	set dNum to 1000
	
else if selectSize is {"�T�C�Y����͂���"} then
	set widthVal to display dialog "�E�B���h�E�T�C�Y�i��/px�j���u���p�����v�œ��͂��Ă��������B" default answer "��: 600�@��1920�ȉ�" with title theTitle buttons {"�L�����Z��", "OK"} default button 2
	set widthVal to text returned of the result
	set heightVal to display dialog "�E�B���h�E�T�C�Y�i�c/px�j���u���p�����v�œ��͂��Ă��������B" default answer "��: 600�@��1080�ȉ�" with title theTitle buttons {"�L�����Z��", "OK"} default button 2
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