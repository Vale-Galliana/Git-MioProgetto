<cfscript>
rubrica = [{Nome="edoardo", Telefono= 3323475132},{Nome="valentina", Telefono= 2436189790},{Nome="chiara", Telefono= 1254329008},{Nome="alice", Telefono= 3424538976}]
for (i=1 ; i<= rubrica.len(); i++){
contatto = rubrica[i]
writeoutput("Contatto " & i & ": " & contatto.Nome & " - " & contatto.Telefono & "<br>")
}
c = 1
trov = false
CercaNome= "edoardo"
while ( c<= rubrica.len() and trov == false){
contatto = rubrica[c]
if (lcase(contatto.nome) == lcase(Cercanome)){
trov = true
}else {
c++
}
}
if (trov){
writeoutput("Il nome cercato esiste")
}else {
writeoutput("Il nome cercato non esiste")
}
</cfscript>
