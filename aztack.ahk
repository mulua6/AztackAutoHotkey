;Auto-Genreated at 2014-03-20 17:58:28 +0800
#Include paths.ahk
#Include functions.ahk
#Include autorun.ahk
#Include lib\Explorer.ahk

;-----
;Menus
;-----
menus := {}
;QuickMenu
menus["QuickMenu"] := ["f:\dl","e:\ebook","-----","D:\Program Files\bcompare\BCompare.exe","C:\Program Files (x86)\Youdao\YoudaoNote\RunYNote.exe","C:\Program Files (x86)\Just Great Software\RegexBuddy3\RegexBuddy.exe","C:\Program Files (x86)\PicPick\picpick.exe","D:\prog\sqliteadmin\sqliteadmin.exe","C:\Program Files\China Mobile\Fetion\Fetion.exe","C:\Program Files (x86)\FileZilla FTP Client\filezilla.exe","D:\Program Files\Firefox26\App\Firefox\firefox.exe","C:\Program Files\The KMPlayer\KMPlayer.exe"]
	Menu, QuickMenu, Add, download, TheMenuHandler
	Menu, QuickMenu, Icon,download, Shell32.dll, 4
	Menu, QuickMenu, Add, ebook, TheMenuHandler
	Menu, QuickMenu, Icon,ebook, Shell32.dll, 4
	Menu, QuickMenu, Add,,,
	Menu, QuickMenu, Add, BCompare, TheMenuHandler
	Menu, QuickMenu, Icon,BCompare, D:\Program Files\bcompare\BCompare.exe
	Menu, QuickMenu, Add, �е��Ʊʼ� (&B), TheMenuHandler
	Menu, QuickMenu, Icon,�е��Ʊʼ� (&B), C:\Program Files (x86)\Youdao\YoudaoNote\RunYNote.exe
	Menu, QuickMenu, Add, RegexBuddy, TheMenuHandler
	Menu, QuickMenu, Icon,RegexBuddy, C:\Program Files (x86)\Just Great Software\RegexBuddy3\RegexBuddy.exe
	Menu, QuickMenu, Add, PicPick, TheMenuHandler
	Menu, QuickMenu, Icon,PicPick, C:\Program Files (x86)\PicPick\picpick.exe
	Menu, QuickMenu, Add, SQLiteAdmin, TheMenuHandler
	Menu, QuickMenu, Icon,SQLiteAdmin, D:\prog\sqliteadmin\sqliteadmin.exe
	Menu, QuickMenu, Add, ����, TheMenuHandler
	Menu, QuickMenu, Icon,����, C:\Program Files\China Mobile\Fetion\Fetion.exe
	Menu, QuickMenu, Add, Filezilla, TheMenuHandler
	Menu, QuickMenu, Icon,Filezilla, C:\Program Files (x86)\FileZilla FTP Client\filezilla.exe
	Menu, QuickMenu, Add, Firefox, TheMenuHandler
	Menu, QuickMenu, Icon,Firefox, D:\Program Files\Firefox26\App\Firefox\firefox.exe
	Menu, QuickMenu, Add, KMPlayer, TheMenuHandler
	Menu, QuickMenu, Icon,KMPlayer, C:\Program Files\The KMPlayer\KMPlayer.exe
;Test
menus["Test"] := ["http://wwh.lianmeng.360.cn/index","http://wwh.lianmeng.360.cn:8000","http://lianmeng.360.cn/index","http://lianmeng.360.cn:8000","E:\doc\closesource\qh\signuphao360_fillform.au3"]
	Menu, Test, Add, ����������web-front, TheMenuHandler
	Menu, Test, Icon,����������web-front, Shell32.dll, 14
	Menu, Test, Add, ����������web-admin, TheMenuHandler
	Menu, Test, Icon,����������web-admin, Shell32.dll, 14
	Menu, Test, Add, ���ԣ�����web-front, TheMenuHandler
	Menu, Test, Icon,���ԣ�����web-front, Shell32.dll, 14
	Menu, Test, Add, ���ԣ�����web-admin, TheMenuHandler
	Menu, Test, Icon,���ԣ�����web-admin, Shell32.dll, 14
	Menu, Test, Add, ��дֱ��ע�����, TheMenuHandler
	Menu, Test, Icon,��дֱ��ע�����, lib\au3.ico

;-----------
; timers
;-----------

SetTimer sublime_timer_ahk, On

;-----------
; other ahks
;-----------

#Include appdir.ahk
#Include system.ahk
#Include _console.ahk
#Include _chrome.ahk
#Include _everything.ahk
#Include _explorer.ahk
#Include _xshell.ahk


;hotkeys for menus
!d:: Menu,QuickMenu,Show
!Numpad0:: Menu,Test,Show

;---------------------
;The Only Menu Handler
;---------------------

TheMenuHandler:
	items := menus[A_ThisMenu]
	p := items[A_ThisMenuItemPos]
	if(p<> "")
		Run, %p%
	if(InStr(p,"http:") = 1) {
		WinWait,ahk_class Chrome_WidgetWin_1
		WinActive("ahk_class Chrome_WidgetWin_1")
		Send, ^l{End}
	}
return

;---------------
; Timer handlers
;---------------
sublime_timer_ahk:
IfWinExist, Sublime Text ahk_class #32770
	WinClose

IfWinExist, This is an unregistered copy ahk_class #32770
	WinClose
return