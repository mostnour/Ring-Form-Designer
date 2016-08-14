
/* Ring Form Desinger 
: design by Eng. Mostafa Abuelnour Gaber
Status Bar
*/


Class clsStatusBar
	Func pDrawStatusBar
		status1 = new qstatusbar(win1) {
			showmessage("Ready!",0)
		}

		win1.setstatusbar(status1)
