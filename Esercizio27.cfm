<cfscript>
words = ["listen", "silent", "enlist", "banana", "stone", "tones", "notes"]

anagrammi={}
count={}

for( i=1; i<= words.len(); i++){
parola= words[i]
lettere= listtoarray(mid(parola,1,len(parola)),"")
arraySort(lettere,"TextNoCase","asc")
chiave=arraytolist(lettere,"")
if (structKeyExists(anagrammi,chiave)){
arrayappend(anagrammi[chiave],parola)
}else {
anagrammi[chiave]=[parola]
}
}
for( chiave in anagrammi){
if( arraylen(anagrammi[chiave])>1){

writeoutput(arraytolist(anagrammi[chiave],",") & "<br>")
}
}

</cfscript>
