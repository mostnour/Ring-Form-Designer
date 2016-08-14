
/* Ring Form Desinger 
: design by Eng. Mostafa Abuelnour Gaber
Text Edit
*/

Class clsTextEdit
	Func pDrawTextEdit Wnd1
                	textedit1 = new qtextedit(Wnd1) {
/**/
			setCursorPositionChangedevent("pCursorPositionChanged()")
			setLineWrapMode(QTextEdit_NoWrap)
			setAcceptRichText(false)
			setTextChangedEvent("lAskToSave = true")

		}
/**/
		oDock2 = new qdockwidget(Wnd1,0) {
			setwidget(textedit1)
			setwindowtitle("Source Code")
		}
		Wnd1.adddockwidget(2,oDock2,2)
