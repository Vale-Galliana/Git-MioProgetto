<cfscript>
emailList = "alice@example.com,bob@test.org,carol@example.com,dave@test.org,eve@sample.net"

dominio=[]
pos=0
emailArray = listToArray(emailList,",")
for (i=1; i<= emailArray.len(); i++){
email= emailArray[i]
pos= find("@",email)
  if (pos > 0) {
estrazione = mid(email,pos + 1)
arrayAppend(dominio,estrazione)
}
}


for(i=dominio.len(); i>=2; i--){
for(j=i-1; j>=1; j--){
if(dominio[i]== dominio[j]){
arrayDeleteAt(dominio,i)
}
}
}

arraySort(dominio,"textNocase","asc")

for (i=1; i<= arraylen(dominio); i++){
writeoutput(dominio[i] & "<br>")
}

</cfscript>
