// In the next example we will see simple Notepad developed using the RingQt

/* Ring Form Desinger 
: design by Eng. Mostafa Abuelnour Gaber
*/

Load "guilib.ring"
Load "ToolBar.ring"
Load "MenuBar.ring"
Load "StatusBar.ring"
Load "DesToolBar.ring"
Load "TreeView.ring"
Load "TextEdit.ring"

MyApp = New qApp {
	win1 = new qMainWindow() {
		setwindowtitle("Ring Notepad")
                	setGeometry(100,100,400,400)

		mneuBar1 = new clsMenuBar {
			pMenuToolBar()
		}
		toolBar1 = new clsToolBar{
			pDrawToolBar()
		}
		statusBar1 = new clsStatusBar {
			pDrawStatusBar()
		}
		desToolBar1 = new clsDesToolBar {
			pDrawDesToolBar()
		}
		treeView1 = new clsTreeView {
			pDrawTreeView()
		}
		textEdit1 = new clsTextEdit {
			pDrawTextEdit(win1)
		}

            		showmaximized()
		show()
	}
	exec()
}
