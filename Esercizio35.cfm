<cfscript>
    fasi = ["Lettura", "Elaborazione", "Salvataggio"]
    
tempoTotInizio = getTickCount()



risultati = []

for(i=1; i<=fasi.len();i++){
fase=fasi[i]
inizio = getTickCount();
sleep(500)
fine = getTickCount();
durata = fine - inizio;

arrayAppend(risultati, {fase=fase, tempo=durata})
}
tempoTotFine = getTickCount()
durataTot = tempoTotFine - tempoTotInizio
 writeDump(var=risultati, label="Tempi delle fasi");
writeOutput("Tempo totale: " & durataTot & " ms")

</cfscript>
