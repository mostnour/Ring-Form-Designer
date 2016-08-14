
/* Ring Form Desinger 
: design by Eng. Mostafa Abuelnour Gaber
Tree View
*/

Class clsTreeView
	Func pDrawTreeView
	
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

                win1.adddockwidget(1,oDock1,1)
