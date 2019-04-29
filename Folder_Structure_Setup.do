
	global github 	"C:/Users/julie/OneDrive/Documents/GitHub/Jordan-MSSRP-IE-Perso-2"
	global dropbox	"C:/Users/julie/Dropbox/Jordan MSSRP_Perso"
	
		foreach folder in github dropbox {
	
		* Create Project folder
		cap iefolder new project, projectfolder(${`folder'}) 
		
		* Create Randomization folder
		cap iefolder new round Randomization, projectfolder(${`folder'}) abbrev(rand)

		* Create Baseline folder
		cap iefolder new round Baseline, projectfolder(${`folder'}) abbrev(bl)

		* Create Midline folder
		cap iefolder new round Midline, projectfolder(${`folder'}) abbrev(mdl)		
	}
	
	* Create placeholders on github project strucutre
	iegitaddmd, folder(${github})
