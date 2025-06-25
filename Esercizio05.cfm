<cfscript>
stringa= "Anna"
spazi=0
vocali=0
NumLettere= stringa.len() 
palindroma= true

for ( i = 1; i <= stringa.len(); i++){
string=mid(stringa,i,1)
   if (string == " "){
   spazi+=1
   }
   if (string == "a" or string == "e" or string == "i" or string == "o" or string == "u"){
   vocali+=1
   }
}
FraseNoSpazi= replace(stringa," ","","all")
for ( i = 1; i <=FraseNoSpazi.len(); i++){
 for (j=FraseNoSpazi.len(); j>=1 ; j--){
 string2= mid(FraseNoSpazi,i,1)
 String3=mid(FraseNoSpazi,j,1)
   if (string2==string3){
   palindroma = true
   }else{
   palindroma= false
   }
 }
}
writeoutput("Numero totale di lettere: " & NumLettere & "<br>")
writeoutput("Numeri di vocali: " & vocali & "<br> Numeri di spazi presenti: " & spazi)
if (palindroma == true){
writeoutput("<br>La frase è palindroma")
}else{
writeoutput("<br>La frase non è palindroma")
}

</cfscript>
