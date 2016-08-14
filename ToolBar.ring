
/* Ring Form Desinger 
: design by Eng. Mostafa Abuelnour Gaber
Tool Bar
*/


Class clsToolBar
	Func pDrawToolBar
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

                tool1 = win1.addtoolbar("files")  {
                        for x in aBtns addwidget(x) addseparator() next
                }
