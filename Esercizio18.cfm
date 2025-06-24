<cfscript>
function ripetizioni(nomi){
count={}

 for(i=1; i<= nomi.len(); i++){
nome= nomi[i]
 if (structKeyExists(count,nome)){
 count[nome] +=1
 }else{
 count[nome]=1

 }
 } 
 

 return count
}
persone = [
  "Alice", "Andrea", "Luca", "Sofia", "Anna", "Marco", "Andrea","Paolo", "Alessia", "Luca","Giulia", "Anna", "Elisa","Andrea", "Marta"
];

risultato= ripetizioni(persone)
 
 for (nome in risultato){ 
    writeOutput( nome& ":" & risultato[nome] & "<br>");
}

</cfscript>
