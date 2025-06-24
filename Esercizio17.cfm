<cfscript>
function structure(nomi){

conA=[]
senzaA=[]

for (i = 1; i <= arraylen(nomi); i++){
 nome= nomi[i]
 primalet= lcase(left(nome,1))
 if(primalet == "a"){
 arrayappend(conA,nome)
 }else {
  arrayappend(senzaA,nome)
 }
 }

 return {
 senza : senzaA,
 con : conA
 }
 }
 nomi=["edoardo","alice","sofia","alessia","mari","andrea","luca"]
 risultato = structure(nomi)
 
  writeOutput("Nomi che non iniziano con A: <br>")
for (i = 1; i <= arraylen(risultato.senza);i++){ 
    writeOutput("-" & risultato.senza[i] & "<br>");
}

 writeOutput("<br> Nomi che iniziano con A: <br>")
for (i = 1; i <= arraylen(risultato.con);i++){ 
    writeOutput("-" & risultato.con[i] & "<br>");
}

</cfscript>
