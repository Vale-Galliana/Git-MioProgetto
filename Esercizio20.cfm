<cfscript>
text = "anna went to see otto and madam at noon"
testo= ListToArray(text," ")
palindrome=[]
for (i=1; i<= testo.len(); i++){
parole = testo[i]
lunghezza= parole.len()
if ( parole== reverse(parole)){
if (lunghezza<= 3){
break
} else{
arrayappend(palindrome,parole)
}
}
}
writeoutput("Le parole palindrome presenti in: ""  " & UCase(text) & " "", sono: <br>" )
for (i=1; i<= palindrome.len(); i++){
writeoutput("- " & palindrome[i] & "<br>")
}
</cfscript>
