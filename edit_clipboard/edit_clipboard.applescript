-- Created by stymyuko

-- �N���b�v�{�[�h�̃f�[�^�������񂩂ǂ����𔻕�
set judgeStr to clipboard info for string

-- �N���b�v�{�[�h�̃f�[�^����ł͂Ȃ��ꍇ�A�ϐ��֓����
-- �N���b�v�{�[�h�̃f�[�^����̏ꍇ�A�A���[�g���o���ďI��
if judgeStr �� {} then
	set strClipboard to the clipboard
else if judgeStr = {} then
	set exitButton to display alert "�N���b�v�{�[�h�ɕ����񂪓����Ă��Ȃ��悤�ł�" buttons {"�I��"}
	return
end if

set {buttonVal, textVal} to {button returned, text returned} of (display dialog "���̃N���b�v�{�[�h�̏����ǂ����܂����H" default answer strClipboard buttons {"�폜", "���̓��e�ŕҏW", "�Ȃɂ����Ȃ�"})

if buttonVal is "���̓��e�ŕҏW" then
	set the clipboard to textVal
else if buttonVal is "�폜" then
	set the clipboard to ""
end if