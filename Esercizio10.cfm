<cfscript>
studenti= [{nome="edoardo", cognome="romeo",voti=[8,6,9,7]},{nome="alice", cognome="galli",voti=[4,7,6,7]},{nome="sofia", cognome="rossi",voti=[9,10,3,5]}]
studentimedia=[]
for (i = 1; i<= studenti.len(); i++){
studente=studenti[i]
somma =0
cont=0
for (j = 1; j<= studente.voti.len(); j++){
voto = studente.voti[j]
cont++
somma+= voto
}
media= somma/cont

if ( media >= 6){
writeoutput("Studente: " & studente.nome & " - Media: " & media &"- PROMOSSO <br>")
}else{
writeoutput("Studente: " & studente.nome & " - Media: " & media &"- BOCCIATO <br>")

}

arrayAppend(studentimedia,{nome = studente.nome , media= media})
}

for(i=1; i<= studentimedia.len() - 1; i++){
for (j=2; j <= studentimedia.len(); j ++) {
if (studentimedia[i].media < studentimedia[j].media){
temp=studentimedia[i] 
studentimedia[i] =studentimedia[j] 
studentimedia[j] = temp
}
}
}
writeoutput("dal migliore al peggiore:<br>")

for (i = 1; i <= arrayLen(studentimedia); i++) {
    writeOutput("Studente: " & studentimedia[i].nome & " - Media: " & studentimedia[i].media & "<br>");
}
</cfscript>
