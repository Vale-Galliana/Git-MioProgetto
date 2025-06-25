<cfscript>
f=[]
c=[]
ce=0
for(i=32; i<= 212; i += 20) {
arrayappend(f,i)
}
for(i=1; i<= f.len(); i++){
ce=(f[i] - 32) *5/9
arrayappend(c,ce)
}
tabella= "<table border='1'><tr>"
gradi=["Fahrenheit","Celsius"]
for(i=1; i<=gradi.len(); i++){
tabella &= "<th Style=' padding: 5px; text-align: center'>" & gradi[i] & "</th>" 
}
tabella &= "</tr>"
for (riga = 1; riga<= f.len(); riga+=1){
tabella &= "<tr>"
for(colonna=1; colonna<= gradi.len(); colonna+=1){
if(colonna == 1){
tabella &= "<td Style=' padding: 5px; text-align: center'>" & f[riga] & "</td>"
} else if (colonna==2) {
tabella &= "<td Style=' padding: 5px; text-align: center'>" & c[riga] & "</td>"
}
}
tabella &= "</tr>"
}
tabella &= "</table>"
writeoutput(tabella)
</cfscript>
