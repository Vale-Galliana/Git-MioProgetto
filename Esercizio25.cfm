<cfscript>
text = "ColdFusion is a dynamic and powerful language used to build web applications rapidly."
replace(text,".","","all")
testo = ListToArray(text," ")
count=0
max=-9999999999
nomeMax=""
for (i=1; i<= testo.len(); i++){
parola= testo[i]
for (i=1; i<= parola.len(); i++){
count=i
if ( count>max){
max=count
nomeMax= testo[i]
}
}
}
writeoutput("La parola più lunga nel testo: """ & text & """  è: <br> <i><b>" & nomeMax & "</i></b>") 
</cfscript>
