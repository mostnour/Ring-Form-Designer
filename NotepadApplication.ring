// In the next example we will see simple Notepad developed using the RingQt

/* Ring Form Desinger 
: design by Eng. Mostafa Abuelnour Gaber
*/

Load "guilib.ring"

cActiveFileName = ""
aTextColor = [0,0,0]
aBackColor = [255,255,255]
cFont = "MS Shell Dlg 2,14,-1,5,50,0,0,0,0,0"
cWebsite = "http://www.google.com"

oSearch = NULL
oSearchValue = NULL
oSearchCase = NULL
oSearchFilter = NULL
oReplaceValue = NULL

lAskToSave = false
cFormNo = 0

MyApp = New qApp {
        win1 = new qMainWindow() {

                setwindowtitle("Ring Notepad")
                setGeometry(100,100,400,400)
                aBtns = [
                                new qpushbutton(win1) {
                                        setbtnimage(self,"image/new.png")
                                        setclickevent("pNew()")
                                        settooltip("New File")
                                } ,
                                new qpushbutton(win1) {
                                        setbtnimage(self,"image/open.png")
                                        setclickevent("pOpen()")
                                        settooltip("Open File")
                                } ,
                                new qpushbutton(win1) {
                                        setbtnimage(self,"image/save.png")
                                        setclickevent("pSave()")
                                        settooltip("Save")
                                 } ,
                                new qpushbutton(win1) {
                                        setbtnimage(self,"image/saveas.png")
                                        setclickevent("pSaveAs()")
                                        settooltip("Save As")
                                 } ,
                                new qpushbutton(win1) {
                                        setbtnimage(self,"image/cut.png")
                                        setclickevent("pCut()")
                                        settooltip("Cut")
                                 } ,
                                new qpushbutton(win1) {
                                        setbtnimage(self,"image/copy.png")
                                        setclickevent("pCopy()")
                                        settooltip("Copy")
                                } ,
                                new qpushbutton(win1) {
                                        setbtnimage(self,"image/paste.png")
                                        setclickevent("pPaste()")
                                        settooltip("Paste")
                                } ,
                                new qpushbutton(win1) {
                                        setbtnimage(self,"image/font.png")
                                        setclickevent("pFont()")
                                        settooltip("Font")
                                } ,
                                new qpushbutton(win1) {
                                        setbtnimage(self,"image/colors.jpg")
                                        setclickevent("pColor()")
                                        settooltip("Text Color")
                                } ,
                                new qpushbutton(win1) {
                                        setbtnimage(self,"image/search.png")
                                        setclickevent("pFind()")
                                        settooltip("Find and Replace")
                                } ,
                                new qpushbutton(win1) {
                                        setbtnimage(self,"image/print.png")
                                        setclickevent("pPrint()")
                                        settooltip("Print")
                                } ,
                                new qpushbutton(win1) {
                                        setbtnimage(self,"image/debug.png")
                                        setclickevent("pDebug()")
                                        settooltip("Debug (Run then wait!)")
                                } ,
                                new qpushbutton(win1) {
                                        setbtnimage(self,"image/run.png")
                                        setclickevent("pRun()")
                                        settooltip("Run the program")
                                } ,
                                new qpushbutton(win1) {
                                        setbtnimage(self,"image/close.png")
                                        setclickevent("pQuit()")
                                        settooltip("Quit")
                                }
                        ]

                tool1 = addtoolbar("files")  {
                        for x in aBtns addwidget(x) addseparator() next
                }

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

		/*	Ring Form Designer	*/
                                oAction = new qAction(win1) {
                                        setShortcut(new QKeySequence("Ctrl+F4"))
                                        setbtnimage(self,"image/DsnToolBar.png")
                                        setclickevent("pDesignToolBar()")
                                        settext("Design ToolBar")
                                }
                                addaction(oAction)
		# Add new form

                                oAction = new qAction(win1) {
                                        setShortcut(new QKeySequence("Ctrl+F5"))
                                        setbtnimage(self,"image/application-form-add.png")
                                        setclickevent("pAddForm()")
                                        settext("Add New Form")
                                }
                                addaction(oAction)

		/*	Ring Form Designer	*/
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

                setmenubar(menu1)

                status1 = new qstatusbar(win1) {
                        showmessage("Ready!",0)
                }

                setstatusbar(status1)

                tree1 = new qtreeview(win1) {
                        setclickedevent("pChangeFile()")
                        setGeometry(00,00,200,400)
                        oDir = new QDir()
                        ofile = new QFileSystemModel() {
                                setrootpath(oDir.currentpath())
                                myfiles = new qstringlist()
                                myfiles.append("*.ring")
                                myfiles.append("*.rh")
                                setnamefilters(myfiles)
                                setNameFilterDisables(false)
                        }
                        setmodel(ofile)
                        myindex = ofile.index(oDir.currentpath(),0)
                        for x = 1 to ofile.columncount()
                                hidecolumn(x)
                        next
                        setcurrentindex(myindex)
                        setexpanded(myindex,true)
                        header().hide()
                }

                oDock1 = new qdockwidget(win1,0) {
                        setGeometry(00,00,200,200)
                        setwindowtitle("Project Files")
                        setwidget(tree1)
                }
                textedit1 = new qtextedit(win1) {
                        setCursorPositionChangedevent("pCursorPositionChanged()")
                        setLineWrapMode(QTextEdit_NoWrap)
                        setAcceptRichText(false)
                        setTextChangedEvent("lAskToSave = true")
                }


                oDock2 = new qdockwidget(win1,0) {
                        setwidget(textedit1)
                        setwindowtitle("Source Code")
                }

                oWebBrowser = new qWidget() {
                        setWindowFlags(Qt_SubWindow)
                        oWBLabel = new qLabel(win1) {
                                setText("Website: ")
                        }
                        oWBText = new qLineEdit(win1) {
                                setText(cWebSite)
                                setReturnPressedEvent("pWebGo()")
                        }
                        oWBGo = new qPushButton(win1) {
                                setText("Go")
                                setClickEvent("pWebGo()")
                        }
                        oWBBack = new qPushButton(win1) {
                                setText("Back")
                                setClickEvent("pWebBack()")
                        }
                        oWBLayout1 = new qHBoxLayout(win1) {
                                addWidget(oWBLabel)
                                addWidget(oWBText)
                                addWidget(oWBGo)
                                addWidget(oWBBack)
                        }
                        oWebView = new qWebView(win1) {
                                loadpage(new qurl(cWebSite))
                        }
                        oWBlayout2 = new qVBoxLayout(win1) {
                                addLayout(oWBLayout1)
                                addWidget(oWebView)
                        }
                        setLayout(oWBLayout2)
                }

                oDock3 = new qdockwidget(win1,0) {
                        setwidget(oWebBrowser)
                        setwindowtitle("Web Browser")
                        setFeatures(QDockWidget_DocWidgetClosable)
                }

	/*	Ring Form Designer	*/

	vBtns = [
		new qpushbutton(win1) {
			setbtnimage(self,"image/checkbox.png")
                                        setclickevent("pCheckBox()")
                                        settooltip("CheckBox")
		} ,
		new qpushbutton(win1) {
                                        setbtnimage(self,"image/hscrollbar.png")
                                        setclickevent("pHScrollBar()")
                                        settooltip("HScrollBar")
		} ,
		new qpushbutton(win1) {
                                        setbtnimage(self,"image/vscrollbar.png")
                                        setclickevent("pVScrollBar()")
                                        settooltip("VScrollBar")
		} ,
		new qpushbutton(win1) {
                                        setbtnimage(self,"image/imagebutton.png")
                                        setclickevent("pImageButton()")
                                        settooltip("Image Button")
		} ,
		new qpushbutton(win1) {
                                        setbtnimage(self,"image/listbox.png")
                                        setclickevent("pListBox()")
                                        settooltip("ListBox")
		} ,
		new qpushbutton(win1) {
                                        setbtnimage(self,"image/pushbutton.png")
                                        setclickevent("pPushButton()")
                                        settooltip("PushButton")
		} ,
		new qpushbutton(win1) {
                                        setbtnimage(self,"image/radiobutton.png")
                                        setclickevent("pRadioButton()")
                                        settooltip("Radio Button")
		} ,
		new qpushbutton(win1) {
                                        setbtnimage(self,"image/richtext.png")
                                        setclickevent("pRichText()")
                                        settooltip("RichText")
		} ,
		new qpushbutton(win1) {
                                        setbtnimage(self,"image/tabdialog.png")
                                        setclickevent("pTabDialog()")
                                        settooltip("Tab-Dialog")
		} ,
		new qpushbutton(win1) {
                                        setbtnimage(self,"image/glabels.png")
                                        setclickevent("pLabel()")
                                        settooltip("Label")
		} ,
		new qpushbutton(win1) {
                                        setbtnimage(self,"image/text-editor.png")
                                        setclickevent("pTextEditor()")
                                        settooltip("Text Editor")
		} ,
		new qpushbutton(win1) {
                                        setbtnimage(self,"image/imagevis3d.png")
                                        setclickevent("pImage()")
                                        settooltip("Image")
		} 
	]

                dsnToolBar1 = win1.addtoolbar("Design")  {
                        for x in vBtns addwidget(x) addseparator() next
                }
	dsnToolBar1.setorientation(1)

	/*	Ring Form Designer	*/

                adddockwidget(1,oDock1,1)
                adddockwidget(2,oDock2,2)
                adddockwidget(2,oDock3,1)

	/*	Ring Form Designer	*/

                //adddockwidget(1,oDock4,2)

	/*	Ring Form Designer	*/

                setwinicon(self,"image/notepad.png")

                showmaximized()
        }
        RestoreSettings()
        exec()
}

func pWebGo
        cWebsite = oWBText.text()
        oWebView.LoadPage( new qurl( cWebSite ) )

func pWebBack
        oWebView.Back()

func pProject
        oDock1.Show()

func pSourceCode
        oDock2.Show()

func pWebBrowser
        oDock3.Show()

func pDesignToolBar
        oDock4.Show()

func pChangeFile
        myitem = tree1.currentindex()
        if ofile.isdir(myitem)
                return
        ok
        cActiveFileName = ofile.filepath(myitem)
        textedit1.settext(read(cActiveFileName))
        textedit1.setfocus(0)
        pCursorPositionChanged()
        pSetActiveFileName()

func pSetActiveFileName
        oDock2.setWindowTitle("Source Code : " + cActiveFileName)

func pCursorPositionChanged
        status1.showmessage(" Line : "+(textedit1.textcursor().blocknumber()+1)+
                        " Column : " +(textedit1.textcursor().columnnumber()+1) +
                        " Total Lines : " + textedit1.document().linecount() ,0)

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

Func pReplace
        oCursor = textedit1.textCursor()
        if oCursor.HasSelection() = false
                new qMessagebox(oSearch)
                {
                        SetWindowTitle("Replace")
                        SetText("No Selection")
                        show()
                }
                return false
        ok
        cValue = oSearchValue.text()
        cSelected = oCursor.SelectedText()
        if oSearchCase.checkState() = Qt_Unchecked
                cValue = lower(cValue)
                cSelected = lower(cSelected)
        ok
        if cSelected != cValue
                new qMessagebox(oSearch)
                {
                        SetWindowTitle("Replace")
                        SetText("No Match")
                        show()
                }
                return false
        ok
        cValue = oReplaceValue.text()
        nStart = oCursor.SelectionStart()
        nEnd = oCursor.SelectionEnd()
        cStr = textedit1.toPlainText()
        cStr = left(cStr,nStart)+cValue+substr(cStr,nEnd+1)
        textedit1.setText(cStr)
        return pFindValue()

Func pReplaceAll
        cStr = textedit1.toPlainText()
        cOldValue = oSearchValue.text()
        cNewValue = oReplaceValue.text()
        if oSearchCase.checkState() = Qt_Unchecked
                # Not Case Sensitive
                cStr = SubStr(cStr,cOldValue,cNewValue,true)
        else
                # Case Sensitive
                cStr = SubStr(cStr,cOldValue,cNewValue)
        ok
        textedit1.setText(cStr)
        new qMessagebox(oSearch)
        {
                SetWindowTitle("Replace All")
                SetText("Operation Done")
                show()
        }

Func pSearchClose
        oSearch.close()
        oSearch = NULL

func pSearchKeyPress
        if oSearchFilter.getKeyCode() = Qt_Key_Escape
                pSearchClose()
        ok

func pFindValue
        oCursor = textedit1.textcursor()
        nPosStart = oCursor.Position() + 1
        cValue = oSearchValue.text()
        cStr = textedit1.toplaintext()
        cStr = substr(cStr,nPosStart)
        if oSearchCase.checkState() = Qt_Unchecked
                cStr = lower(cStr)  cValue = lower(cValue)
        ok
        nPos = substr(cStr,cValue)
        if nPos > 0
                nPos += nPosStart - 2
                oCursor = textedit1.textcursor()
                oCursor.setposition(nPos,0)
                textedit1.settextcursor(oCursor)
                oCursor = textedit1.textcursor()
                oCursor.setposition(nPos+len(cValue),1)
                textedit1.settextcursor(oCursor)
                return true
        else
                new qMessagebox(oSearch)
                {
                        SetWindowTitle("Search")
                        SetText("Cannot find :" + cValue)
                        show()
                }
                return false
        ok

func pNofileopened
        New qMessageBox(win1) {
                setWindowTitle("Sorry")
                setText("Save the file first!")
                show()
        }

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

Func pSetFont
        myfont = new qfont("",0,0,0)
        myfont.fromstring(cFont)
        textedit1.setcurrentfont(myfont)

Func pColor
        new qcolordialog() { aTextColor = GetColor() }
        pSetColors()

Func pColor2
        new qcolordialog() { aBackColor = GetColor() }
        pSetColors()

Func pSetColors
        textedit1.setstylesheet("color: rgb(" + aTextColor[1] + "," + aTextColor[2] +
                                "," + aTextColor[3] + ");" + "background-color: rgb(" +
                                aBackColor[1] + "," + aBackColor[2] + "," +
                                aBackColor[3] + ")")

func pOpen
        new qfiledialog(win1) {
                cName = getopenfilename(win1,"open file","c:\","source files(*.ring)")
                if cName != NULL
                        cActiveFileName = cName
                        textedit1.settext(read(cActiveFileName))
                ok
        }

func pNew
        new qfiledialog(win1) {
                cName = getsavefilename(win1,"New file","","source files(*.ring)")
                if cName != NULL
                        write(cName,"")
                        cActiveFileName = cName
                        textedit1.settext(read(cActiveFileName))

                ok
        }

Func WriteFile cFileName,cCode
        aCode = str2list(cCode)
        fp = fopen(cFileName,"wb")
        for cLine in aCode
                fwrite(fp,cLine+char(13)+char(10))
        next
        fclose(fp)

Func MsgBox cTitle,cMessage
        new qMessagebox(win1) {
                setwindowtitle(cTitle)
                setText(cMessage)
                show()
        }


Func pLang
        MsgBox("Programming Language",
                "This application developed using the Ring programming language")

Func pGUI
        MsgBox("GUI Library",
                "This application uses the Qt GUI Library through RingQt")

Func pAbout
        MsgBox("About",
                "2016, Mahmoud Fayed <msfclipper@yahoo.com>")

Func pSaveSettings
        cSettings = "aTextColor = ["+aTextColor[1]+","+aTextColor[2]+
                        ","+aTextColor[3]+"]" + nl +
                        "aBackColor = ["+aBackColor[1]+","+aBackColor[2]+
                        ","+aBackColor[3]+"]" + nl +
                        "cFont = '" + cFont + "'" + nl +
                        "cWebSite = '" + cWebsite + "'" + nl
        cSettings = substr(cSettings,nl,char(13)+char(10))
        write("ringnotepad.ini",cSettings)
        if lAsktoSave
                new qmessagebox(win1)
                {
                        setwindowtitle("Save Changes?")
                        settext("Some changes are not saved!")
                        setInformativeText("Do you want to save your changes?")
                        setstandardbuttons(QMessageBox_Yes |
                                           QMessageBox_No | QMessageBox_Cancel)
                        result = exec()
                        win1 {
                        if result = QMessageBox_Yes
                                pSave()
                        but result = QMessageBox_Cancel
                                return false
                        ok
                }
        }
        ok
        return true

Func pSetWebsite
        oWebView { loadpage(new qurl(cWebSite)) }
        oWBText  { setText(cWebSite) }

Func RestoreSettings
        eval(read("ringnotepad.ini"))
        pSetColors()
        pSetFont()
        pSetWebsite()

Func pQuit
        if pSaveSettings()
                myapp.quit()
        ok

Func pCheckBox
	//MsgBox ("Design From", win1.dsnToolBox1.orientation)
	status1.showmessage(win1.dsnToolBox1.layoutdirection,0)

Func pAddForm
	designFrom1 = New DesignFrom()
                oDesignFrom1 = new qdockwidget(win1,0) {
                        setwidget(designFrom1)
                        setwindowtitle("Design From" + cFormNo++)
                }
 	win1.adddockwidget(2,oDesignFrom1,2)

class DesignFrom from qwidget
        Func init
                super.init()
                setwindowtitle("First Window")
                setgeometry(100,100,400,400)
                setstylesheet("background-color: purple;")
                settooltip("my first window!")
                show()
