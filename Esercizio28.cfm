<cfscript>
function contrario(arr) {
alcontrario = [];
for (var i = arr.len(); i >= 1; i--) {
arrayAppend(alcontrario, arr[i]);
}
return alcontrario;
}

function invertiParole(frase){
parole=listToArray(frase," ")
parole= contrario(parole)


return arrayToList(parole," ")
}
result =invertiParole( "Parole invertite in una frase semplice")
writeoutput(result)

</cfscript>
