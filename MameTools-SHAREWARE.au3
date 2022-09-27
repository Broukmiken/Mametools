#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=package.ico
#AutoIt3Wrapper_Outfile=MameTools_2.0-SHAREWARE.exe
#AutoIt3Wrapper_Outfile_x64=MameTools_2.0_SHAREWARE.exe
#AutoIt3Wrapper_Res_Comment=Ce programme développé avec Autoit permet d'automatiser des opérations complexes pour gérer les roms d'arcade ainsi que de télécharger certains programmes/fichiers utiles
#AutoIt3Wrapper_Res_Description=MAME TOOLS By BROUKMIKEN
#AutoIt3Wrapper_Res_Fileversion=2.0.0.37
#AutoIt3Wrapper_Res_Fileversion_AutoIncrement=y
#AutoIt3Wrapper_Res_ProductName=MAME TOOLS By BROUKMIKEN
#AutoIt3Wrapper_Res_ProductVersion=2.0 Maj Win11
#AutoIt3Wrapper_Res_CompanyName=BROUKMIKEN CORP (2019-2022)
#AutoIt3Wrapper_Res_LegalCopyright=BROUKMIKEN CORP (2019-2022)
#AutoIt3Wrapper_Res_LegalTradeMarks=BROUKMIKEN CORP (2019-2022)
#AutoIt3Wrapper_Res_Language=1036
#AutoIt3Wrapper_Res_requestedExecutionLevel=requireAdministrator
#AutoIt3Wrapper_Tidy_Stop_OnError=n
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <WinAPIFiles.au3>
#include <InetConstants.au3>
#include <MsgBoxConstants.au3>
#include <WinAPIFiles.au3>
#include <IE.au3>
#include <File.au3>
#include <resourcesEX.au3>
#include <Date.au3>
#Include <Array.au3>
#include <StringConstants.au3>
#include <String.au3>
#include <Inet.au3>
#include <FileConstants.au3>
#include <ColorConstants.au3>
#include <StringSize.au3>
#include <EditConstants.au3>
#include <FontConstants.au3>
#include <GUIConstants.au3>
#include <EditConstants.au3>



#EndRegion ### END Koda GUI section ###

;=======================================================================================

;ici on défini l'apparence du programme
$GUI = GUICreate("MAME TOOLS By Broukmiken (2019-2022)  v"& _GetVersion(), 503, 272, 273, 188,-1,$WS_EX_ACCEPTFILES) ; ici on récupere la version une fois le script compilé
GUISetBkColor(0xB9D1EA) ; on défini la couleur de fond

#Region ### START Koda GUI section ### Form=C:\Users\Admin\OneDrive\MonGUI.kxf


$Label1 = GUICtrlCreateLabel("TELECHARGEMENTS", 8, 10, 112, 17)
GUICtrlSetFont($Label1,7, $FW_BOLD,$GUI_FONTUNDER); ca met en gras et surligné le texte du label

;$Label2 = GUICtrlCreateLabel("Opérations de TRI de fichiers", 200, 16, 142, 17)

$quitter = GUICtrlCreateButton("Quitter", 448, 16, 41, 41, $BS_ICON,$BS_DEFPUSHBUTTON)

GUICtrlSetTip(-1, "QUITTER")

$Aide = GUICtrlCreateButton("Aide", 448, 64, 41, 33, $BS_ICON,$BS_DEFPUSHBUTTON)
GUICtrlSetTip(-1, "AIDE")

$Button1 = GUICtrlCreateButton("recuperer_le_zip", 8, 40, 49, 41, $BS_ICON,$BS_DEFPUSHBUTTON) ; c'est le bouton de téléchargement
GUICtrlSetTip(-1, "Télécharger le zip des catégories" & @CRLF & "depuis le site" & @CRLF & "https://www.progettosnaps.net/catver/")

$Button2 = GUICtrlCreateButton("Extraire les catégories",  280, 208, 49, 41, $BS_ICON,$BS_DEFPUSHBUTTON)
;$Button2 = GUICtrlCreateButton("Extraire les catégories",  8, 78, 49, 41, $BS_ICON,$BS_DEFPUSHBUTTON)
;$button12=GUICtrlCreateButton("H.S",  280, 208, 49, 41,$BS_ICON,$BS_DEFPUSHBUTTON)
;GUICtrlSetTip(-1, "TEST"&@crlf&"Accepte le 'drag&drop'")
;GUICtrlSetState(-1,$GUI_DROPACCEPTED)

GUICtrlSetTip(-1, "Extraire les catégories"&@crlf&"Accepte le 'drag&drop'")
GUICtrlSetState(-1,$GUI_DROPACCEPTED)

;Local $Labelbutton2 = GUICtrlCreateLabel("descriptif bouton2",  64, 82, 90, 55)
;GuiCtrlSetData($Labelbutton2,"Extraire les catégories" )


$Button3 = GUICtrlCreateButton("lister Contenu", 200, 40, 49, 41, $BS_ICON,$BS_DEFPUSHBUTTON)
GUICtrlSetTip(-1, "Lister le contenu d'un dossier"&@crlf&"Accepte le 'drag&drop'")
GUICtrlSetState(-1,$GUI_DROPACCEPTED)


$Button4 = GUICtrlCreateButton("filtre suppr", 200, 96, 49, 41, $BS_ICON,$BS_DEFPUSHBUTTON)
GUICtrlSetTip(-1, "Trier un fichier via filtre(s) suppresseur(s)")
GUICtrlSetState(-1,$GUI_DROPACCEPTED)

$Button5 = GUICtrlCreateButton("filtre_existence", 200, 152, 49, 41, $BS_ICON,$BS_DEFPUSHBUTTON)
GUICtrlSetTip(-1, "Trier un fichier via filtre d'existence (inclusion)"&@CRLF&"Ou lister les fichiers communs entre 2 fichiers"&@crlf& _
"en réalité il n'y a pas d'ordre : ca garde les communs"&@crlf&"Accepte le 'drag&drop'")
GUICtrlSetState(-1,$GUI_DROPACCEPTED)




$Button6 = GUICtrlCreateButton("Télécharger Arcade64", 8, 95, 49, 41 ,  $BS_ICON,$BS_DEFPUSHBUTTON)
GUICtrlSetTip(-1, "Télécharger Arcade64" & @CRLF & "depuis le site" & @CRLF & "http://arcade.mameworld.info/")


$Button7 = GUICtrlCreateButton("Ajouter extension zip", 280, 40, 49, 41,  $BS_ICON,$BS_DEFPUSHBUTTON)
GUICtrlSetTip(-1, "Ajouter extension zip" & @CRLF & "A un fichier de liste de roms"&@crlf&"Accepte le 'drag&drop'")
GUICtrlSetState(-1,$GUI_DROPACCEPTED)



$Button8 = GUICtrlCreateButton("Télécharger Groovymame", 8, 147, 51, 41 ,  $BS_ICON,$BS_DEFPUSHBUTTON)
GUICtrlSetTip(-1, "Télécharger Groovymame" & @CRLF & "depuis le site " & @CRLF & "https://github.com/antonioginer/GroovyMAME/releases/")


$Button9 = GUICtrlCreateButton("Button9", 280, 96, 49, 41,  $BS_ICON,$BS_DEFPUSHBUTTON)
GUICtrlSetTip(-1, "Supprimer extension zip" & @CRLF & "A un fichier de liste de roms"&@crlf&"Accepte le 'drag&drop'")
GUICtrlSetState(-1,$GUI_DROPACCEPTED)


$Button10 = GUICtrlCreateButton("Button10",  280, 152, 49, 41,$BS_ICON,$BS_DEFPUSHBUTTON)
GUICtrlSetTip(-1, "Compter combien il y a de fichiers (sans lignes vides) dans une liste"&@crlf&"Accepte le 'drag&drop'")
GUICtrlSetState(-1,$GUI_DROPACCEPTED)

$button11=GUICtrlCreateButton("Button11",  200, 208, 49, 41,$BS_ICON,$BS_DEFPUSHBUTTON)
GUICtrlSetTip(-1, "Combiner des fichiers (concaténation)"&@crlf&"Accepte le 'drag&drop'")
GUICtrlSetState(-1,$GUI_DROPACCEPTED)

$Button12 = GUICtrlCreateButton("mamedev", 8, 200, 49, 41 ,$BS_ICON,$BS_DEFPUSHBUTTON)
GUICtrlSetTip(-1, "Télécharger Mame" & @CRLF & "depuis le site " & @CRLF & "https://www.mamedev.org/release.html")
$Label12 = GUICtrlCreateLabel("Pas de connexion...",  64, 212, 90, 63)

$maj = GUICtrlCreateButton("MAJ", 445, 100, 45, 20, $BS_ICON,$BS_DEFPUSHBUTTON)
GUICtrlSetTip(-1, "Y a t'il une mise à jour ?")


GUICtrlCreateGroup("Opérations sur FICHIERS", 190, 15, 150, 245)   ; pour faire un encadrement de bouton ou autres objets

;=======================================================================================
;défini les images pour les boutons
;ces images sont référencées dans la dll

_Resource_SetToCtrlID($quitter, "quitter", $RT_ICON, "Broukmiken.dll")
_Resource_SetToCtrlID($Aide, "Aide", $RT_ICON, "Broukmiken.dll")
_Resource_SetToCtrlID($Button1, "categories", $RT_RCDATA, "Broukmiken.dll")
_Resource_SetToCtrlID($Button2, "categories", $RT_RCDATA, "Broukmiken.dll")
_Resource_SetToCtrlID($Button3, "lister", $RT_RCDATA, "Broukmiken.dll")
_Resource_SetToCtrlID($Button4, "exclure", $RT_RCDATA, "Broukmiken.dll")
_Resource_SetToCtrlID($Button5, "inclusion", $RT_RCDATA, "Broukmiken.dll")
_Resource_SetToCtrlID($Button6, "arcade64", $RT_RCDATA, "Broukmiken.dll")
_Resource_SetToCtrlID($Button7, "ajouterzip", $RT_RCDATA, "Broukmiken.dll")
_Resource_SetToCtrlID($Button8, "groovymame", $RT_RCDATA, "Broukmiken.dll")
_Resource_SetToCtrlID($Button9, "supprimerzip", $RT_RCDATA, "Broukmiken.dll")
_Resource_SetToCtrlID($Button10, "calculatrice", $RT_RCDATA, "Broukmiken.dll")
_Resource_SetToCtrlID($Button11, "concatenation", $RT_RCDATA, "Broukmiken.dll")
_Resource_SetToCtrlID($Button12, "mamedev", $RT_RCDATA, "Broukmiken.dll")



$erreur = ObjEvent("AutoIt.Error", "rien") ; Install a custom error handler
func rien()
EndFunc


miseajour()	;lance la recherche de mise à jour

;=======================================================================================
;vérifie si la dll existe: si oui le programme continue, sinon message d'erreur  et le programme est quitté (se ferme)

if FileExists (@scriptdir&"\Broukmiken.dll") then
Else
	Msgbox($MB_ICONERROR,"Erreur de DLL","ERREUR !!!"&@crlf& _
	"Broukmiken.dll not found !!!"&@crlf& _
	"Elle est où la DDL, hein ??"&@crlf& _
	"elle doit etre dans le meme dossier que le .exe !!!")
	Exit
EndIf
;fin verification dll





$Labelunregistered = GUICtrlCreateLabel("", 405, 160, 152, 45)


;l'ORDRE DES PING EST IMPORTANT CAR
;CA LANCE ENSUITE L'oRDRE DE L'écriture des versions et url dans le fichier temp
;et ensuite pour le téléchargement de chaque fichier ca va lire la ligne qui a été écrite
;donc si on change cette orientation, alors ca mettra n'importe quoi

;=======================================================================================
;ici on crée POUR le bouton 1 et la zone de texte qui affichent la variable de la version
;c'est juste l'affichage du label pas l'execution de la fonction en elle meme
;juste le nom du zip donc ne nom de la version est récupéré

If Ping("progettosnaps.net",4000) >0 Then ;si le ping est supérieur à zero c'est que le site est en ligne

   call("categories") ; lance la fonction categories
    ;sinon si le ping ne répond pas :
Elseif Ping("progettosnaps.net",6000) =0 Then
$Label3 = GUICtrlCreateLabel("Pas de connexion1..",  64, 50, 90, 25)
   GuiCtrlSetData($Label3,"Site inaccessible..." )

EndIf
; et ca s'arrete là et saute l'execution de la fonction
;=======================================================================================


;=======================================================================================
;ici on crée POUR le bouton 8 et la zone de texte qui affichent la variable de la version groovymame
;c'est juste l'affichage du label pas l'execution de la fonction en elle meme
;juste le nom du zip donc le nom de la version est récupéré

;=======================================================================================

;ici on creé POUR le bouton 6 (télécharger arcade64)  et la zone de texte qui affichent la variable de la version
;c'est juste l'affichage du label pas l'execution de la fonction en elle meme
;juste le nom du zip donc le nom de la version est récupéré

If Ping("arcade.mameworld.info",4000) >0 Then ;si le ping est supérieur à zero c'est que le site est en ligne
   call("arcade") ; lance la fonction arcade
   ;sinon si le ping ne répond pas :
Elseif Ping("arcade.mameworld.info",6000) =0 Then
;$Label4 = GUICtrlCreateLabel("Pas de connexion...",  64, 142, 90,53)
$Label4 = GUICtrlCreateLabel("Pas de connexion...",  64, 110, 90, 55)

   GuiCtrlSetData($Label4,"Site inaccessible..." )

EndIf
; et ca s'arrete là et saute l'execution de la fonction
;=======================================================================================




$ping= Ping("github.com",4000)

if $ping Then ;si le ping est supérieur à zero c'est que le site est en ligne
   call("groovymame") ; lance la fonction groovymame
   ;sinon si le ping ne répond pas :
   ;MsgBox($MB_SYSTEMMODAL, "", "Temps de réponse: " & $Ping & "ms.")
Else
$Label5 = GUICtrlCreateLabel("Pas de connexion...",  64, 160, 90,53) ; j'avais 64,142,90,53
   GuiCtrlSetData($Label5,"Site inaccessible..." )
   ;MsgBox($MB_SYSTEMMODAL, "", "Une erreur est survenue, @error = " & @error)

EndIf
; et ca s'arrete là et saute l'execution de la fonction
;=======================================================================================


$ping= Ping("mamedev.org",4000)

if $ping Then ;si le ping est supérieur à zero c'est que le site est en ligne
   call("mamedev") ; lance la fonction groovymame
   ;sinon si le ping ne répond pas :
   ;MsgBox($MB_SYSTEMMODAL, "", "Temps de réponse: " & $Ping & "ms.")
Else
$Label12 = GUICtrlCreateLabel("Pas de connexion...",  64, 212, 90, 63) ; j'avais 64,142,90,53
   GuiCtrlSetData($Label12,"Site inaccessible..." )
   ;MsgBox($MB_SYSTEMMODAL, "", "Une erreur est survenue, @error = " & @error)

EndIf
; et ca s'arrete là et saute l'execution de la fonction
;=======================================================================================


;=======================================================================================
;ici on défini le bouton d'enregistrement de la version trial
;et les cases input pour entrer le nom et le numero de serie (pass)

;$EM_SETCUEBANNER = 0x1501 ; ca permet de mettre du texte en grisé
;https://doc-autoit-fr.github.io/appendix/GUIStyles.htm#Edit
;DANS EDIT INPUT STYLE
;$ES_PASSWORD 	0x0020 	Displays an asterisk (*) for each character that is typed into the edit control.
;$ES_CENTER 	0x0001 	Centers text in a multiline edit control.
 ; 0x0001 permet de mettre les caracteres centrés
; False efface le texte quand on entre dans la case, sinon mettre True
; 0x0020 permet de masquer les caracteres
;BitOR(0x0020,0x0001) permet de combiner caracteres au centre et masqués

;$USER = GUICtrlCreateInput("",410,210,80-140,19)
$USER = GUICtrlCreateInput("",400,210,140,19)
;GUICtrlSetLimit($user,18)

GUICtrlSendMsg($USER,$EM_SETCUEBANNER, False, "Nom ?")
;$CODE = GUICtrlCreateInput("",420,230,80,15,BitOR(0x0020,0x0001))
$CODE = GUICtrlCreateInput("",380,230,130,15)
GUICtrlSendMsg($CODE, $EM_SETCUEBANNER, False, "Clé d'achat ?")
$REGISTER = GUICtrlCreateButton("S'enregistrer",420,250,80,20)

GUICtrlSetState($REGISTER,$GUI_DISABLE)



;=======================================================================================

;ici on va vérifier l'existence ou pas du fichier de licence
;il faut que que fichier de licence soit bien caché pour que l'utilisateur ne puisse le modifier et savoir où il se trouve


Local Const $sFilePath = @ScriptDir&"\licence.brk"
Local $iFileExists = FileExists($sFilePath)




    ; si le fichier licence existe alors
	;1/ca lit les données dans le fichier (le nom enregistré) meme si l'extension est n'importe quoi qui n'existe pas (licence.brk)
	;2/ca crée le label (petite zone de texte) dans laquelle est écrit "Licence accordée" et récupere le nom écrit dans le fichier stocké
	;3/ca supprime les cases input créees juste au dessus...
    If $iFileExists Then

		$droitevrai= stringright(GetProcessorId(),2) ; regarde les 2 derniers caracteres à droite
			$gauchevrai= stringleft(GetProcessorId(),2) ; regarde les 2 premiers carateres à gauche
			$extremesvrai=$gauchevrai&$droitevrai
			$extremeslicence= stringright(FileReadline (@scriptdir&"\licence.brk",2),4) ; on lit sur la 2eme ligne du fichier de licence,les 4 caracteres à droite
			;msgbox(0,"resultat dans licence","ca lit: "&$extremeslicence)

			If StringCompare($extremesvrai,$extremeslicence) <>0 Then
				msgbox($MB_ICONERROR,"ERREUR 2", "LA LICENCE N'EST PAS POUR CE PC" &@crlf& _
				"PETIT MALIN")
				call ("supptemp")
				exit
			Else
				;msgbox(0,"controle licence et pc","controle licence et PC ok ca match")
				EndIf



        $registerednom=FileRead(@scriptdir&"\licence.brk")

					; change le nom enregistré s'il a été modifié dans le fichier licence et est trop long
					if StringLen (FileReadLine(@scriptdir&"\licence.brk",1)) >12 Then
						$nomraccourci=StringLeft(FileReadline(@scriptdir&"\licence.brk",1),12)
						_FileWriteToLine( @scriptdir&"\licence.brk",1,$nomraccourci,True)
						$registerednom=FileRead(@scriptdir&"\licence.brk")
					EndIf
					; fin de cette modif

		$Labelregistered = GUICtrlCreateLabel("Licence accordée à:"&@crlf&$registerednom, 390, 230, 110, 40,BitOR($SS_CENTER, $WS_BORDER))
		GUICtrlSetBkColor($Labelregistered,0xC0B0F2)
		GUICtrlDelete($REGISTER) ; on peut aussi les cacher plutot que de les supprimer GUICtrlSetState($register,$GUI_HIDE) a vérifier
		GUICtrlDelete($CODE)
		GUICtrlDelete($USER)
		WinSetTitle( $GUI, "","MAME TOOLS By Broukmiken (2019-2022)  v"& _GetVersion()& " PRO à "&$registerednom)


		;ici c'est la zone conditionnelle si le fichier licence exite
		;LA FONCTION TRIAL NE SERA PAS LANCéE

    Else ;si le fichier de licence n'existe pas ALORS ca regarde si le fichier trial.brk existe ou pas :

				;=======================================================================================
;CREATION D'UNE CLE DE REGISTRE


;=============================================================================================



			;vérifie si la clé registre existe, c'est que le prog a déja été lancé
			 RegRead("HKEY_CURRENT_USER64\Software\MameTools", "start")
			 if @error	Then
				 ; c'est que la clé registre n'existe pas, donc le prog n'a jamais été lancé
				 RegWrite("HKEY_CURRENT_USER64\Software\MameTools", "start", "REG_SZ", _NowCalc())
; clé crée HKEY_USERS\S-1-5-21-2454635656-1535638888-459592784-1001\Software\MameTools
RegWrite("HKEY_CURRENT_USER64\Software\MameTools", "proc", "REG_SZ", GetProcessorId())

			 Else
			 $dejalance=RegRead("HKEY_CURRENT_USER64\Software\MameTools", "start")
				 ;msgbox(0,"Trial déja lancé","déja lancé le "& $dejalance)
						if StringCompare($dejalance,FileReadLine(@scriptdir&"\trial.brk",2))  <> 0 Then
						msgbox($MB_ICONERROR,"ERREUR 1","probleme de TRIAL"&@crlf&@crlf&"=>Merci de vous enregistrer<="&@crlf&@crlf&"en communicant ce code: "&@crlf&GetProcessorId())
						call ("demande_licence")
						call ("supptemp")
						Exit
						EndIf

				EndIf



;creation des barres de progression de recul du trial : de 100% à 0
		$left=405
		$top=120
		$width=95
		$height=20

		$barreprogressiontrialcontour = GUICtrlCreateLabel("",$left, $top, $width, $height, 0x12)
	   $barreprogressiontrialcurseur = GUICtrlCreateLabel("",$left+1,$top+1,0,$height-2)
	   GUICtrlSetBkColor($barreprogressiontrialcurseur, $GUI_BKCOLOR_TRANSPARENT)
	   $barreprogressiontrialpourcentage= GUICtrlCreateLabel("",$left,$top+($height/2)-6,$width,$height,$SS_CENTER) ;affiche le % d'usage du trial au milieu
	   GUICtrlSetBkColor($barreprogressiontrialpourcentage, $GUI_BKCOLOR_TRANSPARENT)
	   ;fin de creation des barres
		WinSetTitle( $GUI, "","MAME TOOLS By Broukmiken (2019-2022)  v"& _GetVersion()& " TRIAL")



				if FileExists(@scriptdir&"\trial.brk") Then ;si le fichier trial.brk existe on lance la fonction trial
				call ("trial")

				Else ;si le fichier trial.brk n'existe pas non plus (donc que c'est le 1er lancement du programme)

				FileWrite(@scriptdir&"\trial.brk","PREMIER_LANCEMENT"&@crlf&RegRead("HKEY_CURRENT_USER64\Software\MameTools", "start")&@crlf&"LOG_LANCEMENTS :"&@crlf) ; pour creer un fichier trial.brk qui contient la date et heure du 1er lancement du prog pour trial avec temps limité
				;Pour info :  _nowcalc() est affiché en année,mois,jour heures:minutes:secondes
				call ("trial") ; puis lance la fonction trial
				Endif

    EndIf
;FIN de la zone conditionnelle si le fichier licence existe
;=======================================================================================



GUISetState(@SW_SHOW,$GUI)

GUIRegisterMsg($WM_COMMAND, "_WM_COMMAND") ; je ne sais pas, j'ai trouvé ce code qui va avec la fonction _WM_COMMAND
;fonction qui permet d'adapter la longueur de la boite input de $user en fonction de ce qui est entré
;car sinon un guictrlcreateinput d'une certaine taille limite le nombre de caracteres entrés par sa taille...

GUIRegisterMsg($WM_DROPFILES, 'multidrag') ; c'est pour le drag and drop multiple CETTE FONCTION TOURNE SANS ARRET ET DETECTE CE QUI EST DRAG&DROPé
Global $tous_les_fichiers = 0; idem c'est pour le drag and drop multiple ca tourne en permanence


;=======================================================================================
;boucle pour gérer les boutons de l'interface

While 1
    $MSG = GUIGetMsg()

	Switch $MSG

		Case $GUI_EVENT_CLOSE
					If MsgBox(4+256+32, "ATTENTION", "VOULEZ VOUS VRAIMENT QUITTER ?") = 6 Then
						;on peut aussi ecrire la somme ou la décomposer correspond à 4 (oui et non) + 32(point d'interrogation) + 256 (2eme bouton par défaut
						;=6 veut dire qu'on a cliqué sur oui voir desriptif https://www.autoitscript.fr/autoit3/docs/functions/MsgBox.htm
							Local  $temporaire =  @ScriptDir & "\broukmiken.tmp"
								call ("supptemp")
						Exit
					Endif

		Case $GUI_EVENT_DROPPED

			If @GUI_DropId= $Button1 Then ;Télécharger le zip des catégories
			Msgbox($MB_ICONINFORMATION,"Drag&Drop","Pas de Drag&Drop pour le moment...",3)

			ElseIf @GUI_DropId= $Button2 Then ; c'est extraire les catégories
				;test ici
$Label21 = GUICtrlCreateLabel("test affichage",  8, 50,49,41)
GuiCtrlSetData($Label21,"test2" & @CRLF &  "tewt3" )
					$fichierini=@GUI_DragFile
					$origine=2
					$quantite_elements_necessaire=1
					$necessaire=".ini"
					controledrag_nombre($quantite_elements_necessaire,$fichierini,$origine,$necessaire)

			ElseIf @GUI_DropId = $button3 Then ; c'est lister le contenu d'un dossier
					$fichierini=@GUI_DragFile
					$origine=3
					$quantite_elements_necessaire=1
					$necessaire="dossier"
					controledrag_nombre($quantite_elements_necessaire,$fichierini,$origine,$necessaire)

			ElseIf @GUI_DropId= $Button4 Then ; supprimer d'une liste d'exclusion
					Msgbox($MB_ICONINFORMATION,"Drag&Drop","Pas de Drag&Drop pour le moment...",3)

			ElseIf @GUI_DropId= $Button5 Then ; liste d'inclusion ou aussi garder les communs
					$fichierini=@GUI_DragFile
					$origine=5
					$quantite_elements_necessaire="2"
					$necessaire=".txt"&".ini"&".gamelist"&".EXCLUDELIST"
					$fichierini= $tous_les_fichiers
					controledrag_nombre($quantite_elements_necessaire,$fichierini,$origine,$necessaire)


			ElseIf @GUI_DropId= $Button12 Then ; Télécharger arcade64 OK
					Msgbox($MB_ICONINFORMATION,"Drag&Drop","Pas de Drag&Drop pour le moment...",3)

			ElseIf @GUI_DropId= $Button6 Then ; Télécharger arcade64 OK
					Msgbox($MB_ICONINFORMATION,"Drag&Drop","Pas de Drag&Drop pour le moment...",3)

			ElseIf @GUI_DropId = $button7 Then ; c'est ajouter l'extension zip
					$fichierini=@GUI_DragFile
					$origine=7
					$quantite_elements_necessaire=1
					$necessaire=".txt"&".ini"
					controledrag_nombre($quantite_elements_necessaire,$fichierini,$origine,$necessaire)

			ElseIf @GUI_DropId= $Button8 Then ; Télécharger groovymame OK
					Msgbox($MB_ICONINFORMATION,"Drag&Drop","Pas de Drag&Drop pour le moment...",3)

			ElseIf @GUI_DropId = $button9 Then ; c'est supprimer l'extension zip
					$fichierini=@GUI_DragFile
					$origine=9
					$quantite_elements_necessaire=1
					$necessaire=".txt"&".ini"
					controledrag_nombre($quantite_elements_necessaire,$fichierini,$origine,$necessaire)

			ElseIf @GUI_DropId = $button10 Then ; c'est compter le nombre de fichiers dans un fichier

					$fichierini=@GUI_DragFile
					$origine=10
					$quantite_elements_necessaire=1
					$necessaire=".txt"&".ini"&".gamelist"&".EXCLUDELIST"
					controledrag_nombre($quantite_elements_necessaire,$fichierini,$origine,$necessaire)


			ElseIf @GUI_DropId = $button11 Then ; c'est concatener les fichiers

						;en test
						$origine=11
					$quantite_elements_necessaire="5"
					$necessaire=".txt"&".ini"&".gamelist"&".EXCLUDELIST"
					$fichierini= $tous_les_fichiers
					controledrag_nombre($quantite_elements_necessaire,$fichierini,$origine,$necessaire)


						;fin test
						;formatage_fichiers_a_concatener_via_drag()



			EndIf



		Case $REGISTER  ; $REGISTER c'est le nom de l'action du bouton d'enregistrement si no click dessus

			If Controleducode(GUICtrlRead($CODE)) = 1 Then

$codevalide=GUICtrlRead($CODE)
; si la valeur entrée dans l'input ($code) est validée par la fonction controleducode alors
			;If Controleducode(GUICtrlRead($USER),GUICtrlRead($CODE)) = 1 Then ; ca c'est si on veut verifier le user et le code

				AdlibUnRegister("updateTime") ; on arrete la fonction en boucle "updatetime" du temps de trial restant(lancée avec la fonction trial) et on continue

				; test creation d'une barre de progrssion du trial (une barre qui se vide)
			GUICtrlDelete($barreprogressiontrialcontour)
			GUICtrlDelete($barreprogressiontrialcurseur)
			GUICtrlDelete($barreprogressiontrialpourcentage)



			WinSetTitle( $GUI, "","MAME TOOLS By Broukmiken (2019-2022)  v"& _GetVersion()& " PRO à "&GUICtrlRead($USER))




				If GUICtrlRead($USER) = "" then

					msgbox($MB_ICONINFORMATION,"nom","Aucun nom choisi"&@crlf&"Ce sera alors 'Poulet'")
					MsgBox($MB_ICONINFORMATION,"Merci","Merci de votre achat"&@crlf& "'poulet'") ; le nom est forcé
					FileWrite(@scriptdir&"\licence.brk","Poulet"& @crlf & $codevalide) ; ca crée un fichier licence contenant la valeur de l'input $user qui là est vide donc on force à un mot "poulet" ;)
					$registerednom=FileRead(@scriptdir&"\licence.brk"); ca lit la valeur écrite juste avant
					$Labelregistered = GUICtrlCreateLabel("Licence accordée à:"&@crlf&$registerednom, 390, 230, 110, 40,BitOR($SS_CENTER, $WS_BORDER))
					;ca crée la zone de texte en y écrivant Licence accordée enregistrée à
					GUICtrlSetBkColor($Labelregistered,0xC0B0F2)
					GUICtrlDelete($Labelunregistered)
			GUICtrlDelete($REGISTER) ; ca supprime la zone de saisie de texte apres l'avoir lue au dessus
			GUICtrlDelete($CODE); idem
			GUICtrlDelete($USER);idem


				Else

					MsgBox($MB_ICONINFORMATION,"Merci","Merci de votre achat"&@crlf& GUICtrlRead($USER)) ; GUICtrlRead recupere la valeur de l'input entrée avec $user
					FileWrite(@scriptdir&"\licence.brk",GUICtrlRead($USER)& @crlf & $codevalide) ; ca crée un fichier licence contenant la valeur de l'input $user
					$registerednom=FileRead(@scriptdir&"\licence.brk"); ca lit la valeur écrite juste avant
					$Labelregistered = GUICtrlCreateLabel("Licence accordée à:"&@crlf&$registerednom, 390, 230, 110, 40,BitOR($SS_CENTER, $WS_BORDER))
					;ca crée la zone de texte en y écrivant Licence accordée enregistrée à
					GUICtrlSetBkColor($Labelregistered,0xC0B0F2)
					GUICtrlDelete($Labelunregistered)
			GUICtrlDelete($REGISTER) ; ca supprime la zone de saisie de texte apres l'avoir lue au dessus
			GUICtrlDelete($CODE); idem
			GUICtrlDelete($USER);idem



				Endif

			Else ; c'est l'autre option du Controleducode
            MsgBox($MB_ICONERROR,"ERREUR 3","Erreur d'identification"&@crlf&"Veuillez réessayer...",3 )
			GUICtrlSetData($USER,"")
			GUICtrlSetData($CODE,"")
			GUICtrlSetState($REGISTER,$GUI_DISABLE)
			EndIf

		Case -3
			Exit



		Case $quitter
					If MsgBox(4+256+32, "ATTENTION", "VOULEZ VOUS VRAIMENT QUITTER ?") = 6 Then
							Local  $temporaire =  @ScriptDir & "\broukmiken.tmp"
								call ("supptemp")
						Exit
					Endif



		Case Else


				If $MSG = $Button1 Then ;Télécharger le zip des catégories
				fonction1()

				ElseIf $MSG = $Button2 Then ; c'est extraire les catégories
				$fichierini=""
				fonction2($fichierini)


				ElseIf $MSG = $Button3 Then ; c'est lister le contenu d'un dossier
				$fichierini=""
				fonction3($fichierini)

				ElseIf $MSG = $Button4 Then ; supprimer d'une liste d'exclusion
				fonction4()

				ElseIf $MSG = $Button5 Then ; liste d'inclusion ou aussi garder les communs
				$fichierini=""
				fonction5($fichierini)

				ElseIf $MSG = $Button6 Then ; Télécharger arcade64 OK
				fonction6()

				ElseIf $MSG = $Button7 Then ; c'est ajouter l'extension zip
				$fichierini=""
				fonction7($fichierini)

				ElseIf $MSG = $Button8 Then ; Télécharger groovymame OK
				fonction8()

				ElseIf $MSG = $Button9 Then ; c'est supprimer l'extension zip
				$fichierini=""
				fonction9($fichierini)

				ElseIf $MSG = $Button10 Then ; c'est compter le nombre de fichiers dans un fichier
				$fichierini=""
				fonction10($fichierini)

				ElseIf $MSG = $Button11 Then ; c'est concaténation
				$fichierini=""
				fonction11($fichierini)

				ElseIf $MSG = $Button12 Then ; Télécharger Mame
				fonction12()

				ElseIf $MSG = $Aide Then
				fonctionaide()

				Elseif $MSG= $maj Then
				miseajour()

		EndIf




    EndSwitch

WEnd


;LECTURE DU NUMERO DE SERIE DU PROCESSEUR
Func GetProcessorId()
$objWMIService = ObjGet("winmgmts:\\localhost\root\CIMV2")
$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_Processor", "WQL",0x10+0x20)
If IsObj($colItems) Then
    For $objItem In $colItems
    Local $PROC_ID = $objItem.ProcessorId
    Next
    Return $PROC_ID
Else
    Return 0
EndIf

$droite= stringright(GetProcessorId(),2)
$gauche= stringleft(GetProcessorId(),2)
$extremes=$gauche&$droite
msgbox(0,"test",GetProcessorId() &" voici les 2 extremes: "&$extremes )
EndFunc

;=============================================================================================

func lecturefiche()

$sUrl = "https://broukmiken.pagesperso-orange.fr/fichier.dat"

$oHTTP = ObjCreate("winhttp.winhttprequest.5.1")

;$oHTTP.Open("GET", $sUrl, False)
$oHTTP.Open("GET", $sUrl)
$oHTTP.Send()
if @error Then		; c'est que le fichier n'est pas accessible
	msgbox(16,"Erreur1","pb reseau"&@CRLF&"le programme marchera en mode dégradé")
		GUICtrlSetBkColor($maj,0xFF0000)
		return 0
EndIf

If $oHTTP.Status = 200 Then
   $reponse = $oHTTP.ResponseText

Return ($reponse) ; renvoi le tableau des resultats
EndIf
EndFunc

func miseajour()

;msgbox(0,"lecture du contenu de la fiche",lecturefiche())
$tableau=StringSplit(lecturefiche(),@CR)
if @error Then		; c'est que le fichier n'est pas accessible
	;msgbox(16,"Erreur2","pb reseau"&@CRLF&"le programme marchera en mode dégradé")
		GUICtrlSetBkColor($maj,0xFF0000)
		return 0
EndIf

;affiche les resultats en tableau ,à chaque retour de ligne du fihier, ca fait 1 ligne du tableau
;_ArrayDisplay($tableau,"TABLEAU DE RESULTATS")
;msgbox(0,"test tableau","($tableau[3] :"&$tableau[3])
$versionenligne = StringTrimLeft($tableau[2],9)	;contient les . (2.0.0.1)
$niveau=StringTrimLeft($tableau[3],8)
$versionactuelle=_GetVersion()

;mise en forme des valeurs pour etre comparées, on supprime les .
$versionenligne_formatee=StringReplace($versionenligne,".","")	; on supprime les .
$versionactuelle_formatee=StringReplace($versionactuelle,".","")	; on supprime les .

$comparaison=StringCompare($versionenligne_formatee,$versionactuelle_formatee)

local $transfert[5]
$transfert[0]=$versionenligne		;valeur[0] du tableau
$transfert[1]=$versionactuelle
$transfert[2]=$niveau
$transfert[3]=$versionenligne_formatee
$transfert[4]=$versionactuelle_formatee
;_ArrayDisplay($transfert,"TABLEAU CLASSEMENT RESULTATS")


$comparaison=StringCompare($versionenligne_formatee,$versionactuelle_formatee)

			if $comparaison >0	Then
					$proposition=MsgBox(32+4,"MISE A JOUR DISPO","Une mise à jour est disponible :"&@CRLF& @CRLF& _
					"Version installée: "&$versionactuelle&@CRLF&"Nouvelle version: " _
					&$versionenligne &@CRLF&"c'est une mise à jour :"&$niveau&@CRLF& @CRLF& _
					"VOULEZ-VOUS LA TELECHARGER ?")
							if $proposition = 6 Then
							ShellExecute("https://broukmiken.pagesperso-orange.fr")
							Exit
							Else		; si on refuse de faire la mise à jour
										if $niveau="Majeure" Then
										msgbox(16,"IMPORTANT","c'est une mise à jour MAJEURE"&@CRLF&"Cette version est obsolete"&@CRLF&@CRLF&"Fermeture du programme",5)
										Exit
										Else
										EndIf

							EndIf
							AdlibRegister("clignotement",500)


			Else

					msgbox(0,"PAS DE MAJ","Vous utilisez la derniere version,"&@CRLF&"merci")






return($transfert)		;sous forme d'un tableau

EndIf

EndFunc

Func clignotement()
    Static $blink = False
    If $blink Then
        GUICtrlSetBkColor($maj, _WinAPI_GetSysColor($COLOR_MENU))
        $blink = Not $blink
    Else
        GUICtrlSetBkColor($maj,0x008000)
        $blink = Not $blink
    EndIf
EndFunc

func categories()

	;=======================================================================================
;vérifie si le fichier temporaire existe si oui ca le supprime
Local  $temporaire =  @ScriptDir & "\broukmiken.tmp"
if FileExists ($temporaire) then
FileDelete($temporaire)
 ;MsgBox(0, "FICHIER TEMP", "SUPPRImé")
Else
 ;MsgBox(0, "FICHIER TEMP", "n'existe pas")
EndIf
;fin verification fichier temporaire
;=======================================================================================



HttpSetUserAgent("Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:87.0) Gecko/20100101 Firefox/87.0")
$Label3 = GUICtrlCreateLabel("Pas de connexion2..",  64, 38, 90, 25)


$sUrl = "https://www.progettosnaps.net/catver/"

$oHTTP = ObjCreate("winhttp.winhttprequest.5.1")
$oHTTP.Open("GET", $sUrl, False)
$oHTTP.Send()
If $oHTTP.Status = 200 Then
   $sReceived = $oHTTP.ResponseText

$aFile = StringRegExp($sReceived, 'file=(.+?\.zip)">', 1)
;cette expression reguliere va lire le code html de la page et va chercher
;ce qui commence par file= et qui se termine par .zip
;ca sort en une colonne et on prend le 1er resultat
;dans le code html il y a file=pS_CatVer_237.zip donc ca va sortir pS_CatVer_237.zip
;MsgBox(0, "$aFile[0] categories", $aFile[0])

$versionini=StringRight(stringtrimright($aFile[0],4),10)
;stringtrimright supprime les 4 caracteres de droite, donc ca supprime .zip donc il reste pS_CatVer_237
;PUIS stringright ne garde que les 10 caracteres en partant de la droite donc ca sort CatVer_237
;MsgBox(0,"$versionini categories",$versionini)


$sadresse =   StringRegExp($sReceived, 'href=(.+?\.zip)', 1)
;cette expression reguliere va lire le code html de la page et va chercher
;ce qui commence par href= et qui se termine par .zip
;ca sort en une colonne et on prend le 1er resultat
;dans le code html il y a href="/download/?tipo=catver&file=pS_CatVer_237.zip donc ca va sortir "/download/?tipo=catver&file=pS_CatVer_237.zip
;msgbox(0,"$sadresse[0] categories",$sadresse[0])

$adressecomplete=StringTrimRight($surl,7) & StringTrimLeft($sadresse[0],2)
;stringtrimleft va retirer 2 caracteres en partant de la gauche donc ca va sortir download/?tipo=catver&file=pS_CatVer_237.zip
;stringtrimright va retirer 7 caracteres de l'url qui était définie comme étant https://www.progettosnaps.net/catver/ donc ca va sortir https://www.progettosnaps.net/
;toute cette expression avec le & lie les chaines de caracteres donc on obtient :
;https://www.progettosnaps.net/download/?tipo=catver&file=pS_CatVer_237.zip
;msgbox(0,"$sadressecomplete categories",$adressecomplete)


; ecriture des données dans un fichier tmp
   Local Const $sFilePath =  @ScriptDir & "\broukmiken.tmp"
       If Not FileWrite($sFilePath,"POUR CATVER:"& @CRLF &  $versionini & @CRLF & $adressecomplete& @CRLF ) Then
        MsgBox($MB_SYSTEMMODAL, "", "Une erreur est survenue lors de l'écriture dans le fichier temporaire.")
        Return False
    EndIf

    ; Ouvre le fichier en lecture et stocke le handle dans une variable.
    Local $hFileOpen = FileOpen($sFilePath, $FO_READ)
    If $hFileOpen = -1 Then
        MsgBox($MB_SYSTEMMODAL, "", "Une erreur est survenue pendant la lecture du fichier.")
        Return False
    EndIf




;fin test lire contenu du fichier texte

   ; Ferme le handle retourné par FileOpen.
    ;FileClose($hFileOpen)
    ; Supprime le fichier temporaire.

   ; FileDelete($sFilePath)
	; fin test

EndIf


GuiCtrlSetData($Label3,"Catégories" & @CRLF & $versionini )

EndFunc

Func arcade()


local $adresse
local $adressecomplete

HttpSetUserAgent("Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:87.0) Gecko/20100101 Firefox/87.0")
;$Label4 = GUICtrlCreateLabel("Pas de connexion...",  64, 142, 90,53)
$Label4 = GUICtrlCreateLabel("Pas de connexion...",  64, 95, 90, 55)

$sUrl = "http://arcade.mameworld.info/"



$oHTTP = ObjCreate("winhttp.winhttprequest.5.1")
$oHTTP.Open("GET", $sUrl, False)
$oHTTP.Send()
If $oHTTP.Status = 200 Then
   $sReceived = $oHTTP.ResponseText

$aFile = StringRegExp($sReceived, 'href=(.+?\.7z)">', 1)
;cette expression reguliere va lire le code html de la page et va chercher
;ce qui commence par href= et qui se termine par .7z
;ca sort en une colonne et on prend le 1er resultat
;dans le code html il y a href="arcade237.7z donc ca va sortir "arcade237.7z
;MsgBox(0, "$aFile[0] arcade", $aFile[0])


$versionini=stringtrimleft(stringtrimright($aFile[0],3),1)
;stringtrimright supprime 3 caracteres de droite donc "arcade237.7z devient "arcade237
;stringtrimleft supprime 1 caractere de gauche donc "arcade237 devient arcade237
;MsgBox(0,"$versionini arcade",$versionini)

;petite modif pour faire le nom arcade64_xxx

$versionini = _StringInsert ($versionini,"64_",6)


;$sadresse =   StringRegExp($sReceived, 'href=(.+?\.7z)', 1)
;cette expression reguliere va lire le code html de la page et va chercher
;ce qui commence par href= et qui se termine par .7z
;ca sort en une colonne et on prend le 1er resultat
;dans le code html il y a href="arcade237.7z donc ca va sortir "arcade237.7z
;msgbox(0,"$sadresse[0] arcade",$sadresse[0])

;$adressecomplete=$surl & StringTrimLeft($sadresse[0],1)
;stringtrimleft va supprimer 1 caractere à gauche donc "arcade237.7z devient arcade237.7z
;on combine les 2 chaines de caracteres donc http://arcade.mameworld.info/arcade237.7z
$adressecomplete=$surl & StringTrimLeft($aFile[0],1)
;on pouvait aussi mettre :
;$adressecomplete= $surl & $versionini & ".7z"
;msgbox(0,"$sadressecomplete arcade",$adressecomplete)



   ; test ecriture dans fichier temp
   Local Const $sFilePath =  @ScriptDir & "\broukmiken.tmp"

FileWrite($sFilePath,"POUR ARCADE64:" & @CRLF &$versionini & @CRLF & $adressecomplete& @CRLF)

   ; FileDelete($sFilePath)
	; fin test

EndIf



GuiCtrlSetData($Label4,"Actuellement" & @CRLF & $versionini )



EndFunc

func groovymame()
	HttpSetUserAgent("Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:87.0) Gecko/20100101 Firefox/87.0")
	$Label5 = GUICtrlCreateLabel("Pas de connexion...",  64, 145, 90,53)


; la page d'accès à la derniere release sur github est toujours la même
$sUrl = "https://github.com/antonioginer/GroovyMAME/releases/latest/"

$oHTTP = ObjCreate("winhttp.winhttprequest.5.1")
$oHTTP.Open("GET", $sUrl, False)
$oHTTP.Send()
If $oHTTP.Status = 200 Then
   $sReceived = $oHTTP.ResponseText

   	; dans le code html de la page https://github.com/antonioginer/GroovyMAME/releases/latest/
	;on trouve ceci : src="https://github.com/antonioginer/GroovyMAME/releases/expanded_assets/gm0247sr002l"
	; expanded assets c'est la liste des fichiers de la release
	;je suis obligé de passer par là car je n'ai plus acces direment à l'url des fichiers dans la page de la release
	;donc on fait un stringregexp pour trouver gm0247sr002l , c'est à dire la derniere version actuelle
	;on va s'en servir pour ouvrir la vrai page qui contient les url des fichiers

	$resultats = StringRegExp($sReceived, '"https://github.com/antonioginer/GroovyMAME/releases/expanded_assets/(.+?)"', 1)

	;ainsi en assemblant la chaine immuable https://github.com/antonioginer/GroovyMAME/releases/expanded_assets/
	; avec gm0247sr002l qui correspond à la derniere release
	;ca donne l'url de la derniere release qui contient les fichiers à télécharger
	;attention $resultats est sous la forme d'un tableau , dont la premiere ligne est numérotée zéro donc  $resultats[0]
	;_ArrayDisplay($resultats, "resultats")   si on veut voir ce que trouve le programme

	$sUrl="https://github.com/antonioginer/GroovyMAME/releases/expanded_assets/" & $resultats[0]


	; ici on va recherche dans le code html, la balise title ,de la page https://github.com/antonioginer/GroovyMAME/releases/latest/
	; cette page est définie au début de la fonction : $sUrl = "https://github.com/antonioginer/GroovyMAME/releases/latest/"
	; voilà par exemple ce qui est dans le code html :  <title>Release GroovyMAME 0.247 - Switchres 2.002l · antonioginer/GroovyMAME</title>
	; tout ce qui est entre <title>Release et · antonioginer/GroovyMAME · GitHub
	;on a donc comme résultat:

	$version = StringRegExp($sReceived, '<title>Release(.+?)· antonioginer/GroovyMAME · GitHub', 1)
	;attention $version est sous la forme d'un tableau , dont la premiere ligne est numérotée zéro donc  $version[0]
	;_ArrayDisplay($version, "version")   si on veut voir ce que trouve le programme

; on reformate le résultat car il y a un espace à l'avant et à l'arriere de ce qui est trouvé

	$version=StringTrimRight(StringTrimLeft($version[0],1),1) ; on enleve l'espace qu'il y a avant et apres le resultat initial

EndIf


; ici on reprend l'url de la page qui contient les fichiers à télécharger
; pour rappel c'est un peu au dessus
; $sUrl="https://github.com/antonioginer/GroovyMAME/releases/expanded_assets/" & $resultats[0]
; et $resultats[0] est le contenu de $resultats = StringRegExp($sReceived, '"https://github.com/antonioginer/GroovyMAME/releases/expanded_assets/(.+?)"', 1)
; donc https://github.com/antonioginer/GroovyMAME/releases/expanded_assets/gm0247sr002l
; c'est cette page qui contient les url des fichiers de la derniere release

$oHTTP = ObjCreate("winhttp.winhttprequest.5.1")
$oHTTP.Open("GET", $sUrl, False)
$oHTTP.Send()
If $oHTTP.Status = 200 Then
   $sReceived = $oHTTP.ResponseText

; on a par exemple ceci dans le code html :
; <a href="/antonioginer/GroovyMAME/releases/download/gm0247sr002l/groovymame_0247.002l_win-7-8-10.7z"
; le résultat de la recherche avec comme chaine de carateres entre href="   et   .7z
;donne par exemple :  /antonioginer/GroovyMAME/releases/download/gm0247sr002l/groovymame_0247.002l_win-7-8-10.7z
$resultats = StringRegExp($sReceived,'href="(.+?\.7z)', 1)
; le resultat est sous forme d'un tableau dont la premiere ligne est numéro zéro
;_ArrayDisplay($resultats, "resultats de l'url de download contenant .7z")


; on réassemble donc le lien complet
$lien="https://github.com"& $resultats[0]
; ca donne donc le lien complet https://github.com/antonioginer/GroovyMAME/releases/download/gm0247sr002l/groovymame_0247.002l_win-7-8-10.7z

;si on veut calculer la taille du fichier :
;msgbox(0,"TAILLE",round( InetGetSize ($lien)/1000000,1) & " Mo")

;on va faire afficher la version dans la partie graphique du programme
GuiCtrlSetData($Label5,"Actuellement" & @CRLF & $version)


; ecriture des données dans un fichier tmp
; on recuperera ces données apres : la version et l'adresse complete
; ca fera un fichier temp :
;ligne 1	POUR CATVER:
;ligne 2	CatVer_247
;ligne 3	https://www.progettosnaps.net/download/?tipo=catver&file=pS_CatVer_247.zip
;ligne 4	POUR ARCADE64:
;ligne 5	arcade64_247
;ligne 6	http://arcade.mameworld.info/arcade247.7z
;ligne 7	POUR GROOVYMAME:
;ligne 8	GroovyMAME 0.247 - Switchres 2.002l
;ligne 9	https://github.com/antonioginer/GroovyMAME/releases/download/gm0247sr002l/groovymame_0247.002l_win-7-8-10.7z


   Local Const $sFilePath =  @ScriptDir & "\broukmiken.tmp"
       If Not FileWrite($sFilePath,"POUR GROOVYMAME:"& @CRLF &  $version & @CRLF & $lien& @CRLF ) Then
        MsgBox($MB_SYSTEMMODAL, "", "Une erreur est survenue lors de l'écriture dans le fichier temporaire.")
        Return False
    EndIf

    ; Ouvre le fichier en lecture et stocke le handle dans une variable.
    Local $hFileOpen = FileOpen($sFilePath, $FO_READ)
    If $hFileOpen = -1 Then
        MsgBox($MB_SYSTEMMODAL, "", "Une erreur est survenue pendant la lecture du fichier.")
        Return False
    EndIf

EndIf
EndFunc

func Mamedev()

HttpSetUserAgent("Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:87.0) Gecko/20100101 Firefox/87.0")

$Label12 = GUICtrlCreateLabel("Pas de connexion...",  64, 206, 90, 63)


$sUrl = "https://www.mamedev.org/release.php"

$oHTTP = ObjCreate("winhttp.winhttprequest.5.1")
$oHTTP.Open("GET", $sUrl, False)
$oHTTP.Send()
If $oHTTP.Status = 200 Then
   $sReceived = $oHTTP.ResponseText

$resultats = StringRegExp($sReceived, 'href="(.+?\_64bit.exe)', 1)
;msgbox(0,"pour mamedev $resultats",$resultats[0])
$version = StringRegExp($sReceived, 'The latest official MAME release is version (.+?). The table below provides links to the source code', 1)
;msgbox(0,"pour mamedev $version",$version[0])

;$lien= StringRegExp($sReceived, 'href="
;_ArrayDisplay($resultats, "resultats")
;_ArrayDisplay($version, "version")
$version=($version[0]) ; on enleve l'espace qu'il y a avant et apres le resultat initial


$lien=$resultats[0]

;msgbox(0,"TAILLE",round( InetGetSize ($lien)/1000000,1) & " Mo")

GuiCtrlSetData($Label12,"Actuellement" & @CRLF &"Mame "& $version)


; ecriture des données dans un fichier tmp
   Local Const $sFilePath =  @ScriptDir & "\broukmiken.tmp"
       If Not FileWrite($sFilePath,"POUR MAMEDEV:"& @CRLF &  $version & @CRLF & $lien& @CRLF ) Then
        MsgBox($MB_SYSTEMMODAL, "", "Une erreur est survenue lors de l'écriture dans le fichier temporaire.")
        Return False
    EndIf

    ; Ouvre le fichier en lecture et stocke le handle dans une variable.
    Local $hFileOpen = FileOpen($sFilePath, $FO_READ)
    If $hFileOpen = -1 Then
        MsgBox($MB_SYSTEMMODAL, "", "Une erreur est survenue pendant la lecture du fichier.")
        Return False
    EndIf

EndIf


EndFunc

func supptemp()
	Local  $temporaire =  @ScriptDir & "\broukmiken.tmp"
								if FileExists ($temporaire) then
										FileDelete($temporaire)
										Else

								EndIf

EndFunc

func demande_licence()

							if FileExists(@scriptdir&"\demande_licence.brk") Then
						FileDelete (@scriptdir&"\demande_licence.brk")
						FileWrite(@scriptdir&"\demande_licence.brk","Bonjour,je souhaite acquérir une licence"&@crlf&"pour mon PC"&@crlf&GetProcessorId())
						Else
						FileWrite(@scriptdir&"\demande_licence.brk","Bonjour,je souhaite acquérir une licence"&@crlf&"pour mon PC"&@crlf&GetProcessorId())
							EndIf
EndFunc



Func _WM_COMMAND($hWnd, $iMsg, $wParam, $lParam)
	;cette fonction permet d'adapter la longueur de la zone de saisie $user en fonction du nombre de caracteres entrés
	;car sinon si la zone de saisie a une taille définie, les caracteres sont limités en nombre par rapport à cette taille


If StringLen(GUICtrlRead($CODE)) =4 Then
GUICtrlSetData($code,(GUICtrlRead($code)&"-"))
sleep(500)
ElseIf StringLen(GUICtrlRead($code)) =9 Then
GUICtrlSetData($code,(GUICtrlRead($code)&"-"))
sleep(500)
ElseIf StringLen(GUICtrlRead($code)) =14 Then
GUICtrlSetData($code,(GUICtrlRead($code)&"-"))
sleep(500)
ElseIf StringLen(GUICtrlRead($CODE)) =19 Then
GUICtrlSetState($REGISTER,$GUI_ENABLE)

Elseif StringLen(GUICtrlRead($CODE)) >19 Then
GUICtrlSetColor($code,$COLOR_RED)
GUICtrlSetData($code,"19 CARACTERES max")
sleep(1500)
GUICtrlSetColor($code,Default)
GUICtrlSetData($CODE,"")
GUICtrlSetState($REGISTER,$GUI_DISABLE)

EndIf




	Local $iIDFrom = BitAND($wParam, 0xFFFF);LoWord

	Local $iCode = BitShift($wParam, 16) ;HiWord
    If $iIDFrom = $user And $iCode = $EN_CHANGE Then


        $aSize = _StringSize(GUICtrlRead($user))
		;GUICtrlSetPos($user, 420,210, $aSize[2] +80)

		if StringLen(GUICtrlRead($user))>12 then ; ici on vérifie le nombre de caracteres entrés
			GUICtrlSetColor($code,$COLOR_RED)
			GUICtrlSetData($USER,"12 car max"); ca met dans la zone de saisie le message qu'il y a trop de caracteres
			sleep(1500)
			GUICtrlSetColor($code,Default)
			;GUICtrlSetPos($user, 420,210, 80)

			GUICtrlSetData($USER,"") ; ca vide la zone de saisie


		Else

		EndIf

    EndIf

EndFunc   ;==>_WM_COMMAND

;=======================================================================================

Func Controleducode($CODE) ;cette partie controle la saisie des mots de passe
;Func Controleducode($USER,$CODE)  ; ca c'est si on veut un controle du nom et du mot de passe

;~     If $CODE = "1234" Then
;~ 	;If $USER = "test" And $CODE = "test" Then   ; ca c'est si on veut un controle du nom et du mot de passe
;~ 			;msgbox(0,"BINGO","bon code, on supprime le fichier trial")
;~ 			$fichiertrial =  @ScriptDir & "\trial.brk"
;~ 			if FileExists ($fichiertrial) then
;~ 			FileDelete($fichiertrial)
;~ 			endif
;~ 		Return 1

;~ 		Else
;~         Return 0

;~ 	EndIf
;pour avoir le numero du processeur
$droite= stringright(GetProcessorId(),2)
$gauche= stringleft(GetProcessorId(),2)
$extremes=$gauche&$droite




; le code applique le calcul sur le chiffre 4 (nombre de lignes) sur la 1ere série de 4 chiffres et sur la 3eme série de 4 chiffres
$check = (StringSplit($code, "-" ))
$err = 1


For $i=0 to 2 step 1
If $check[$i] = "0000" Then $err = 0
Next


If $err = 1 Then
		Dim $c1,$c2,$c3
		$c1=cos($check[0])
		$c2=sin($check[1])
		$c3=cos($check[3])
		$A=$c1+$c2+$c3
				while $A>1
				$A=$A-1
				wend
				while $A<0
				$A=$A+1
				wend
				$A=round($A,4)
				$B=$A*10000
				$check[2] = Int($check[2])
				$b = Int($b)
				;MsgBox(0,'reponse calcul',$B)
    if $B=$check[2] And $check[4]=$extremes then
						$fichiertrial =  @ScriptDir & "\trial.brk"
						if FileExists ($fichiertrial) then
						FileDelete($fichiertrial)
						Endif
						If FileExists(@scriptdir&"\demande_licence.brk") Then
						FileDelete(@scriptdir&"\demande_licence.brk")
						Endif
        return(1)
    Else
        return(0)
    EndIf
EndIf


EndFunc

;=======================================================================================

Func _GetVersion() ;pour afficher le numero de la version compilée dans la barre du prog
    If @Compiled Then
			Return FileGetVersion(@AutoItExe) ; ca veut dire de retourner la valeur du numero de version (ne pas tenir compte du @autoitexe) qui s'execute
		Else
			Return IniRead(@ScriptFullPath, "FileVersion", "#AutoIt3Wrapper_Res_Fileversion", "pas compilé donc  v 0.0.0.0")
			; tant que le script n'est pas compilé (on l'execute depuis le fichier .au3) on ne peut pas recuperer la valeur

	EndIf
EndFunc

;=======================================================================================

Func trial() ; cette fonction ne s'execute qu'1 fois au démarrage du programme
;lignes 292 à 300 on a crée le fichier trial.brk contenant la date et l'heure du 1er lancement du programme



$nblignes =_FileCountLines(@scriptdir&"\trial.brk")
_FileWritetoline(@scriptdir&"\trial.brk",$nblignes+1,_NowCalc(),True,True)




if $nblignes =3 Then
	$difference= 0 	;puisque c'est le 1er lancement
	;msgbox(0,"1erlancement","$difference =0 car 1er lancement "& $difference)
Else


  $premierlancement=FileReadLine(@scriptdir&"\trial.brk",2) ; la date du 1er lancement c'est la ligne 2 ou 4
  $lancementactuel=FileReadLine(@scriptdir&"\trial.brk",$nblignes+1)
  $lancementprecedent=FileReadLine(@scriptdir&"\trial.brk",$nblignes)

  $differencedernier=_DateDiff("s",$lancementprecedent,$lancementactuel)
  $differencetotal=_DateDiff("s",$premierlancement, $lancementactuel)

;~   msgbox(0,"test calcul diff temps","temps écoulé depuis le precedent lancement: "&@crlf& "et celui-ci: "&  $lancementactuel &@crlf& _
;~   "date du precedent lancement "&$lancementprecedent&@crlf& _
;~   "RESULTAT: "& $differencedernier &@crlf&@crlf& _
;~   "temps écoulé depuis le 1er lancement: "&@crlf& _
;~   "date du 1er lancement: "&$premierlancement&@crlf& _
;~   "date du lancement actuel: "& $lancementactuel &@crlf& _
;~    "RESULTAT: "& $differencetotal)

			if  $differencedernier <=0 OR $differencetotal <=0	Then
				msgbox($MB_ICONERROR,"ERREUR 4", "le programme a détecté une modification de la date..." &@crlf& _
				"PETIT MALIN"&@crlf&@crlf&"=>Merci de vous enregistrer<="&@crlf&@crlf&"en communicant ce code: "&@crlf&GetProcessorId())
				_FileWritetoline(@scriptdir&"\trial.brk",$nblignes+1,"*****TRUANDAGE DE LA DATE*****",True,True)
				call ("supptemp")
			Exit

			EndIf



EndIf




; !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
;pour regler le temps de la version trial il y a 2 endroits  :
;ici où la lettre et le chiffre qui suit correspondent à
;h c'est heures et le chiffre c'est le nombre d'heures
; voir https://www.autoitscript.com/autoit3/docs/libfunctions/_DateAdd.htm
; D - Add/subtract days to/from the specified date
; M - Add/subtract months to/from the specified date
; Y - Add/subtract years to/from the specified date
; w - Add/subtract Weeks to/from the specified date
; h - Add/subtract hours to/from the specified date
; n - Add/subtract minutes to/from the specified date
; s - Add/subtract seconds to/from the specified date

;ET IL Y A AUSSI AU NIVEAU DE LA FONCTION UPDATETIME (un peu plus bas)



Local $debuttrial,$fintrial,$tempsrestant,$datefintrial,$timefintrial,$finversiondate,$finversiontime,$tempstotaltrial

AdlibRegister("updateTime",60000)
; permet de créer la boucle dans laquelle le temps de trial restant est remis à jour toutes les xxx millisecondes
;(il vaut mieux mettre un temps long style 10s etc. sinon le programme est tres ralenti car ca demande un assez gros controle : voir les instructions lancées avec la fonction updatetime)
;si le fichier licence est trouvé



;pour le calcul du trial :
$debuttrial=FileReadline(@scriptdir&"\trial.brk",2) ;on lit les infos du fichier trial




$fintrial = _DateAdd('h',1,$debuttrial) ; on choisi au bout de combien de temps le trial s'arretera 'n' c'est minutes on a aussi heures ((h) jours,mois secondes etc.
;$fintrial est affiché en année/mois/jour heures:minutes:secondes
;_dateAdd ne peut faire un calcul que sur des dates formatées comme cà: AAAA/MM/JJ HH:MM:SS


;dateadd peut faire addition ou soustraction de temps mais formaté ainsi: année/mois/jour|espace|heures:minutes:secondes
;on ne peut choisir q'une unité à ajouter ou soustraire, donc si on veut faire 2 jours et 5h il faut mettre "n" et calculer en heures au total

$tempsrestant=_DateDiff("s",_nowcalc(),$fintrial) ; ca indique le temps restant ,si "n" ca sera en minutes  si "s" ce sera un calcul en secondes
;c'est important de mettre en secondes car la fonction appelée plus bas (formatagetemps) permet de convertir les secondes en jours, mois,années etc.
;_datediff ne peut faire un calcul que sur des dates formatées comme cà: AAAA/MM/JJ HH:MM:SS
;LE TEMPS RESTANT c'est LA DIFFERENCE POSITIVE ENTRE LE MOMENT ACTUEL défini par _nowcalc() qui s'exprime en année/mois/jour heures:mn:s  ET $fintrial exprimé de la meme façon
;datediff ne peut faire le calcul qu'avec le meme formatage pour les 2 valeurs
;msgbox(0,"$tempsrestant",$tempsrestant)

$tempstotaltrial=_datediff("s",$debuttrial,$fintrial) ; ici c'est pour faire un dégradé de couleur en fonction de la proprortion d'avancée du temps : reste 1/3 reste 1/2 etc.
;temps total de trial c'est la différence en secondes entre [date de creation + temps de trial] - [date de création]
;_datediff ne peut faire un calcul que sur des dates formatées comme cà: AAAA/MM/JJ HH:MM:SS
;msgbox(0,"$tempstotaltrial INITIAL fixe",$tempstotaltrial)

$tauxtrialrestant=round ((1/($tempstotaltrial/$tempsrestant))*100,-1)
$tauxtrialconsomme=100-$tauxtrialrestant



_DateTimeSplit($fintrial,$datefintrial,$timefintrial)
			; ca coupe $fintrial (qui DOIT OBLIGATOIREMENT ETRE SOUS FORME année/mois/jour heures:min:sec) => en 2 données :
			;$datefintrial pour année/mois/jour  : $datefintrial[1] ca sera l'année $datefintrial[2] ce sera le mois $datefintrial[3] ce sera le jour
			;$timefintrial pour heures:minutes:secondes  : $timefintrial[1] ce sera les heures $timefintrial[2] ce sera les minutes et $timefintrial[3] ce sera les secondes


			$finversiontime=$timefintrial[1]&"h "&$timefintrial[2]&"mn" ; ca formate l'heure de cette façon : XXheures XXmn
$finversiondate=$datefintrial[3]&"/"&$datefintrial[2]&"/"&StringRight($datefintrial[1],2)
			; ca ordonne (écrit,agence) la date comme on veut année/mois/jour ou autre stringright 2 garde les 2 caracteres de la chaines les plus à droite, donc on ne garde que "19" de 2019


if $tempsrestant >0 then
;msgbox(0,"temps restant ici",$tempsrestant)

msgbox($MB_ICONINFORMATION,"INFO 1 :Version d'essai","fin de la période d'essai le:"&@crlf& $finversiondate&" à "&$finversiontime& @crlf&@crlf& _
			"Il reste :"&_Formatagetempsrestant($tempsrestant)&@crlf& _
			"=>Merci de vous enregistrer<="&@crlf&@crlf&"en communicant ce code: "&@crlf&GetProcessorId())			;$fintrial est affiché en année,mois,jour heures:minutes:secondes
call ("demande_licence")
call("updatetime")

;en dessous c'est mon code d'origine mais quand on relancait l'appli, il fallait les 60 secondes réglées par le adlibregister avant que ca s'actualise
#CS
			$Labelunregistered = GUICtrlCreateLabel("Essai jusqu'au "&@crlf&$finversiondate&" "&$finversiontime&@crlf&"Reste "& _Formatagetempsrestant($tempsrestant), 405, 160, 152, 45)
			GUICtrlSetColor($Labelunregistered,0x445561) ; on choisi la couleur à partir du site https://www.htmlcsscolor.com/hex/FF0000 et on remplace #par 0x
			GUICtrlSetBkColor($Labelunregistered,0x7BF274)
#CE





Else
	msgbox($MB_ICONERROR,"INFO 2: FIN","Version expirée !!"&@crlf&"Depuis "&_Formatagetempsrestant(-$tempsrestant)&@crlf&@crlf&"=>Merci de vous enregistrer<="&@crlf&@crlf&"en communicant ce code: "&@crlf&GetProcessorId())
						call ("demande_licence")
						call ("supptemp")
	Exit ; avec exit le programme s'arretera
Endif
Endfunc

;=======================================================================================

Func updateTime()

;cette fonction s'execute sans arret toutes les xxx secondes (défini plus haut avec AdlibRegister("updateTime",60000) dans la fonction trial)
;elle calcul combien de temps il reste
;pour rappel cette fonction trial n'est lancée que si au démarrage du programme la licence n'est pas trouvée
;si la licence est trouvée la fonction trial n'est pas lancée, donc pas de fonction updatetime non plus lancée
;si on s'enregistre au cours du programme, donc la fonction trial était lancée, donc updatetime aussi mais dans la fonction de controle de l'enregistrement nom et mot de passe
;si la vérification est bonne, alors updatetime est arretée par AdlibunRegister("updateTime")


Local $debuttrial,$fintrial,$tempsrestant,$datefintrial,$timefintrial,$finversiondate,$finversiontime,$tempstotaltrial

$debuttrial=FileReadline(@scriptdir&"\trial.brk",2)
$fintrial = _DateAdd('h', 1,$debuttrial) ; on choisi au bout de combien de temps le trial s'arretera 'n' c'est minutes on a aussi jours,mois secondes etc.
;$fintrial est affiché en année/mois/jour heures:minutes:secondes
;_dateAdd ne peut faire un calcul que sur des dates formatées comme cà: AAAA/MM/JJ HH:MM:SS

$tempsrestant=_DateDiff("s",_nowcalc(),$fintrial) ; ca indique le temps restant ,si "n" ca sera en minutes  si "s" ce sera un calcul en secondes
;c'est important de mettre en secondes car la fonction appelée plus bas (formatagetemps) permet de convertir les secondes en jours, mois,années etc.
;_datediff ne peut faire un calcul que sur des dates formatées comme cà: AAAA/MM/JJ HH:MM:SS
;LE TEMPS RESTANT c'est LA DIFFERENCE POSITIVE ENTRE LE MOMENT ACTUEL défini par _nowcalc() qui s'exprime en année/mois/jour heures:mn:s  ET $fintrial exprimé de la meme façon
;datediff ne peut faire le calcul qu'avec le meme formatage pour les 2 valeurs
;msgbox(0,"$tempsrestant",$tempsrestant)
$tempstotaltrial=_datediff("s",$debuttrial,$fintrial) ; ici c'est pour faire un dégradé de couleur en fonction de la proprortion d'avancée du temps : reste 1/3 reste 1/2 etc.
;temps total de trial c'est la différence en secondes entre [date de creation + temps de trial] - [date de création]
;_datediff ne peut faire un calcul que sur des dates formatées comme cà: AAAA/MM/JJ HH:MM:SS
;msgbox(0,"$tempstotaltrial",$tempstotaltrial)

;$tauxtrialrestant=round ((1/($tempstotaltrial/$tempsrestant))*100,-1)


$tauxtrialrestant=   ( 1/($tempstotaltrial/$tempsrestant))*100
$tauxtrialrestantarrondi= round(( 1/($tempstotaltrial/$tempsrestant))*100 ,-1)
;msgbox(0,"$tauxtrialrestant",$tauxtrialrestant)
$tauxtrialconsomme=100-$tauxtrialrestant


_DateTimeSplit($fintrial,$datefintrial,$timefintrial) ; ca coupe $tempsrestant qui est sous forme année/mois/jour heures:min:sec en 2 données : $date pour année/mois/jour  : $date[1] ca sera l'année
$finversiondate=$datefintrial[3]&"/"&$datefintrial[2]&"/"&StringRight($datefintrial[1],2) ; ca formate la date comme on veut année/mois/jour ou autre stringright 2 garde juste 19 de 2019
$finversiontime=$timefintrial[1]&"h "&$timefintrial[2]&"mn" ; ca formate comme on veut l'heure


		If $tauxtrialrestant >=77 then ; s'affiche en vert
				GUICtrlSetData($Labelunregistered,"Essai jusqu'au "&@crlf&$finversiondate&"  "&$finversiontime&@crlf&"Reste "& _Formatagetempsrestant($tempsrestant))
				GUICtrlSetColor($Labelunregistered,0x445561) ; on choisi la couleur du texte à partir du site https://www.htmlcsscolor.com/hex/FF0000 et on remplace #par 0x
				GUICtrlSetBkColor($Labelunregistered,0x7BF274) ; on choisi la couleur du fond à partir du site https://www.htmlcsscolor.com/hex/FF0000 et on remplace #par 0x

				GUICtrlSetData($barreprogressiontrialpourcentage," "&$tauxtrialrestantarrondi&"% temps restant")
				GUICtrlSetPos($barreprogressiontrialcurseur,$left+1,$top+1,$width*$tauxtrialrestantarrondi/100)
				GUICtrlSetBkColor($barreprogressiontrialcurseur,0x7BF274)

		ElseIf $tauxtrialrestant <=77 and $tauxtrialrestant >=33 then ; s'affiche en orange
				GUICtrlSetData($Labelunregistered,"Essai jusqu'au "&@crlf&$finversiondate&"  "&$finversiontime&@crlf&"Reste "& _Formatagetempsrestant($tempsrestant))
				GUICtrlSetColor($Labelunregistered,0x000000) ; on choisi la couleur du texte à partir du site https://www.htmlcsscolor.com/hex/FF0000 et on remplace #par 0x
				GUICtrlSetBkColor($Labelunregistered,0xF29029) ; on choisi la couleur du fond à partir du site https://www.htmlcsscolor.com/hex/FF0000 et on remplace #par 0x

				GUICtrlSetData($barreprogressiontrialpourcentage," "&$tauxtrialrestantarrondi&"% temps restant")
				GUICtrlSetPos($barreprogressiontrialcurseur,$left+1,$top+1,$width*$tauxtrialrestantarrondi/100)
				GUICtrlSetBkColor($barreprogressiontrialcurseur,0xF29029)


		ElseIf $tauxtrialrestant <=32 and $tauxtrialrestant >0 then;s'affiche en rouge
				GUICtrlSetData($Labelunregistered,"Essai jusqu'au "&@crlf&$finversiondate&"  "&$finversiontime&@crlf&"Reste "& _Formatagetempsrestant($tempsrestant))
				GUICtrlSetColor($Labelunregistered,0x000000) ; on choisi la couleur du texte à partir du site https://www.htmlcsscolor.com/hex/FF0000 et on remplace #par 0x
				GUICtrlSetBkColor($Labelunregistered,0xFF0000) ; on choisi la couleur du fond à partir du site https://www.htmlcsscolor.com/hex/FF0000 et on remplace #par 0x

				GUICtrlSetData($barreprogressiontrialpourcentage," "&$tauxtrialrestantarrondi&"% temps restant")
				GUICtrlSetPos($barreprogressiontrialcurseur,$left+1,$top+1,$width*$tauxtrialrestantarrondi/100)
				GUICtrlSetBkColor($barreprogressiontrialcurseur,0xFF0000)



		 ElseIf $tauxtrialrestant <=0 Then

		 msgbox($MB_ICONERROR,"FIN","Version expirée !!"&@crlf&"Depuis "&_Formatagetempsrestant(-$tempsrestant)&@crlf&@crlf&"=>Merci de vous enregistrer<="&@crlf&@crlf&"en communicant ce code: "&@crlf&GetProcessorId())
						call ("demande_licence")
						call ("supptemp")
		 Exit ; avec exit le programme s'arretera

		EndIf

EndFunc

;=======================================================================================
Func _Formatagetempsrestant($sec)

   ;msgbox(0,"funcformatagetempsrestant",$sec)
	; converti les secondes en date lisible année/mois/jour heures:minutes:secondes
	; $sec c'est la variable qui lui sera apportée lorsqu'on appellera la fonction exterieurement ainsi _formatagetempsrestant($valeur-à-convertir)
	;; $sec tout au long du calcul sera remplacée par la valeur introduite exterieurement
	; mais si on veut convertir un temps, on doit appeler la fonction ainsi _Formatagetempsrestant($chaine-en-millisecondes-a-convertir)
;cette fonction converti le temps exprim" en un total de secondes, EN jour,Heures et minutes et secondes (on peut choisir)
 Local  $day, $hh, $mm, $ss
    _TicksToTime($sec * 1000, $hh, $mm, $ss)

;~ 	If $hh > 23 Then
;~        $day = ($hh/23 )
;~        $hh = Mod($hh, 24)

    If $hh> 24 Then
        $day = Int($hh / 24)
        $hh = $hh - ($day * 24)
	EndIf

	if $hh >=24 then
	$day= $day+1
	$hh = $hh - 24
	EndIf


	Return StringFormat("%02dj %02dh %02dmn", $day, $hh, $mm) ; ca n'affichera que les jours,heures et minutes
    ;Return StringFormat("%02djours %02dheures %02dminutes %02dsecondes", $day, $hh, $mm, $ss) ; on change PAS %02d mais le reste à coté oui

EndFunc


;=======================================================================================
;=======================================================================================
;=======================================================================================
;=======================================================================================
;						LES FONCTIONS DES BOUTONS
;=======================================================================================
;=======================================================================================
;=======================================================================================
;=======================================================================================



Func fonction1()  ; pour bouton 1 : télécharger le fichier catégorie en zip de progettosnaps.net

HttpSetUserAgent("Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:87.0) Gecko/20100101 Firefox/87.0")


$versionini=FileReadLine(@ScriptDir & "\broukmiken.tmp", 2)
$adressecomplete=FileReadLine(@ScriptDir & "\broukmiken.tmp", 3)

;test pour demander le repertoire de sortie

Local $choixrepertoire = FileSelectFolder("Choix du repertoire de sauvegarde :", @WorkingDir)
    If @error Then
        ; Display the error message.
        MsgBox($MB_ICONWARNING, "Aucun dossier de sauvegarde choisi...", "les catégories ne seront pas téléchargées",3)
		Return

    Endif
$path = $choixrepertoire & "\" &  $versionini & "\"
; fin du test pour demander le repertoire de sortie


		 DirCreate ($path)

		 FileWrite($path &"\" &$versionini&"_source.txt","url source : https://www.progettosnaps.net/catver" & @crlf & _
		 "lien : " & $adressecomplete & @crlf & @crlf & "Généré automatiquement via MameTools by Broukmiken le " & _
		 _DateTimeFormat(_NowCalc(), 2)& " à " & _DateTimeFormat(_NowCalc(), 5) ) ; crée un fichier texte en écrivant la source du téléchargement


$lien=$adressecomplete







Func_PS($lien, $versionini,$path)

EndFunc

	 Func Func_PS($lien, $versionini, $path)


	;MsgBox($MB_SYSTEMMODAL,"URL & path & versionini","url: " & $lien& @CRLF &  @CRLF & "path: "  &@CRLF & $path & @crlf &" versionini: " & $versionini)

Local $size = InetGetSize ($lien)
Local $file = InetGet ( $lien, $path &$versionini & ".zip" ,1,1  )


;barre de progression
;pour éviter que ca clignote il faut mettre le progresson avant la boucle et un petit sleep

ProgressOn($versionini, "Téléchargement en cours")

Do

local $downloaded = InetGetInfo($file, $INET_DOWNLOADREAD) ; en bytes et arrondi $INET_DOWNLOADREAD (0) - Octets lus jusqu'à présent (mis à jour durant la progression du téléchargement).
 $pourcentage = Round(InetGetInfo($file, $INET_DOWNLOADREAD)*100/$size)
 	;ProgressSet($pourcentage, $pourcentage & " %")
	ProgressSet($pourcentage, $pourcentage & " %"&@crlf&round($downloaded/1000,-1)&" Mo téléchargés sur "&round($size/1000)&" Ko")
sleep(250)

 Until InetGetInfo($file, $INET_DOWNLOADCOMPLETE)

 ProgressSet(100, "COMPLET!")
 Sleep(2500)
  ProgressOff()
Msgbox($MB_ICONINFORMATION,"Succès","opération réussie"&@crlf&"téléchargement disponible ici :"&@crlf&$path,3)
InetClose ( $file )

EndFunc

;=======================================================================================

Func fonction2($fichierini) ; pour bouton 2 : trier les catégories depuis le catégorie global OK



;POUR MAMEUI INI Files :il faut ouvrir le fichier category.ini et ca va creer un repertoire "filtres" dans le repertoire ou se trouve le fichier de categories
;POUR progettosnaps il faut ouvrir le fichier genre.ini

If $fichierini="" Then
				$Fichierini= FileOpenDialog("Sélectionnez le fichier ini ou txt contenant les catégories", @ScriptDir & "\", "ini ou txt (*.ini;*.txt)", $FD_FILEMUSTEXIST)
					If @error Then
						MsgBox($MB_ICONWARNING, "Aucun fichier choisi...","Fin de cette fonction",3)
						$fichierini=""
						Return
					EndIf

ElseIf Not @error Then ; then on va jusqu'au endif et on continue

EndIf


$txt = FileRead($Fichierini) & @crlf

$nom=StringRegExpReplace($fichierini, "^.*\\|\..*$", "")

;test pour demander le repertoire de sortie

$fichierinipath=StringRegExpReplace($fichierini, "(^.*\\)(.*)", "\1") ; on propose d'enregistrer le fichier non pas dans son propre dossier mais à un niveau au dessus
;cette opération stringregexpreplace enleve en fait le dernier "\" pour creer le path

Local $choixrepertoire = FileSelectFolder("Choix du repertoire de sauvegarde ",$fichierinipath)
    If @error Then
        ; Display the error message.
        MsgBox($MB_ICONWARNING, "Aucun dossier de sauvegarde choisi...","Fin de cette fonction",3)
		$fichierini=""
		$choixrepertoire=""
		Return

    Endif
; fin du test pour demander le repertoire de sortie


$dossier = DirCreate($choixrepertoire & "\" &"filtres-"&$nom)



$res = StringRegExp($txt, '(?msx) (^\s*\[ ([^\]\r\n]*) \]\h*\R) (.*?)(?=(?1)|\z)', 3)


If IsArray($res) Then
    ;_ArrayDisplay($res)
   For $i = 1 to UBound($res)-2 step 3
       $split = StringSplit(StringStripWS($res[$i], 8), "/")

       If $split[0] = 1 Then

		DirCreate ($choixrepertoire & "\" &"filtres-"&$nom &"\" & $res[$i])
		; FileWrite("filtres-"&$nom &"\" & $res[$i] &"\" & $res[$i] & ".txt", $res[$i+1])
		 FileWrite($choixrepertoire & "\" &"filtres-"&$nom &"\" & $res[$i] &"\" & $res[$i] & ".txt", _AddZip($res[$i+1]))
          ContinueLoop

       Else
          $dir = $choixrepertoire & "\" &"filtres-"&$nom &"\" & $split[1]
          If not FileExists($dir) Then DirCreate($dir)
         ; FileWrite($dir & "\" & $split[2] & ".txt", $res[$i+1])
		 FileWrite($dir & "\" & $split[2] & ".txt", _AddZip($res[$i+1]))
       EndIf
   Next
EndIf
Msgbox($MB_ICONINFORMATION,"Succès","opération réussie",3)
$fichierini=""


EndFunc

Func _AddZip($s) ; est associée à la fonction 2 pour trier les catégories une par une OK
    Return StringRegExpReplace($s, '(\S)(?=\h*\r)', "$1.zip")
	EndFunc

;=======================================================================================

Func fonction3($fichierini) ;pour bouton 3 Lister le contenu d'un dossier OK


If $fichierini="" Then
				$fichierini = FileSelectFolder("Lister le contenu du dossier :", @ScriptDir)
					If @error Then
						MsgBox($MB_ICONWARNING, "Aucun dossier n'a été choisi...", "Fin de cette fonction",3)
						Return
					EndIf

ElseIf Not @error Then ; then on va jusqu'au endif et on continue

EndIf


Local $nomdurepertoire= StringRegExpReplace($fichierini, "^.*\\", "") ; pour garder le nom du dossier


		fonction_suite($nomdurepertoire,$fichierini) ; on passe ces 2 variables à la fonction suivante


EndFunc

Func fonction_suite($nomdurepertoire,$fichierini)

	If $nomdurepertoire="" then
			MsgBox($MB_ICONWARNING, "Aucun dossier ??? sélectionné", "Fin de cette fonction",3)
			$fichierini=""
			Return
		Else
Endif

$search = FileFindFirstFile($fichierini& "\*.*")
$txt = ""
While 1
 $file = FileFindNextFile($search)
    If @error Then ExitLoop
 ;$txt &= $file & @CRLF
 $txt &= $file & "|"

 ; ca sort une chaine de ce type :  nom|nom1|nom2|



WEnd
FileClose($search)


;par ordre alpha

$txtmod=StringSplit($txt,"|",2)
 ;TRES IMPORTANT POUR STRINGSPLIT : il retourne le nombre d'éléments dans le tableau, alors :
 ; $STR_NOCOUNT (2) = désactive le comptage du nombre d'éléments du tableau dans l'élément [0] -
 ;le tableau retourné devient alors de base 0 (vous devrez utiliser UBound()
; pour obtenir la taille du tableau dans ce cas).

_ArraySort($txtmod) ; pas besoin de déclarer le tableau, $txtmod devient un tableau


for $i = UBound($txtmod) -1 to 0 step -1 ; pour enlever les lignes vides
	if $txtmod[$i]="" then
		_ArrayDelete($txtmod,$i)
	EndIf
Next



$txtalpha=_ArrayToString($txtmod, @crlf, Default, Default, @CRLF)




; ========== partie pour creer le fichier text final =========================

$sFileSelectFoldermod=StringRegExpReplace($fichierini, "(^.*\\)(.*)", "\1") ; on propose d'enregistrer le fichier non pas dans son propre dossier mais à un niveau au dessus
;cette opération stringregexpreplace enleve en fait le dernier "\" pour creer le path

;FileWrite("liste.txt", $txt)
$sFile = FileSaveDialog("Enregistrer sous...", $sFileSelectFoldermod, "Text Files (*.txt)", 18, "Listing_"& $nomdurepertoire)
If @error Then
	MsgBox($MB_ICONWARNING, "Aucun dossier de sauvegarde n'a été sélectionné.", "Fin de cette fonction",3)
	$fichierini=""
	Return

	;Exit si code seul mais pas mettre dans GUI sinon ca ferme la GUI
Endif






FileWrite($sFile, $txtalpha)
Msgbox($MB_ICONINFORMATION,"Succès","opération réussie",3)

$fichierini=""


	EndFunc


Func fonction4() ; retirer depuis une liste, des fichiers depuis une ou plusieurs listes d'exclusion(Avec suppression lignes vides + tri alphabetique) OK


Local $sFodFILE, $aFodFILE, $sFodFILTRES, $aFodFILTRES, $sFilter

; Sélection du fichier à filtrer.
$sFodFILE = FileOpenDialog("Sélectionnez le fichier à filtrer", @ScriptDir & "\", "txt ou ini (*.txt;*.ini)", $FD_FILEMUSTEXIST)
If @error Then
	MsgBox($MB_ICONWARNING, "Aucun fichier sélectionné","Fin de cette fonction",3)
	Return
	;Exit si code seul mais pas mettre dans GUI sinon ca ferme la GUI
EndIf
; Transformation du résultat en tableau.
$aFodFILE = FileReadToArray($sFodFILE)

; mon test ici
;***************************************************************************************************************************
;_ArrayDisplay ($aFodFILE,"tableau fichier working juste avec filereadtoarray") ;<=== ca sort un tableau avec ligne par ligne le contenu c'est de row0 jusqu'au bout
Local $iRowscomplet = UBound($aFodFILE, $UBOUND_ROWS) ; compte les lignes du fichier a épurer
;MsgBox($MB_SYSTEMMODAL, "Nombre de fichiers a filtrer", "Il y a "& @CRLF & @CRLF &  UBound($aFodFILE)  & " fichiers à trier")
;MsgBox($MB_SYSTEMMODAL, "Nombre de fichiers a filtrer", "Il y a "& @CRLF & @CRLF &  UBound($aFodFILE, $UBOUND_ROWS)  & " fichiers à trier")
;fin de mon test
;***************************************************************************************************************************


; Sélection du/des fichiers de filtrage.
$sFodFILTRES = FileOpenDialog("Sélectionnez un ou plusieurs fichiers de filtrage", @ScriptDir & "\","txt ou ini (*.txt;*.ini)", $FD_FILEMUSTEXIST + $FD_MULTISELECT)
If @error Then
	MsgBox($MB_ICONWARNING, "Aucun fichier sélectionné","Fin de cette fonction",3)
	Return

	;Exit si code seul mais pas mettre dans GUI sinon ca ferme la GUI
EndIf
; Transformation du résultat en tableau. on passe dans un tableau le path du fichier de filtre
$aFodFILTRES = StringSplit($sFodFILTRES, "|")
;_ArrayDisplay($aFodFILTRES,"$aFodFILTRES") ;<==== ca sort un tableau si 1 fichier : row0 c'est le chiffre 1 et row1 c'est le path du fichier///
;si plusieurs fichiers : row0 c'est le nombre de lignes, donc si 3 fichiers ouverts, ca sort row0=4 , row1 c'est le path global (sans "\" à la fin, row2,3,3 c'est juste le nom du fichier


If $aFodFILTRES[0] = 1 Then ;====> ATTENTION ICI C'EST QUE SI 1 SEUL FICHIER DE FILTRE EST CHOISI<====
	; Lecture et transformation du fichier sélectionné dans $sFilter

$sFilters = FileReadToArray($aFodFILTRES[1]) ; $sfilter est un tableau
;_ArrayDisplay($sfilters,"le seul filtre")



Else
	Dim $sfilters[0]
   ;====> ATTENTION ICI C'EST QUE SI PLUSIEURS FICHIERS FILTRES SONT CHOISIS<====
	; Lecture, fusion et transformation des fichiers du tableau.
	;mon test pour connaitre le nombre de lignes de $afodfiltres
	;MsgBox ($MB_SYSTEMMODAL,"voici la valeur si plusieurs fichiers","voici la valeur de $aFodfiltres si plusieurs fichiers filtres sont choisis" & UBound($aFodFILTRES))
	;DANS LE TABLEAU DE $afodfiltres, on a la ligne (row) zero qui dit qu'il y a tant de données
	;ensuite la ligne 1 c'est le path
	;ensuite les lignes suivantes sont les noms des fichiers
	;MAIS UBOUND sur $afodfiltres va sortir ligne 0  ligne 1 le path et ensuite les vrai lignes des fichiers
   ;donc si on veut avoir juste les noms des fichies il faut partir de la ligne n°2 jusqu'à UBOUND -1
   ; ex: pour 2 fichiers :
   ;rom zero indique 3
   ;row 1 le path
   ;row 2 le 1er nom de fichier
   ;row 3 le 2eme nom de fichier
   ;mais uBound la dessus donnera la valeur 4
   ;donc si on veut choisir justes les nom il faut alors faire de 2 à 3
   ;ce qui fait de 2 (toujours) à ubound -1
   ;fin de mon test

	For $i = 2 to UBound($aFodFILTRES) - 1 ; voir explication au dessus pour comprendre
		_arrayadd($sfilters,FileReadToArray($aFodFILTRES[1]&"\"&$aFodFILTRES[$i]))


	Next





EndIf

;_ArrayDisplay($aFodFILE,"fichier a filtrer")
;_ArrayDisplay($sfilters,"Filtre(s)")

Dim $supprimes[0]
Dim $restants[0]


 ProgressOn("Merci de patienter...","FILTRAGE en cours... ", "0%", -1, -1, BitOR($DLG_NOTONTOP, $DLG_MOVEABLE))
$hTimer = TimerInit(); initialiser le compteur de temps en millisecondes

$estime="" ; pour mettre une valeur de départ
For $i =0 to (ubound($aFodFILE)-1) step 1

	$taux=round (($i/(ubound($aFodFILE)-1))*100)


		If 	_ArraySearch($sFilters,$aFodFILE[$i]) <> -1 Then
		;msgbox(00,"match","trouvé "&$sArray[$i])
		_arrayadd($supprimes,$aFodFILE[$i])


		Else
				;msgbox(00,"non","pas trouvé "&$sArray[$i])
				_arrayadd($restants,$aFodFILE[$i])

		EndIf



	$sec= TimerDiff($hTimer)/1000 ;temps écoulé en secondes
	$estime=$sec*(100/$taux); temps estimé total en secondes
	$restant=round( $estime-$sec) ; temps estimé en secondes pour éffectuer la tache en se basant sur le temps écoulé pour faire un certain %
	;ProgressSet($taux,"Opération effectuée à "&$taux & "%"&@crlf&"Fin dans "&$restant&" secondes")
	ProgressSet($taux,"Opération effectuée à "&$taux & "%"&@crlf&"Fin dans "&_Formatagetemps($restant))

Next



 ProgressSet(100, "Opération terminée en "&_Formatagetemps($sec),"FIN")
 sleep(3000)
 ProgressOff()


;_ArrayDisplay($supprimes,"Fichiers supprimés car contenus dans le(s) filtre(s)")
;_ArrayDisplay($restants,"Fichiers restants apres filtrage")


_ArraySort($restants) ; pour le tri alphabetique
for $i = UBound($restants) -1 to 1 step -1 ; pour enlever les lignes vides
	if $restants[$i]="" then
		_ArrayDelete($restants,$i)
	EndIf
Next

_ArraySort($supprimes) ; pour le tri alphabetique
for $i = UBound($supprimes) -1 to 1 step -1 ; pour enlever les lignes vides
	if $supprimes[$i]="" then
		_ArrayDelete($supprimes,$i)
	EndIf
Next





; mon test
;***************************************************************************************************************************
Local $iRowsfinal = UBound($restants) ; compte les lignes restantes
MsgBox($MB_SYSTEMMODAL, "Résultat :", "Il reste "& @CRLF & @CRLF & $iRowsfinal  & " fichiers" & @CRLF & @CRLF & "soit :" & @CRLF & @CRLF & $irowscomplet - $irowsfinal & " fichiers supprimés" )
;fin de mon test
;***************************************************************************************************************************





; ma partie pour creer le fichier text final

;"Text Files (*.txt) |  ini Files (*.ini) | All Files (*.*)"
$nom=StringRegExpReplace($sFodFILE, "^.*\\|\..*$", "")
$extension=StringRegExpReplace($sFodFILE, "^.*\.", ".$1") ; .xxx
$pathnom= StringRegExpReplace($sFodFILE,"(^.*\\)(.*)", "\1") ; avec \ à la fin

$sFile = FileSaveDialog("Enregistrer sous...",$pathnom,"txt ou ini (*.txt;*.ini)" , 18,$nom&"-nettoyé"&$extension)
If @error Then
	MsgBox($MB_ICONWARNING, "Aucun fichier sélectionné", "Fin de cette fonction",3)
Return
Endif



	;Exit si code seul mais pas mettre dans GUI sinon ca ferme la GUI



_FileWriteFromArray($sFile,$restants)
_FileWriteFromArray($sFile&"-LES-supprimés.txt",$supprimes)
Msgbox($MB_ICONINFORMATION,"Succès","opération réussie",3)

EndFunc

Func _Formatagetemps($sec)

  Local  $day, $hh, $mm, $ss
    _TicksToTime($sec * 1000, $hh, $mm, $ss)


;~ 	If $hh > 23 Then
;~        $day =( $hh/23 )
;~        $hh = Mod($hh, 24)

    If $hh> 24 Then
        $day = Int($hh / 24)
        $hh = $hh - ($day * 24)
	EndIf

	if $hh >=24 then
	$day= $day+1
	$hh = $hh - 24
	EndIf


    Return StringFormat("%02d min %02d sec", $mm, $ss)
EndFunc


Func fonction5($fichierini) ; pour ne garder que ce qui est dans la liste d'inclusion = les fichiers communs (Avec suppression lignes vides + tri alphabetique) OK



;Ce programme supprime les fichiers d'une liste 1 ("à trier")  s'il ne sont pas dans la liste 2 ("working"/ jeux fonctionnels)

;EXPLICATIONS SUR LE FONCTIONNEMENT et DECLARATION DES ELEMENTS :

Dim $Array1[0] ; ca crée un tableau vide $array1 de taille zéro(qui va etre dynamiquement redimensionné) pour y placer les fichiers working
Dim $Array2[0];ca crée un tableau vide $Array2 de taille zéro (qui va etre dynamiquement redimensionné) pour le fichier A trier
Dim $Array3[0] ;ca crée un tableau vide $Array3 de taille zéro (qui va etre dynamiquement redimensionné) pour afficher le résultat

Local $working ; c'est le path du fichier working
Local $working_lecture ; ca va lire le fichier $working grace à la fonction fileread
Local $Array1 ; on va appliquer l'expresssion réguliere pour supprimer les lignes vides

Local $afiltrer ; c'est le path du fichier à trier
Local $afiltrer_lecture ; ca va lire le fichier à trier grace à la fonction fileread
Local $Array2 ; on va appliquer l'expression réguliere pour supprimer les lignes vides

Local $total_afiltrer ; c'est le résultat de l'opération de comptage du nombre de lignes total du fichier, une fois débarrassé des lignes vides
					 ; ce calcul se fait grace à la fonction ubound

Local $total_resultat ; c'est le résultat de l'opération de filtrage, ca compte combien il reste de fichiers


;================================== FIN DES EXPLICATIONS ET DECLARATION DES VARIABLES ========================================


If $fichierini=""  Then 	; ca vient du bouton


; ==>Sélection du fichier à filtrer <==
$afiltrer = FileOpenDialog("Sélectionnez le fichier catégories à 'épurer' dont il ne faut garder que les jeux fonctionnels/working... ", @ScriptDir & "\","txt ou ini (*.txt;*.ini)", $FD_FILEMUSTEXIST)
If @error Then
	MsgBox($MB_ICONWARNING, "Aucun fichier sélectionné","Fin de cette fonction",3)
	Return

	;Exit  dans la GUI ca ferme tout
EndIf


;==> Sélection du fichier WORKING <==
$working = FileOpenDialog("Sélectionnez le fichier FILTRE d'inclusion(working) : si ces fichiers existent dans le fichier à 'épurer' ils seront gardés,sinon ils seront supprimés", @WorkingDir & "\","txt ou ini (*.txt;*.ini)", $FD_FILEMUSTEXIST)
If @error Then
	MsgBox($MB_ICONWARNING, "Aucun fichier sélectionné","Fin de cette fonction",3)
	Return

	; Exit a cacher car dans la GUI ca ferme
EndIf

Else ; c'est que $fichierini vient du drag & drop
	$afiltrer=$fichierini[1]&"\"&$fichierini[2]
	$working=$fichierini[1]&"\"&$fichierini[3]
EndIf




; Transformation du résultat en tableau pour l'utiliser àpres c'est filereadtoarray mais si on veut le voir il faut appliquer arraydisplay sur filereadtoarray
;$Array1= FileReadToArray($working)   ; c'est le script de départ
;_ArrayDisplay("hide",FileReadToArray($working),"avec lignes vides")

;suppression des lignes vides
$working_lecture= fileread($working) ;transforme le path en le lisant ligne par ligne mais c'est informatique, pas lisible sauf en tableau via filereadtoarray
$Array1 = StringRegExp($working_lecture, '(?m)(^.+)\s*\R?', 3)
;_ArrayDisplay("hide",$Array1,"sans lignes vides")
;==> FIN Sélection du fichier WORKING <==






; Transformation du résultat en tableau pour l'utiliser àpres c'est filereadtoarray mais si on veut le voir il faut appliquer arraydisplay sur filereadtoarray
;$Array2= FileReadToArray($afiltrer) ; c'est le script de départ
;_ArrayDisplay("hide",FileReadToArray($afiltrer),"avec lignes vides")
;suppression des lignes vides
$afiltrer_lecture= fileread($afiltrer)
$Array2 = StringRegExp($afiltrer_lecture, '(?m)(^.+)\s*\R?', 3)
;_ArrayDisplay("hide",$Array2,"sans lignes vides")
;==> FIN Sélection du fichier à filtrer <==
$total_afiltrer=UBound($Array2)



; c'était le code test de départ sans ouverture de fichier
;Local $Array1 = [1,2,3,4,5]  ; liste 1 de fichiers fonctionnels
;Local $Array2 = [7,4,5,6,3,1,2]  ; liste de départ à filtrer pour ne garder que les fonctionnels



;ici l'opération arraysearch
;voila comment ca marche
;Arraysearch
;cette fonction cherche dans le tableau 2 s'il y a la valeur de :  la ligne (row) 0, de la ligne(row) 1 etc.  depuis le tableau 1
;ex: tableau 2 contient  7,4,5,6,3
;tableau 1 contient 1,2,3,4,5
;la boucle For $i = 0 To UBound($Array1)-1 va aller de la ligne(row)0 à la ligne ubound -1
;car ubound sort le nombre total de ligne en comptant la zéro, mais en fait si on fait une opération sur les lignes,
;la derniere n'est pas la n° ubound mais ubound  -1

;arraysearch va regarder si elle trouve le chiffre 1 dans le tableau 2 =>NON donc elle sort -1 (pour dire y'a pas)
;arraysearch va regarder si elle trouve le chiffre 2 dans le tableau 2 =>NON donc elle sort -1 (pour dire y'a pas)
;arraysearch va regarder si elle trouve le chiffre 3 dans le tableau 2 =>OUI dans la ligne 5 qui est Row 4 (ca commence à row0)
;=>alors la fonction supprimer de son compteur la ligne Row4 et donc le tableau est "raccourci"
;arraysearch va regarder si elle trouve le chiffre 4 dans le tableau 2 =>OUI dans la ligne 2 qui est Row 1 (ca commence à row0)
;=>alors la fonction supprimer de son compteur la ligne Row1 et donc le tableau est "raccourci"
;arraysearch va regarder si elle trouve le chiffre 5 dans le tableau 2 =>OUI dans la ligne 2 qui est Row 1 (ca commence à row0)
;=>alors la fonction supprimer de son compteur la ligne Row1 et donc le tableau est "raccourci"

;$found c'est à chaque tour de boucle le numero de la ligne(row) et PAS la valeur de la ligne !!
;alors à chaque tour de boucle, quand la valeur retournée par arraysearch n'est PAS -1 noté "<> -1" aussi appelé "not egal -1"
;j'ai fait la fonction arrayadd qui va lire la valeur ce coup-ci de la ligne
;pour rappel si c'est -1 ca ne match pas , si c'est autre chose que -1 alors c'est que la valeur existe
;donc pour lire la valeur de la ligne c'est $Array2[$found]
;et donc à chaque tour de boucle la valeur du tableau est ajoutée dans un nouveau tableau $Array3 afin d'obtenir les resultats


ProgressOn("Merci de patienter...","FILTRAGE en cours... ", "0%", -1, -1, BitOR($DLG_NOTONTOP, $DLG_MOVEABLE))
$hTimer = TimerInit(); initialiser le compteur de temps en millisecondes

$estime="" ; pour mettre une valeur de départ


For $i = 0 To UBound($Array1)-1

	$taux=round (($i/UBound($Array1))*100)

    $found = _ArraySearch($Array2, $Array1[$i])
	;Retourne l'index de la ligne où la valeur a été trouvée

	 ; MsgBox(00,"Resultat","Le chiffre " & $Array1[$i] & " situé En row " & $i & @CRLF & " Est trouvé en row " & $found & "du tableau2")


   If $found <> -1 Then

   _ArrayAdd($Array3, $Array2[$found])


   Else

	 ; ConsoleWrite($Array1[$i] & " not found" & @CRLF)
    EndIf


	$sec= TimerDiff($hTimer)/1000 ;temps écoulé en secondes
	$estime=$sec*(100/$taux); temps estimé total en secondes
	$restant=round( $estime-$sec) ; temps estimé en secondes pour éffectuer la tache en se basant sur le temps écoulé pour faire un certain %
	;ProgressSet($taux,"Opération effectuée à "&$taux & "%"&@crlf&"Fin dans "&$restant&" secondes")
	ProgressSet($taux,"Opération effectuée à "&$taux & "%"&@crlf&"Fin dans "&_Formatagetemps($restant))

Next



 ProgressSet(100, "Opération terminée en "&_Formatagetemps($sec),"FIN")
 sleep(3000)
 ProgressOff()


;_ArrayDisplay("hide",$Array3,"array3")
$total_resultat =UBound($Array3)

_arraysort($array3) ; tri alphabétique

;affichage de combien de fichiers ont été supprimés
MsgBox(00,"RESULTAT","Sur " & $total_afiltrer & " fichiers " & @CRLF & $total_afiltrer-$total_resultat & " fichiers ont été supprimés "& _
@crlf&@crlf&"il y avait "&$total_resultat&" fichiers communs sauvegardés" )


; ========== partie pour creer le fichier text final =========================

;_FileWriteFromArray(@ScriptDir & "\fichierarray.txt",$array3)

$nom=StringRegExpReplace($afiltrer, "^.*\\|\..*$", "")
$extension=StringRegExpReplace($afiltrer, "^.*\.", ".$1")
$pathnom= StringRegExpReplace($afiltrer,"(^.*\\)(.*)", "\1")

$nomworking=StringRegExpReplace($working, "^.*\\|\..*$", "")
$extensionworking=StringRegExpReplace($working, "^.*\.", ".$1")
$pathnomworking= StringRegExpReplace($working,"(^.*\\)(.*)", "\1")




$sFile = FileSaveDialog("Enregistrer sous...",$pathnom,"txt ou ini (*.txt;*.ini)", 18,$nom&"-(en ne gardant que)-"&$nomworking&$extension)
If @error Then
	MsgBox($MB_ICONWARNING, "Aucun dossier de sauvegarde choisi...","Fin de cette fonction",3)
   	Return
	EndIf
	;Exit  dans la GUI ca ferme tout

$sString = _ArrayToString($Array3 , @crlf, Default, Default, @CRLF)

FileWrite($sFile,$sString)
Msgbox($MB_ICONINFORMATION,"Succès","opération réussie",3)

;Exit sinon la GUI SE FERME



EndFunc

Func fonction6() ; Télécharger arcade64 OK


HttpSetUserAgent("Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:87.0) Gecko/20100101 Firefox/87.0")

$versionini=FileReadLine(@ScriptDir & "\broukmiken.tmp", 5)
$adressecomplete=FileReadLine(@ScriptDir & "\broukmiken.tmp", 6)

Local $choixrepertoire = FileSelectFolder("Choix du repertoire de sauvegarde :",@WorkingDir)
    If @error Then
        ; Display the error message.
        MsgBox($MB_ICONWARNING, "Aucun dossier de sauvegarde choisi...","Fin de cette fonction",3)
			Return

    Endif
$path = $choixrepertoire & "\" &  $versionini & "\"
; fin du test pour demander le repertoire de sortie



		 DirCreate ($path)



      ;local $file = InetGet ( $link.href, $path & "\" & $split[$split[0]] )

$lien=$adressecomplete

        ;InetClose ( $file )






FileWrite($path &"\" &$versionini&"_source.txt","url source : http://arcade.mameworld.info" & @crlf & _
"lien : " & $lien & @crlf & @crlf & "Généré automatiquement via MameTools by Broukmiken le " & _
_DateTimeFormat(_NowCalc(), 2)& " à " & _DateTimeFormat(_NowCalc(), 5) ) ; crée un fichier texte en écrivant la source du téléchargement






Func_B($lien, $versionini,$path)

EndFunc

	 Func func_B($lien, $versionini, $path)


	;MsgBox($MB_SYSTEMMODAL,"URL & path & versionini","url: " & $lien& @CRLF &  @CRLF & "path: "  &@CRLF & $path & @crlf &" versionini: " & $versionini)






Local $size = InetGetSize ($lien) ; sort en bytes donc octets
Local $file = InetGet ( $lien, $path &$versionini & ".7z" ,1,1  )


;barre de progression
;pour éviter que ca clignote il faut mettre le progresson avant la boucle et un petit sleep





ProgressOn($versionini, "Téléchargement en cours")

Do
local $downloaded = InetGetInfo($file, $INET_DOWNLOADREAD) ; en bytes et arrondi $INET_DOWNLOADREAD (0) - Octets lus jusqu'à présent (mis à jour durant la progression du téléchargement).
 $pourcentage = Round(InetGetInfo($file, $INET_DOWNLOADREAD)*100/$size)
 	;ProgressSet($pourcentage, $pourcentage & " %")
	ProgressSet($pourcentage, $pourcentage & " %"&@crlf&round($downloaded/1000000,-1)&" Mo téléchargés sur "&round($size/1000000)&" Mo")
	;  $INET_DOWNLOADREAD (0) - Octets lus donc  1 Mo c'est 1 000 000 octets
sleep(250)

 Until InetGetInfo($file, $INET_DOWNLOADCOMPLETE)

 ProgressSet(100, "COMPLET!","Téléchargement terminé")
 Sleep(2500)
  ProgressOff()

Msgbox($MB_ICONINFORMATION,"Succès","opération réussie"&@crlf&"téléchargement disponible ici :"&@crlf&$path,3)
InetClose ( $file )

EndFunc


Func fonction7($fichierini) ; Ajouter l'extension zip à une liste de roms (Avec suppression lignes vides + tri alphabetique) OK


If $fichierini="" Then
		 $Fichierini= FileOpenDialog("Sélectionnez le fichier ini ou txt auquel ajouter l'extension zip", @ScriptDir & "\","txt ou ini (*.txt;*.ini)", $FD_FILEMUSTEXIST)
			If @error Then
				MsgBox($MB_ICONWARNING, "Aucun fichier choisi...","Fin de cette fonction",3)
				Return
			EndIf
ElseIf Not @error Then ; then ca continue et passe apres le endif

EndIf


;suppression des lignes vides
$working_lecture= fileread($Fichierini) ;transforme le path en le lisant ligne par ligne mais c'est informatique, pas lisible sauf en tableau via filereadtoarray
$valeurs = StringRegExp($working_lecture, '(?m)(^.+)\s*\R?', 3)
;_ArrayDisplay($valeurs,"sans lignes vides")

_ArraySort($valeurs)


;$valeurs= FileReadToArray($Fichierini)

;_ArrayDisplay($valeurs)

_ArrayAdd($valeurs,@CRLF) ; ajoute un retour chariot à la fin du tableau

For $i = 0 to UBound ($valeurs) -2

	$valeurs[$i] = $valeurs[$i]&".zip"

Next

;_ArrayDisplay("hide",$valeurs)



; ========== partie pour creer le fichier text final =========================

$fichierinipath=StringRegExpReplace($fichierini, "(^.*\\)(.*)", "\1") ; on propose d'enregistrer le fichier non pas dans son propre dossier mais à un niveau au dessus
;cette opération stringregexpreplace enleve en fait le dernier "\" pour creer le path


$sFile = FileSaveDialog("Enregistrer sous...", $fichierinipath,"txt ou ini (*.txt;*.ini)", 18, StringTrimRight($Fichierini,4) & "_Avec_zip")
If @error Then
	MsgBox($MB_ICONWARNING, "Aucun dossier de sauvegarde choisi...","Fin de cette fonction",3)
	$fichierini=""; au cas où le fichier serait venu du drag&drop, on remet les valeurs à rien
	Return
	EndIf
$sString = _ArrayToString($valeurs, @crlf, Default, Default, @CRLF)

;$sString = _ArrayToString($valeurs , @crlf, Default, Default, @CRLF)
FileWrite($sFile,$sString)
Msgbox($MB_ICONINFORMATION,"Succès","opération réussie",3)
$fichierini=""; au cas où le fichier serait venu du drag&drop, on remet les valeurs à rien


EndFunc

Func fonction8() ; Télécharger groovymame OK

$version=FileReadLine(@ScriptDir & "\broukmiken.tmp", 8)
$lien=FileReadLine(@ScriptDir & "\broukmiken.tmp", 9)

Local $choixrepertoire = FileSelectFolder("Choix du repertoire de sauvegarde :", @WorkingDir)
    If @error Then
        ; Display the error message.
        MsgBox($MB_ICONWARNING, "Aucun dossier de sauvegarde choisi...", "GroovyMame ne sera pas téléchargé",3)
		Return

    Endif
$path = $choixrepertoire & "\" &  $version & "\"
; fin du test pour demander le repertoire de sortie


		 DirCreate ($path)

		 FileWrite($path &"\" &$version&"_source.txt","url source : https://github.com/antonioginer/GroovyMAME/releases/latest/" & @crlf & _
		 "lien : " & $lien & @crlf & @crlf & "Généré automatiquement via MameTools by Broukmiken le " & _
		 _DateTimeFormat(_NowCalc(), 2)& " à " & _DateTimeFormat(_NowCalc(), 5) ) ; crée un fichier texte en écrivant la source du téléchargement










Func_GM($lien, $version,$path)

EndFunc

	 Func Func_GM($lien, $version, $path)


	;MsgBox($MB_SYSTEMMODAL,"URL & path & versionini","url: " & $lien& @CRLF &  @CRLF & "path: "  &@CRLF & $path & @crlf &" versionini: " & $versionini)

Local $size = InetGetSize ($lien)
Local $file = InetGet ( $lien, $path &$version & ".7z" ,1,1  )


;barre de progression
;pour éviter que ca clignote il faut mettre le progresson avant la boucle et un petit sleep

ProgressOn($version, "Téléchargement en cours")

Do

local $downloaded = InetGetInfo($file, $INET_DOWNLOADREAD) ; en bytes et arrondi $INET_DOWNLOADREAD (0) - Octets lus jusqu'à présent (mis à jour durant la progression du téléchargement).
 $pourcentage = Round(InetGetInfo($file, $INET_DOWNLOADREAD)*100/$size)
 	;ProgressSet($pourcentage, $pourcentage & " %")
	ProgressSet($pourcentage, $pourcentage & " %"&@crlf&round($downloaded/1000000,-1)&" Mo téléchargés sur "&round($size/1000000)&" Mo")
sleep(250)

 Until InetGetInfo($file, $INET_DOWNLOADCOMPLETE)

 ProgressSet(100, "COMPLET!")
 Sleep(2500)
  ProgressOff()
Msgbox($MB_ICONINFORMATION,"Succès","opération réussie"&@crlf&"téléchargement disponible ici :"&@crlf&$path,3)
InetClose ( $file )

EndFunc




Func fonction9($fichierini) ; supprimer l'extension zip d'une liste de roms (Avec suppression lignes vides + tri alphabetique) OK


If $fichierini="" Then
			$Fichierini= FileOpenDialog("Sélectionnez le fichier ini ou txt auquel supprimer les extensions zip", @ScriptDir & "\", "txt ou ini (*.txt;*.ini)", $FD_FILEMUSTEXIST)
				If @error Then
					MsgBox($MB_ICONWARNING, "Aucun fichier choisi...","Fin de cette fonction",3)
					Return ; fin de la fonction
				EndIf

ElseIf Not @error Then
EndIf


Global $sujet, $regex, $aArray

$sujet = FileRead($Fichierini)

$regex = "\b(\w*\.zip\w*)\b"
$aArray = StringRegExp($sujet, $regex, 3)

;_ArrayDisplay($aArray,"resultat qui trouve les fichiers.zip")
if $aArray=@error then
	msgbox($MB_ICONERROR,"ERREUR","Erreur sur le fichier..."&@crlf&"Contient-il bien des .zip ??"&@crlf&"Fin de la fonction",3)
	Return
Else
	EndIf

_ArrayAdd($aArray,@CRLF) ; ajoute une ligne supp vide sinon ca marche pas bien

;_ArrayDisplay("hide",$aArray,"avec ligne en plus")


For $i= 0 to UBound($aArray) -2

$aArray[$i] = StringTrimRight($aArray[$i],4) ; enleve 4 caractere à la ligne, soit .zip (4 caracteres)
;$aArray[$i] = $aArray[$i]&"coucou" ; cette ligne pourrait ajouter une nouvelle extension

Next

;_ArrayDisplay($aArray,"sans les .zip")

_ArraySort($aArray)
_arraydelete($aArray,0) ;supprime la ligne supp vide qui était ajoutée avant mais comme classée ordre alphabetique,elle est en haut en row 0


; ========== partie pour creer le fichier text final =========================

$fichierinipath=StringRegExpReplace($fichierini, "(^.*\\)(.*)", "\1") ; on propose d'enregistrer le fichier non pas dans son propre dossier mais à un niveau au dessus
;cette opération stringregexpreplace enleve en fait le dernier "\" pour creer le path


$sFile = FileSaveDialog("Enregistrer sous...", $fichierinipath,"txt ou ini (*.txt;*.ini)", 18, StringTrimRight($Fichierini,4) & "_Sans_zip")
If @error Then
	MsgBox($MB_ICONWARNING, "Aucun dossier de sauvegarde choisi...","Fin de cette fonction")
	$fichierini=""; au cas où le fichier serait venu du drag&drop, on remet les valeurs à rien
	Return
	EndIf

$sString = _ArrayToString($aArray , @crlf, Default, Default, @CRLF)
FileWrite($sFile,$sString)
Msgbox($MB_ICONINFORMATION,"Succès","opération réussie",3)
$fichierini=""; au cas où le fichier serait venu du drag&drop, on remet les valeurs à rien
EndFunc


Func fonction10($fichierini) ; compter combien il y a de lignes/fichiers dans un fichier


If $fichierini="" Then ; ici c'est si rien n'arrive par le drag&drop
		$Fichierini= FileOpenDialog("Sélectionnez le fichier ini ou txt pour Compter le nombre de lignes", @WorkingDir & "\", "ini ou txt (*.ini;*.txt)", $FD_FILEMUSTEXIST)
			If @error Then ; si aucun fichier n'est selectionné via fileopendialog alors on va msgbox + sur return
				MsgBox($MB_ICONWARNING, "Aucun fichier choisi...","Fin de cette fonction",3)
				Return; return c'est en fait qu'on coupe la fonction sans fermer l'interface principale (si on mettait exit ca fermerait l'interface)
			EndIf ; c'est la fin des conditions sur le fileopendialog

ElseIf Not @error Then ; on arrive ici si le fichier est arrivé par drag&drop c'est à dire s'il n'y a pas d'erreur ET que $fichierini n'est pas=""
	;msgbox(00,"Drag&drop","on arrive ici avec le drag&drop"&@crlf&"le fichier choisi est: "&@crlf&$fichierini)

EndIf ; ici c'est la fin en fait de la source du fichier $fichierini pour avoir controlé s'il arrive par drag&drop ou fileopendialog
			;on enchaine sur la fonction


;msgbox(00,"Fichier","Par drag&drop ou fileopendialog"&@crlf&"le fichier choisi est: "&@crlf&$fichierini)



$Array= FileReadToArray($Fichierini)



_ArrayAdd($array,@crlf) ; il faut ajouter une ligne supp

for $i =ubound($array)-1 to 0 step -1
	if $array[$i]="" Then
		_Arraydelete($array,$i)
	EndIf
	Next

$compte=ubound($array)-1
If @error Then
	msgbox($MB_ICONWARNING,"Mauvais","Ce fichier ne contient rien de valable...")
	$fichierini="" ; au cas où le fichier serait venu du drag&drop, on remet les valeurs à rien
	Return
Else
msgbox($MB_ICONINFORMATION,"compte","il y a :" & @crlf & $compte & " fichiers au total"&@crlf&"Sans lignes vides")
$fichierini="" ; au cas où le fichier serait venu du drag&drop, on remet les valeurs à rien
Return
EndIf

EndFunc
;**************************************************************************************************

func fonction11($fichierini) ; concatenation(fusion) de fichiers bouton 11

If $fichierini="" Then ; c'est que ca vient du bouton

		; Crée une constante locale avec le message à afficher dans FileOpenDialog.
		Local Const $sMessage = "Appuyez sur Ctrl ou Shift pour choisir plusieurs fichiers à concatener"

		; Ouvre une boîte de dialogue  pour sélectionner une liste de fichier(s).
		Local $fichiers = FileOpenDialog($sMessage, @ScriptDir & "\", "txt ou ini (*.ini;*.txt)", $FD_FILEMUSTEXIST + $FD_MULTISELECT)
		; c'est formaté ansi : path|nomfichier1|nomfichier2|etc.
			If @error Then
			; Affiche le message d'erreur.
			MsgBox($MB_ICONERROR,"ERREUR","Aucun fichier choisi..."&@crlf&"Fin de cette fonction",3)
			Return
			EndIf ; si pas d'erreur ca continue

		Local $chemins = StringSplit($fichiers, "|") ;Diviser la chaîne de path en utilisant le délimiteur "|" et la valeur de flag par défaut et passe en tableau
		;attention string split sort un tableau avec en ligne zero (row 0 ) le nombre de parametres

		;_ArrayDisplay($chemins,"depuis fileopen")

	If $chemins[0]=1 Then ; on peut aussi l'écrire if  ubound($chemins)-1= 1
		Msgbox($MB_ICONERROR,"ERREUR","il n'y a qu'un fichier selectionné !!",3)
		return
	Else
	EndIf




Else ; c'est que ca vient du drag&drop
	$chemins=$fichierini
	;_ArrayDisplay($chemins,"depuis drag")
EndIf; que ca vienne du bouton 11 ou du drag on continue

msgbox($MB_ICONINFORMATION,"Fichiers",$chemins[0]-1&" fichiers selectionnés",2)
		; car à partir de 2 fichiers le tableau indique en row 0 le nombre total de lignes, row1 le path des fichiers, en row suivants chaque nom de fichier
		;le nombre de fichiers est situé en row[0] mais il faut déduire 1 ligne : celle qui est du path (row[1]), donc le nombre de fichiers selectionnés est la valeur de row[0] -1



;_Arraydisplay($chemins,"suite") ; $chemins est le tableau row0 c'est un compteur: 4, row1 le path sans \, row 2 le fichier1,row3 le fichier2, row4 le fichier3. ubound = 5


$tableau=FileReadToArray($chemins[1]&"\"&$chemins[2])
;_ArrayDisplay($tableau,"test")

for $i=3 to (ubound($chemins)-1) step 1 ; pour lire la ligne 3 à ubound-1 (oui oui, pour aller à ubound-1 on doit ecrire $chemins-1 step 1

_arrayadd($tableau,FileReadToArray($chemins[1]&"\"&$chemins[$i]))
;_ArrayDisplay($tableau,"test")

Next

;classement alpha et enlever lignes vides

for $i= UBound($tableau)-1 To 1 step -1 ; ca va de la derniere ligne à la ligne zero
	if $tableau[$i]="" Then
		_ArrayDelete($tableau,$i)
	Else
	EndIf


Next ; quand $i est arrivé à 0 et a été traité ca quitte la boucle


;_ArrayDisplay($tableau,"sans vide")


_ArraySort($tableau)

; fin du traitement


;fichier de sortie
$fichiersortie = FileSaveDialog("Enregistrer sous...", $chemins[1],"txt ou ini (*.txt;*.ini)", 18,"Concatenation_fichier") ; $chemins[1] c'est le path qui apparait row1 du tableau
If @error Then
	MsgBox($MB_ICONERROR,"ERRREUR", "Aucun fichier choisi..."&@crlf&"Fin de cette fonction",3)
	Return
EndIf

_FileWriteFromArray($fichiersortie,$tableau)

msgbox($MB_ICONINFORMATION,"SUCCES","Opération réussie",2)
$fichierini=""
Return

EndFunc

Func fonction12() ; Télécharger Mame

$version="Mame_64bits " & FileReadLine(@ScriptDir & "\broukmiken.tmp", 11)
$lien=FileReadLine(@ScriptDir & "\broukmiken.tmp", 12)

Local $choixrepertoire = FileSelectFolder("Choix du repertoire de sauvegarde :", @WorkingDir)
    If @error Then
        ; Display the error message.
        MsgBox($MB_ICONWARNING, "Aucun dossier de sauvegarde choisi...", "Mame ne sera pas téléchargé",3)
		Return

    Endif
$path = $choixrepertoire & "\" & $version & "\"
; fin du test pour demander le repertoire de sortie


		 DirCreate ($path)

		 FileWrite($path &"\" &$version&"_source.txt","url source : https://www.mamedev.org/release.html" & @crlf & _
		 "lien : " & $lien & @crlf & @crlf & "Généré automatiquement via MameTools by Broukmiken le " & _
		 _DateTimeFormat(_NowCalc(), 2)& " à " & _DateTimeFormat(_NowCalc(), 5) ) ; crée un fichier texte en écrivant la source du téléchargement










Func_Mamedev($lien, $version,$path)

EndFunc

	 Func Func_Mamedev($lien, $version, $path)


	;MsgBox($MB_SYSTEMMODAL,"URL & path & versionini","url: " & $lien& @CRLF &  @CRLF & "path: "  &@CRLF & $path & @crlf &" versionini: " & $versionini)

Local $size = InetGetSize ($lien)
Local $file = InetGet ( $lien, $path &$version & ".exe" ,1,1  )


;barre de progression
;pour éviter que ca clignote il faut mettre le progresson avant la boucle et un petit sleep

ProgressOn($version, "Téléchargement en cours")

Do

local $downloaded = InetGetInfo($file, $INET_DOWNLOADREAD) ; en bytes et arrondi $INET_DOWNLOADREAD (0) - Octets lus jusqu'à présent (mis à jour durant la progression du téléchargement).
 $pourcentage = Round(InetGetInfo($file, $INET_DOWNLOADREAD)*100/$size)
 	;ProgressSet($pourcentage, $pourcentage & " %")
	ProgressSet($pourcentage, $pourcentage & " %"&@crlf&round($downloaded/1000000,-1)&" Mo téléchargés sur "&round($size/1000000)&" Mo")
sleep(250)

 Until InetGetInfo($file, $INET_DOWNLOADCOMPLETE)

 ProgressSet(100, "COMPLET!")
 Sleep(2500)
  ProgressOff()
Msgbox($MB_ICONINFORMATION,"Succès","opération réussie"&@crlf&"téléchargement disponible ici :"&@crlf&$path,3)
InetClose ( $file )

EndFunc

Func fonctionaide()

   MsgBox($MB_ICONQUESTION,"Information","Il faut choisir l'action à réaliser :" & @CRLF &  @CRLF & _
   "Au choix : " &@CRLF & @CRLF & @CRLF & _
   "* Gestion des catégories permet de :" & @CRLF &  @CRLF &  @CRLF & _
   "1/Télécharger le fichier zip des catégories"  & @CRLF & @CRLF  &  _
   "2/Extraire depuis le fichier 'catégories' un fichier listant les roms de chaque catégorie (choisir le genre.ini)" &  @CRLF & @CRLF & _
   "3/Télécharger Arcade64 qui contient le fichier working et CHD"  &  @CRLF & @CRLF & _
   "4/Télécharger GroovyMame+SwitchRes" & @CRLF & @CRLF & @CRLF & @CRLF & _
   "* Opérations de tri permettent :" & @CRLF&  @CRLF& @CRLF  & _
   "1/Lister le contenu d'un dossier (utile pour lister les bios par exemple) et l'exporter dans un fichier txt"  & @CRLF & @CRLF & _
   "2/Trier un fichier contenant des roms(working) et en supprimer certaines depuis une ou plusieurs liste(s) d'exclusion(s) (bios,CHD)" & @CRLF & @CRLF&  _
   "exemple: Liste A,B,C,D (working) on veut trier bios (A,B) et CHD (C,G) on gardera donc D" &  @CRLF &@CRLF&  _
   "3/Trier un fichier contenant des roms et ne garder que celles qui marchent depuis un fichier 'working'/'d'inclusion'"&  @CRLF & @CRLF&  _
   "exemple: Liste à TRIER A,B,C,D,E,F  et les working sont A,B,F,G,H,I,J,K on obtiendra A,B,F en fait y'a pas d'ordre: ca garde les communs"&  @CRLF & @CRLF&  _
   "4/Ajouter l'extension .zip à une liste de roms sans extension" &  @CRLF & @CRLF&  _
   "5/Supprimer l'extension .zip à une liste de roms avec l'extension .zip" & @CRLF &  @CRLF )
EndFunc

;**************************************************************************************************

Func controledrag_type_et_ext_ancienne($fichierini,$origine,$necessaire) ; FONCTION REMPLACée PAR CELLE d'en DESSOUS

;==========ici on détermine si c'est un dossier ou un fichier========================
$typechoisi=FileGetAttrib($fichierini)

If StringInStr($typechoisi, "D") Then; controle si c'est un dossier ou pas
	$typechoisi="dossier"
	;Msgbox(00,"dossier","C'est un dossier")

Else
	$typechoisi="fichier"
	;Msgbox(00,"fichier","C'est un fichier")
EndIf ; et on continue
;============Fin de cette analyse==============================================


If $typechoisi ="dossier" And $necessaire="dossier" Then ; si le type dragué est dossier et qu'on a besoin d'un dossier
		call("fonction"&$origine,$fichierini) ; on envoi la fonction : fonction n° du bouton d'origine avec le parametre $fichierini

ElseIf $necessaire="dossier" and $typechoisi="fichier" Then
	msgbox($MB_ICONERROR,"ERREUR","Il faut un "&$necessaire&@crlf&"Pas un fichier...")
	Return

Else
	$extension=StringRight($fichierini,4) ; on trouve l'extension ex:  .txt
	$instring=StringInStr($necessaire,$extension) ; si c'est égal à zero c'est que c'est pas trouvé, sinon ca peut etre 1 ,5,9 ...
	;au dessus ca stringinstr permet de regarder si on trouve $extension (ex: .ini) dans la chaine $necessaire (ex: .ini.txt.pdf)

		If $instring <>0 Then
			call("fonction"&$origine,$fichierini)
		Else ; c'est que l'extension necessaire n'est pas trouvée dans le fichier dragué
			If $typechoisi="dossier" then

					msgbox($MB_ICONERROR,"ERREUR","C'est un "&$typechoisi&@crlf&"Alors qu'il faut un fichier :"&StringReplace($necessaire,".",@crlf&"."))
					; pour un meilleur visuel stringreplace replace le $necessaire qui peut etre .zip.txt.ini pour mettre avec un saut de ligne

			Else ; si on a dragué un fichier mais que l'extension ne correspond pas avec attendu
					msgbox($MB_ICONERROR,"ERREUR","Fichier "&$extension&" trouvé"&@crlf&"Alors qu'il faut un fichier :"&StringReplace($necessaire,".",@crlf&"."))

			EndIf
			Return
		EndIf

EndIf

EndFunc

Func controledrag_type_et_ext($fichierini,$origine,$necessaire) ; réecriture plus simple CONTROLE d'un seul fichier/dossier
	;Returns an array with 5 elements:
;$aArray[$PATH_ORIGINAL] = original path
;$aArray[$PATH_DRIVE] = drive
;$aArray[$PATH_DIRECTORY] = directory
;$aArray[$PATH_FILENAME] = filename
;$aArray[$PATH_EXTENSION] = extension
Local $sDrive = "", $sDir = "", $sFilename = "", $sExtension = "" ,$typechoisi=""
Local $aPathSplit = _PathSplit($fichierini, $sDrive, $sDir, $sFilename, $sExtension)

If $aPathSplit[4]="" then
		$typechoisi ="dossier"
	Else
		$typechoisi="fichier"
EndIf

If $typechoisi ="dossier" And $necessaire="dossier" Then ; si le type dragué est dossier et qu'on a besoin d'un dossier
		call("fonction"&$origine,$fichierini) ; on envoi la fonction : fonction n° du bouton d'origine avec le parametre $fichierini

ElseIf $necessaire="dossier" and $typechoisi="fichier" Then
	msgbox($MB_ICONERROR,"ERREUR","ERREUR:"&@crlf&"Il faut un "&$necessaire&@crlf&@crlf&"Pas un fichier "& $aPathSplit[4],3)
	Return

Else
	$extension=$aPathSplit[4]
	$instring=StringInStr($necessaire,$extension) ; si c'est égal à zero c'est que c'est pas trouvé, sinon ca peut etre 1 ,5,9 ...
	;au dessus ca stringinstr permet de regarder si on trouve $extension (ex: .ini) dans la chaine $necessaire (ex: .ini.txt.pdf)

		If $instring <>0 Then
			call("fonction"&$origine,$fichierini)
		Else ; c'est que l'extension necessaire n'est pas trouvée dans le fichier dragué
			If $typechoisi="dossier" then

					msgbox($MB_ICONERROR,"ERREUR","ERREUR:"&@crlf&"C'est un "&$typechoisi&@crlf&@crlf&"Alors qu'il faut un fichier :"&StringReplace($necessaire,".",@crlf&"."),3)
					; pour un meilleur visuel stringreplace replace le $necessaire qui peut etre .zip.txt.ini pour mettre avec un saut de ligne

			Else ; si on a dragué un fichier mais que l'extension ne correspond pas avec attendu
					msgbox($MB_ICONERROR,"ERREUR","ERREUR:"&@crlf&"Fichier "&$extension&" trouvé"&@crlf&@crlf&"Alors qu'il faut un fichier :"&StringReplace($necessaire,".",@crlf&"."),3)

			EndIf
			Return
		EndIf

EndIf

EndFunc

Func multidrag($hWnd, $iMsg, $wParam, $lParam) ; pour controler qu'on a dragué au moins 2 fichiers
	; dans n'importe quelle fonction on pourra appeler:
;	===> _arraydisplay( $tous_les_fichiers," $tous_les_fichiers") <=== c'est formaté ainsi : row0 c'est le total de fichiers dragués, row1 fichier avec path complet,row 2 idem etc.
    #forceref $hWnd, $lParam
    Switch $iMsg
        Case $WM_DROPFILES
            Local Const $aReturn = _WinAPI_DragQueryFileEx($wParam)
            If UBound($aReturn) Then
                $tous_les_fichiers = $aReturn
			Else
                Local Const $aError[1] = [0]
                $tous_les_fichiers = $aError
            EndIf
	EndSwitch
	Return $GUI_RUNDEFMSG

EndFunc   ;==>multidrag


Func controledrag_nombre($quantite_elements_necessaire,$fichierini,$origine,$necessaire)
; puisque  _arraydisplay( $tous_les_fichiers," $tous_les_fichiers") <=== ca sortira un tableau avec les éléments dragués
; c'est formaté ainsi : row0 c'est le total de fichiers dragués, row1 fichier avec path complet,row 2 idem etc.

If $quantite_elements_necessaire=1 Then
			If $quantite_elements_necessaire = ubound($tous_les_fichiers)-1 and $quantite_elements_necessaire=1 Then
				controledrag_type_et_ext($fichierini,$origine,$necessaire)
			Else
			Msgbox($MB_ICONERROR,"Erreur","ERREUR:"&@crlf&ubound($tous_les_fichiers)-1&" Elements reçus alors"&@crlf&"Qu' 1 seul élément attendu..."&@crlf&@crlf&"Fin de la fonction",3)
			$tous_les_fichiers=""
			Return
			EndIf

Else ; On attend du multiple

		If  ubound($tous_les_fichiers)-1 <2 Then ; c'est si on a dragué qu'1 fichier/dossier
			msgbox($MB_ICONERROR,"Erreur","ERREUR:"&@crlf&ubound($tous_les_fichiers)-1&" Seul element reçu "&@crlf&@crlf&"Fin de la fonction",3)
			$tous_les_fichiers=""
			;_ArrayDisplay($tous_les_fichiers)
			Return
		Elseif  ubound($tous_les_fichiers)-1 >$quantite_elements_necessaire Then
			msgbox($MB_ICONERROR,"Erreur","ERREUR:"&@crlf&ubound($tous_les_fichiers)-1&" éléments reçus "&@crlf&"Pour "&$quantite_elements_necessaire&" éléments requis"&@crlf&@crlf&"Fin de la fonction",3)
		Return
		Else
		EndIf


		if $necessaire="dossier" Then
			msgbox(00,"OUPS","OUPS, pas de traitement actuellement sur les MULTI dossiers",3)
			$tous_les_fichiers=""
			Return
		Else	; c'est que c'est des fichiers qui sont attendus
				;Returns an array with 5 elements:
				;$aArray[$PATH_ORIGINAL] = original path
				;$aArray[$PATH_DRIVE] = drive
				;$aArray[$PATH_DIRECTORY] = directory
				;$aArray[$PATH_FILENAME] = filename
				;$aArray[$PATH_EXTENSION] = extension
				$sDrive = ""
				$sDir = ""
				$sFilename = ""
				$sExtension = ""
				$typechoisi=""


				$i= 1
				While $i<=(ubound($tous_les_fichiers)-1)			; boucle pour chaque élément trouvé dans le drag&drop multiple
						;msgbox($MB_ICONERROR,"test","il faut controler le fichier: "&$tous_les_fichiers[$i])

						$aPathSplit = _PathSplit($tous_les_fichiers[$i], $sDrive, $sDir, $sFilename, $sExtension)
						$extension=$aPathSplit[4]
						$instring=StringInStr($necessaire,$extension) ; si c'est égal à zero c'est que c'est pas trouvé, sinon ca peut etre 1 ,5,9 ...
						;au dessus ca stringinstr permet de regarder si on trouve $extension (ex: .ini) dans la chaine $necessaire (ex: .ini.txt.pdf)
					if $instring <> 0 then
						msgbox($MB_ICONINFORMATION,"SUPER "&$i&"sur"&(ubound($tous_les_fichiers)-1)&" OK !!","Le fichier "& _
						$tous_les_fichiers[$i]&@crlf&"Contient bien l'extension "&$extension&@crlf&@crlf& _
						"et on attend "&StringReplace($necessaire,".",@crlf&"."),6)
					Else
							If $extension="" then
								msgbox($MB_ICONERROR,"ERREUR","ERREUR:"&@crlf&"Il y a un dossier dans la selection.."&@crlf&"Fin de la fonction...",3)
								 $tous_les_fichiers=""
							Else
								msgbox($MB_ICONERROR,"ERREUR","ERREUR:"&@crlf&"Extension "&$extension&" trouvée..."&@crlf&"Alors qu'attendu"& _
								StringReplace($necessaire,".",@crlf&".")&@crlf&@crlf&"Fin de la fonction...",3)
								$tous_les_fichiers=""
							EndIf
					Return
					EndIf



				$i=$i+1
				WEnd
					;_ArrayDisplay($tous_les_fichiers)
					formatage_fichiers_a_concatener_via_drag($tous_les_fichiers,$origine)
		EndIf


Endif
EndFunc


func formatage_fichiers_a_concatener_via_drag($tous_les_fichiers,$origine) ; pour fonction 11 via drag and drop

	$chaine_fichiers=""
							; _arraydisplay( $tous_les_fichiers," $tous_les_fichiers dragués") SORT TOUS LES ELEMENTS DRAGUés c'et un tableau
							; c'est formaté ainsi : row0 c'est le total de fichiers dragués, row1 fichier avec path complet,row 2 idem etc.

						For $i = 1 To $tous_les_fichiers[0] ;<========== c'est en fait le nombre de fichiers dragués à la ligne row0 donné par la fonction "multidrag" qui tourne sans arret
							; on peut aussi mettre comme valeur ubound($tous_les_fichiers)-1 c'est pareil ca sort le nombre de fichiers/dossiers dragués
								;MsgBox($MB_SYSTEMMODAL, 'Test contenu', $tous_les_fichiers[$i])
						$chaine_fichiers=$tous_les_fichiers[$i]&"|"&$chaine_fichiers
						;msgbox(00,"test","$chaine_fichiers boucle: "&$chaine_fichiers) ;$chaine_fichiers ca fait la chaine path nom1|nom2|nom3
						Next

						if $tous_les_fichiers[0]=1 Then ; $tous_les_fichiers c'est un tableau
							Msgbox($MB_ICONERROR,"ERREUR","il n'y a qu'un fichier selectionné !!",3)


						Else
							;msgbox(00,"multi","il y a "&ubound($tous_les_fichiers)-1&" fichiers")
							;_arraydisplay($tous_les_fichiers)

							;$tous_les_fichiers  ==>c'est formaté ainsi : row0 c'est le total de fichiers dragués, row1 fichier avec path complet,row 2 idem etc.
							;pour la fonction de concatenation il faut formater autrement :

							; formule à appliquer pour uniquement  path sans "\" à la fin : $sPathExDr = StringRegExpReplace($sFile, "(^.*)\\(.*)", "\1")
							;car la fonction11 qui gere la concatenation a besoin que la chaine des fichiers selectionnés soit ainsi : path(sans/ à la fin)|fichier1|fichier2 etc.
							;$tous_les_fichiers est un tableau
							;pour le formater à la bonne forme de la fonction de concatenation il faut le modifier

							;msgbox(00,"test1","$chaine_fichiers fin boucle: "&$chaine_fichiers)
							$sFile=$tous_les_fichiers[1] ; ici on recupere le 1er fichier (peu importe, on pourrait un autre mais le 1er on est sur qu'il existe)
							$path= StringRegExpReplace($sFile,  "(^.*)\\(.*)", "\1") ; et on en garde que le path pour formater le tableau afin d'etre conforme à la fonction que concatenation

							_ArrayInsert($tous_les_fichiers,1,$path)
							;ATTENTION
							;La fonction arrayinsert ne met PAS à jour l'élément compteur du tableau,
							;donc si dans le tableau on a en row0 le nombre de lignes total, apres insert le nombre n'est pas mis à jour...
							;donc on fait un ubound de la nouvelle taille et on le met en row0 dans le cas ou le tableau indique le compteur
							$tous_les_fichiers[0]=ubound($tous_les_fichiers)-1
							;_ArrayDisplay($tous_les_fichiers,"avec ligne supp")

							;boucle pour retirer sur les lignes autres que row0 c'est le compte, row1 c'est une nouvelle avec le path
							;il faut donc "travailler" les lignes row2 à ubound-1 en n'en laissant que le nom du fichier
							For $i = 2 to (ubound($tous_les_fichiers)-1) step 1

								$tous_les_fichiers[$i]=StringRegExpReplace($tous_les_fichiers[$i], "^.*\\", "")
							Next

							;_ArrayDisplay($tous_les_fichiers,"Listing dragué et ordonné")
							$fichierini=$tous_les_fichiers
							call("fonction"&$origine,$fichierini)

						EndIf

EndFunc