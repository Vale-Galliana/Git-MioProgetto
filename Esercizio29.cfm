<cfscript>
numeri=[]
quadrati=[]

for(i=1;i<=10;i++){
arrayappend(numeri,i)
arrayappend(quadrati,i*i)
}
titolo=["Numeri","Quadrati"]
tabella = "<table border='1'><tr>"
for(i=1; i<= 2;i++){
tabella &= "<th style='padding:5px; text-align:center'>" & titolo[i] & "</th>"
}
tabella &= "</tr>"
for(riga=1;riga<=numeri.len();riga+=1){
tabella &= "<tr>"
for(colonna=1;colonna<=2;colonna+=1){
if(colonna==1){
tabella &= "<td style='padding:5px; text-align:center'>" & numeri[riga] & "</td>"
}else if (colonna ==2){
tabella &= "<td style='padding:5px; text-align:center'>" & quadrati[riga] & "</td>"
}

}
tabella &= "</tr>"
}
tabella &= "</table>"
writeoutput(tabella)
</cfscript>
