<cfscript>
numRolls = 1000
dato1=0
dato2=0
ris=0
somma=[]
for(i=1; i<=numRolls; i++){
dado1=randrange(1,6)
dado2=randrange(1,6)
ris=dado1+dado2
arrayappend(somma,ris)

}
num={}
count={}
for (i=1; i<= somma.len();i++){
num=somma[i]
if( structkeyexists(count,num)){
count[num]+=1
}else {
count[num]= 1
}
}
chiavi= structkeyList(count)
chiaviArray=listtoarray(chiavi)
arraySort(chiaviArray,"numeric","asc")
for (key in chiaviArray){
writeoutput(key & ": " & count[key] & "<br>")
}
</cfscript>
