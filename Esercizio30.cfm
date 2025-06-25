<cfscript>
frase="Le piante in giardino crescono velocemente"

frase= replace(frase,"a","*","all")
frase= replace(frase,"e","*","all")
frase= replace(frase,"i","*","all")
frase= replace(frase,"o","*","all")
frase= replace(frase,"u","*","all")
writeoutput(frase)
</cfscript>
