<cfscript>
email= ["giulia@gmail.com","FranCesco @gmail.com", "edoardO @g mail.com","giulia@gmail.com"]
emailNoSpazi=[]
emailclean= 

for( i =1 ; i <= email.len() ; i++) {
cleanemail=replace(lcase(email[i]), " ", "", "all")
ArrayAppend(emailNoSpazi,cleanemail)
}

for( i = emailNoSpazi.len() ; i >= 2 ; i--){
for (j = i - 1 ; j >= 1; j--){
if (emailNoSpazi[i]== emailNoSpazi[j]) {
arrayDeleteAt(emailNoSpazi,i)

}
}
}
emailClean=emailNoSpazi

writeoutput(arrayToList(emailClean,",") & "<br>" )
</cfscript>
