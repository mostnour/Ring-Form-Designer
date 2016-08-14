
/* Ring Form Desinger 
: design by Eng. Mostafa Abuelnour Gaber
Desing Tool Bar
*/


Class clsDesToolBar
	Func pDrawDesToolBar
		
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

                tool1 = win1.addtoolbar("Design")  {
                        for x in vBtns addwidget(x) addseparator() next
                }
	tool1.setorientation(1)
		/*toolV = new QToolBar(win1){
			for x in vBtns 
				AddWidget(x) 
				//AddSeparator() 
			next
			SetMovable(true)
			SetGeometry(00,00,100,400)
			// SetResize(true)
			SetFloatable(true)
		}

		oDesToolBarDock = new qdockwidget(win1,0) {
			setwidget(toolV)
			SetGeometry(00,00,100,400)
			SetAllowedAreas(1)
			setwindowtitle("Design Toolbar")
              	}
                	win1.adddockwidget(1,oDesToolBarDock,1)*/
		//win1.oDesToolBarDock.Show()
