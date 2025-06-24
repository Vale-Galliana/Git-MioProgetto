<cfscript>
voti=[]
for (i=1; i<=10; i++){
arrayappend(voti,randrange(0,30))
}
writeoutput("Voti generati: " & ArraytoList(voti) & "<br>")
somma=0
min= 99999999
max= -99999999
media =0
count=0
for (i=1; i<= voti.len(); i++){
somma+=voti[i]
count+=1
if (voti[i] < min){
min = voti[i]
}
if(voti[i] >max){
max=voti[i]
}
}
media= somma/count
writeoutput("La somma dei voti è: " & somma & "<br> Il voto più basso è: " & min & "<br> Il voto più alto è: " & max & "<br> La media dei voti è: " & media)
</cfscript>
