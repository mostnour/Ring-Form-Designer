
/* Ring Form Desinger 
: design by Eng. Mostafa Abuelnour Gaber
Menu Bar
*/

Class clsMenuBar
	Func pMenuToolBar
		menu1 = new qmenubar(win1) {
			sub1 = addmenu("File")
			sub2 = addmenu("Edit")
			sub3 = addmenu("View")
			sub4 = addmenu("Help")
                        sub1 {
                                oAction = new qAction(win1) {
                                        setShortcut(new QKeySequence("Ctrl+n"))
                                        setbtnimage(self,"image/new.png")
                                        settext("New")
                                        setclickevent("pNew()")
                                }
                                addaction(oAction)
                                oAction = new qAction(win1) {
                                        setShortcut(new QKeySequence("Ctrl+o"))
                                        setbtnimage(self,"image/open.png")
                                        settext("Open")
                                        setclickevent("pOpen()")
                                }
                                addaction(oAction)
                                addseparator()
                                oAction = new qAction(win1) {
                                        setShortcut(new QKeySequence("Ctrl+s"))
                                        setbtnimage(self,"image/save.png")
                                        settext("Save")
                                        setclickevent("pSave()")
                                }
                                addaction(oAction)
                                addseparator()
                                oAction = new qAction(win1) {
                                        setShortcut(new QKeySequence("Ctrl+e"))
                                        setbtnimage(self,"image/saveas.png")
                                        settext("Save As")
                                        setclickevent("pSaveAs()")
                                }
                                addaction(oAction)
                                addseparator()
                                oAction = new qAction(win1) {
                                        setShortcut(new QKeySequence("Ctrl+p"))
                                        setbtnimage(self,"image/print.png")
                                        settext("Print to PDF")
                                        setclickevent("pPrint()")
                                }
                                addaction(oAction)
                                addseparator()
                                oAction = new qAction(win1) {
                                        setShortcut(new QKeySequence("Ctrl+d"))
                                        setbtnimage(self,"image/debug.png")
                                        settext("Debug (Run then wait!)")
                                        setclickevent("pDebug()")
                                }
                                addaction(oAction)
                                addseparator()
                                oAction = new qAction(win1) {
                                        setShortcut(new QKeySequence("Ctrl+r"))
                                        setbtnimage(self,"image/run.png")
                                        settext("Run")
                                        setclickevent("pRun()")
                                }
                                addaction(oAction)
                                addseparator()
                                oAction = new qAction(win1) {
                                        setShortcut(new QKeySequence("Ctrl+F5"))
                                        setbtnimage(self,"image/run.png")
                                        settext("Run GUI Application (No Console)")
                                        setclickevent("pRunNoConsole()")
                                }
                                addaction(oAction)
                                addseparator()
                                oAction = new qaction(win1) {
                                        setShortcut(new QKeySequence("Ctrl+q"))
                                        setbtnimage(self,"image/close.png")
                                        settext("Exit")
                                        setstatustip("Exit")
                                        setclickevent("pQuit()")
                                }
                                addaction(oAction)
                        }
                        sub2 {
                                oAction = new qAction(win1) {
                                        setShortcut(new QKeySequence("Ctrl+x"))
                                        setbtnimage(self,"image/cut.png")
                                        settext("Cut")
                                        setclickevent("pCut()")
                                }
                                addaction(oAction)
                                oAction = new qAction(win1) {
                                        setShortcut(new QKeySequence("Ctrl+c"))
                                        setbtnimage(self,"image/copy.png")
                                        settext("Copy")
                                        setclickevent("pCopy()")
                                }
                                addaction(oAction)
                                oAction = new qAction(win1) {
                                        setShortcut(new QKeySequence("Ctrl+v"))
                                        setbtnimage(self,"image/paste.png")
                                        settext("Paste")
                                        setclickevent("pPaste()")
                                }
                                addaction(oAction)
                                addseparator()
                                oAction = new qAction(win1) {
                                        setShortcut(new QKeySequence("Ctrl+i"))
                                        setbtnimage(self,"image/font.png")
                                        settext("Font")
                                        setclickevent("pFont()")
                                }
                                addseparator()
                                addaction(oAction)
                                oAction = new qAction(win1) {
                                        setShortcut(new QKeySequence("Ctrl+t"))
                                        setbtnimage(self,"image/colors.jpg")
                                        settext("Text Color")
                                        setclickevent("pColor()")
                                }
                                addaction(oAction)
                                oAction = new qAction(win1) {
                                        setShortcut(new QKeySequence("Ctrl+b"))
                                        setbtnimage(self,"image/colors.jpg")
                                        settext("Back Color")
                                        setclickevent("pColor2()")
                                }
                                addaction(oAction)
                                addseparator()
                                oAction = new qAction(win1) {
                                        setShortcut(new QKeySequence("Ctrl+g"))
                                        settext("Go to line")
                                        setclickevent("pGoto()")
                                }
                                addaction(oAction)
                                oAction = new qAction(win1) {
                                        setShortcut(new QKeySequence("Ctrl+f"))
                                        setbtnimage(self,"image/search.png")
                                        settext("Find and Replace")
                                        setclickevent("pFind()")
                                }
                                addaction(oAction)
                        }
                        sub3 {
                                oAction = new qAction(win1) {
                                        setShortcut(new QKeySequence("Ctrl+p"))
                                        setbtnimage(self,"image/project.png")
                                        settext("Project Files")
                                        setclickevent("pProject()")
                                }
                                addaction(oAction)
                                oAction = new qAction(win1) {
                                        setShortcut(new QKeySequence("Ctrl+u"))
                                        setbtnimage(self,"image/source.png")
                                        setclickevent("pSourceCode()")
                                        settext("Source Code")
                                }
                                addaction(oAction)
                                oAction = new qAction(win1) {
                                        setShortcut(new QKeySequence("Ctrl+w"))
                                        setbtnimage(self,"image/richtext.png")
                                        setclickevent("pWebBrowser()")
                                        settext("Web Browser")
                                }
                                addaction(oAction)

		#	Ring Form Designer
                                oAction = new qAction(win1) {
                                        setShortcut(new QKeySequence("Ctrl+F4"))
                                        setbtnimage(self,"image/DsnToolBar.png")
                                        setclickevent("pDesignToolBar()")
                                        settext("Design ToolBar")
                                }
                                addaction(oAction)
		#	Ring Form Designer
                        }
                        sub4 {
                                sub5 = addmenu("Development Tools")
                                sub5 {

                                        oAction = new qAction(win1) {
                                                settext("Programming Language")
                                                setclickevent("pLang()")
                                        }
                                        addaction(oAction)
                                        oAction = new qAction(win1) {
                                                settext("GUI Library")
                                                setclickevent("pGUI()")
                                        }
                                        addaction(oAction)
                                }
                                addseparator()
                                        oAction = new qAction(win1) {
                                                settext("About")
                                                setclickevent("pAbout()")
                                        }
                                        addaction(oAction)
                        }
                }

		win1.setmenubar(menu1)

	func pNew
		new qfiledialog(win1) {
			cName = getsavefilename(win1,"New file","","source files(*.ring)")
			if cName != NULL
				write(cName,"")
				cActiveFileName = cName
				textedit1.settext(read(cActiveFileName))
			ok
		}

	func pOpen
		new qfiledialog(win1) {
                cName = getopenfilename(win1,"open file","c:\","source files(*.ring)")
                if cName != NULL
                        cActiveFileName = cName
                        textedit1.settext(read(cActiveFileName))
                ok
        }

func pSave
        if cActiveFileName = NULL return pSaveAs() ok
        writefile(cActiveFileName,textedit1.toplaintext())
        status1.showmessage("File : " + cActiveFileName + " saved!",0)
        lAskToSave = false

func pSaveAs
        new qfiledialog(win1) {
                cName = getsavefilename(win1,"Save As","","source files(*.ring)")
                if cName != NULL
                        cActiveFileName = cName
                        writefile(cActiveFileName,textedit1.toplaintext())
                        status1.showmessage("File : " + cActiveFileName + " saved!",0)
                        pSetActiveFileName()
                        lAskToSave = false
                ok
        }

func pPrint
        status1.showmessage("Printing to File : RingDoc.pdf",0)
        printer1 = new qPrinter(0) {
                setoutputformat(1)      # 1 = pdf
                setoutputfilename("RingDoc.pdf")
                textedit1.print(printer1)
        }
        status1.showmessage("Done!",0)
        system("RingDoc.pdf")

func pDebug
        if cActiveFileName = Null return pNofileopened() ok
        cCode = "start run " + cActiveFileName + nl
        system(cCode)

func pRun
        if cActiveFileName = Null return pNofileopened() ok
        cCode = "start ring " + cActiveFileName + nl
        system(cCode)

func pRunNoConsole
        if cActiveFileName = Null return pNofileopened() ok
        cCode = "start /b ring " + cActiveFileName + nl
        system(cCode)

Func pQuit
        if pSaveSettings()
                myapp.quit()
        ok

func pCut
        textedit1.cut()
        status1.showmessage("Cut!",0)

func pCopy
        textedit1.copy()
        status1.showmessage("Copy!",0)

func pPaste
        textedit1.paste()
        status1.showmessage("Paste!",0)

func pFont
        oFontDialog = new qfontdialog(win1) {
                aFont = getfont()
        }
        textedit1.selectall()
        cFont = aFont[1]
        pSetFont()

Func pColor
        new qcolordialog() { aTextColor = GetColor() }
        pSetColors()

Func pColor2
        new qcolordialog() { aBackColor = GetColor() }
        pSetColors()

func pGoto
        oInput = New QInputDialog(win1)
        {
                setwindowtitle("Enter the line number?")
                setgeometry(100,100,400,50)
                setlabeltext("Line")
                settextvalue("1")
                exec()
                nLine = 0 + oInput.textvalue()
                oBlock = textedit1.document().findBlockByLineNumber(nLine-1)
                oCursor = textedit1.textcursor()
                oCursor.setposition(oBlock.position(),0)
                textedit1.settextcursor(oCursor)
        }


func pFind
        if isobject(oSearch)
                oSearch.activatewindow()
                return
        ok
        oSearch = new qWidget()
        {
                new qLabel(oSearch)
                {
                        setText("Find What : ")
                        setgeometry(10,10,50,30)
                }
                oSearchValue = new qlineedit(oSearch)
                {
                        setgeometry(80,10,460,30)
                        setReturnPressedEvent("pFindValue()")
                }
                new qLabel(oSearch)
                {
                        setText("Replace with ")
                        setgeometry(10,45,80,30)
                }
                oReplaceValue = new qlineedit(oSearch)
                {
                        setgeometry(80,45,460,30)
                }
                oSearchCase = new qCheckbox(oSearch)
                {
                        setText("Case Sensitive")
                        setgeometry(80,85,100,30)
                }
                new qPushButton(oSearch)
                {
                        setText("Find/Find Next")
                        setgeometry(80,120,100,30)
                        setclickevent("pFindValue()")
                }
                new qPushButton(oSearch)
                {
                        setText("Replace")
                        setgeometry(200,120,100,30)
                        setclickevent("pReplace()")
                }
                new qPushButton(oSearch)
                {
                        setText("Replace All")
                        setgeometry(320,120,100,30)
                        setclickevent("pReplaceAll()")
                }
                new qPushButton(oSearch)
                {
                        setText("Close")
                        setgeometry(440,120,100,30)
                        setclickevent("pSearchClose()")
                }

                setwinicon(oSearch,"image/notepad.png")
                setWindowTitle("Find/Replace")
                setStyleSheet("background-color:white;")
                setFixedsize(550,160)
                setwindowflags( Qt_CustomizeWindowHint |
                                Qt_WindowTitleHint | Qt_WindowStaysOnTopHint)

                oSearchFilter = new qallevents(oSearch)
                oSearchFilter.setKeyPressEvent("pSearchKeyPress()")
                installeventfilter(oSearchFilter)

                show()
        }

func pProject
        win1.oTreeDock.Show()

func pSourceCode
        win1.oTextEditDock.Show()

func pWebBrowser
        win1.oWebBrowserDock.Show()

func pDesignToolBar
        //win1.oDesToolBarDock.Show()
	win1.desToolBar1.Show()

Func pLang
        MsgBox("Programming Language",
                "This application developed using the Ring programming language")

Func pGUI
        MsgBox("GUI Library",
                "This application uses the Qt GUI Library through RingQt")

Func pAbout
        MsgBox("About",
                "2016, Mahmoud Fayed <msfclipper@yahoo.com>")
