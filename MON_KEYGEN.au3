#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=package.ico
#AutoIt3Wrapper_Outfile=MON_KEYGEN.exe
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
;dont ask for comments lol just use it
;Key generator
;Aucune vérification n'est faite sur la 4eme série de chiffres.
;~ ;le programme sort un numero au hasard XXXX-1111-XXXX-XXXX-1
;le calcul se fait sur le tableau :
;lorsqu'on fait un tableau qui sort en lignes coupées par les "-"
;on va donc avoir 5 lignes
;mais dans le tableau la ligne n°0 c'est le nombre de lignes total
;la ligne 1 (raw1) c'est le 1er résultat
;le calcul de la 2eme série de chiffres (les 1111) vont etre remplacés par le résultat d'une opération complexe
;sur RAW0, RAW1 et RAW3
;donc dans ce code, en réalité ou pourra etre bon avec n'importe quoi en position 4 et le dernier chiffre -1
;donc par exemple PASMODIFIABLE-RESULTAT-PASMODIFIABLE-CEQUEJEVEUX-CEQUEJEVEUX


#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <Array.au3>
#include <MsgBoxConstants.au3>
#include <EditConstants.au3>
#include <StaticConstants.au3>
#include <Constants.au3>


local $processeur =""

#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("MameTools KEYGEN by Broukmiken", 353, 169, 395, 295)

GUISetBkColor(0xD2691E)


GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###



;runWait(@comSpec & ' /c ipconfig /all > "' & @scriptdir & '\ipconfig.txt"')

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
EndFunc

;~ $droite= stringright(GetProcessorId(),2)
;~ $gauche= stringleft(GetProcessorId(),2)
;~ $extremes=$gauche&$droite
;msgbox(0,"test",GetProcessorId() &" voici les 2 extremes: "&$extremes )

$Button1 = GUICtrlCreateButton("LANCER LE KEYGEN", 104, 12, 129, 50)
GUICtrlSetBkColor($button1,0x9933CC)
$Label1 = GUICtrlCreateinput("RESULTAT ICI", 104, 140, 130, 25) ; label 1 c'est la case de resultat du keygen
$processeur = GUICtrlCreateInput("",104,115,140,19)		; case entrée manuelle
$boutonradio = GUICtrlCreateRadio("Auto-identification de ce PC", 104, 70, 150, 15)
$boutonradio2 = GUICtrlCreateRadio("SAISIE MANUELLE", 104, 90, 150, 15)
GUICtrlSetState($boutonradio, $GUI_unchecked)
GUICtrlSetState($boutonradio2, $GUI_unchecked)
GUICtrlSetState($processeur, $GUI_HIDE)

$nMsg = GUIGetMsg()

  While $nMsg <> $GUI_EVENT_CLOSE

Select

		Case $nMsg= $boutonradio And BitAND(GUICtrlRead($boutonradio), $GUI_CHECKED) = $GUI_CHECKED	; bouton radio
		GUICtrlSetState($processeur, $GUI_SHOW)
			guictrlsetdata($Label1,"RESULTAT ICI")
			GUICtrlSetData($processeur,GetProcessorId())	; $processeur c'est la case d'entrée de la valeur


		Case $nMsg= $boutonradio2 ; And BitAND(GUICtrlRead($boutonradio), $GUI_CHECKED) = $GUI_CHECKED	; bouton radio
			guictrlsetdata($Label1,"RESULTAT ICI")
			GUICtrlSendMsg($processeur,$EM_SETCUEBANNER, False, "numero processeur ?")
			GUICtrlSetData($processeur,"")
			GUICtrlSetState($processeur, $GUI_SHOW)	; $processeur c'est la case d'entrée de la valeur


	case $nMsg = $processeur ;And BitAND(GUICtrlRead($processeur), $GUI_CHECKED) = $GUI_CHECKED
			;case $nMsg=$processeur ; cas où on rempli la case manuellement
		;msgbox(0,"controle processeur","activé")
		GUICtrlSetState($boutonradio, $GUI_unchecked)


		call ("keygen",$processeur)


	case  $nMsg=$Button1
		keygen()

EndSelect
$nMsg = GUIGetMsg()

WEnd





;sin - cos - answer - tan - mode

Func keygen()

		if StringLen(GUICtrlRead($processeur)) <4 Then
			MsgBox(0,"Erreur","Pas assez de numéro...",5)
		Return
		Else
		EndIf


$gauche= stringleft(GUICtrlRead($processeur),2)
$droite= stringright(GUICtrlRead($processeur),2)
$extremes=$gauche&$droite

;msgbox(0,"valeur proc",GUICtrlRead($processeur))

for $i=0 to 0

$1 = Round(Random(1000,9999),0)
$3 = Round(Random(1000,9999),0)

$4=$extremes
$code=$1&"-"&'1111'&"-"&$3&"-"&$4
$hkey = KeyCode($code)
;msgbox(0,"$hkey","$hkey "& $hkey)
While Stringlen($hkey) < 4
    $hkey = '0' & $hkey
Wend

$code=$1&"-"&$hkey&"-"&$3&"-"&$4

if $i= 0 Then
	$total=$code
Else
 $total= $total &@CRLF & $code

 EndIf




Next ;fin boucle
;msgbox(0,"RESULTAT","toutes les clés sont copiées"&@CRLF& "dans le presse-papier"&@CRLF&@CRLF& $total)

GUICtrlSetData($Label1,$total)
;GUICtrlSetData($processeur,"")
ClipPut($total)


EndFunc



func KeyCode($Code)
$qll = (StringSplit($code, "-" )) ; divise la chaine en morceaux qui sont séparés par le synbole "-"
;_ArrayDisplay($qll,"tableau de découpe") ; pour voir ce qui est effectué raw 0 correspond au total de lignes du tableau (de 1 au max)
$err = 1
For $i=0 to 2 step 1
	;msgbox(0,"valeur $i,valeur de $qll[$i]","valeur de $ "&$i&@CRLF&"valeur de $qll "&$i&" "&$qll[$i])
If $qll[$i] = "0000" Then $err = 0
Next
If $err = 1 Then
    Dim $c1,$c2,$c3
   ; $c1=sin($qll[0])	;$qll[0] correspond au 1er morceau des 4 chiffres
	$c1=cos($qll[0]);$qll[0] correspond au 1er morceau des 4 chiffres
    $c2=sin($qll[1])
    $c3=cos($qll[3])
    $A=$c1+$c2+$c3
	;msgbox(0,"valeurs","valeur $c1 "&$c1 &@CRLF& "valeur $c2 "&$c2 &@CRLF&"valeur $c3 "&$c3 &@CRLF& "total valeur $A " & $A)

    while $A>1
		;msgbox(0,"valeur de $A pour while $a>1","valeur de $A "& $A)
        $A=$A-1
    wend
    while $A<0
		;msgbox(0,"valeur de $A pour while $a<0","valeur de $A "& $A)
        $A=$A+1
    wend

	;msgbox(0,"valeur de $A suivant","valeur de $A "& $A)


    $A=round($A,4)
    $B=$A*10000
	;msgbox(0,"valeurs suivantes","valeur de $A arrondie "& $A &@CRLF& "valeur de $B "& $B )
	$test= $qll[2]
	;msgbox(0,"valeur de $qll[2] et de son entier","valeur de $qll[2] "& $test &@CRLF& "valeur de son entier "& $qll[2])
    $b = Int($b)
	;msgbox(0,"valeur $b","valeur $b "&$b)
    $b = Round($b,0)			; Calcule l'arrondi d'un nombre avec un nombre donné de décimales.
	;msgbox(0,"valeur $b","valeur $b arrondie "&$b)
    return($B)
EndIf
    return(3)
endfunc