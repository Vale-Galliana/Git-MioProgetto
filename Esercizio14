<cfscript>
mese = 7;
meseNome= "LUGLIO"
giorniMese = 30;
giornoInizio = 3;
giorniSettimana = ["Lun","Mar","Mer","Gio","Ven","Sab","Dom"];
 writeOutput("<h2 style='text-align:center;'>" & meseNome & "</h2>");
    writeOutput("<table border='1' style='border-collapse: collapse; width: 100%;'>");


calendario = "<table border='1' style='border-collapse: collapse;'><tr>";
for (i = 1; i <= arrayLen(giorniSettimana); i = i + 1) {
    calendario &= "<th style='padding:5px; text-align:center;'>" &
 giorniSettimana[i] & "</th>";
}
calendario &= "</tr>";

giornoCorrente = 1;

for (riga = 1; riga <= 5; riga = riga + 1) {
calendario &= "<tr>";
for (colonna = 1; colonna <= 7;colonna = colonna + 1) {
 if (riga == 1 && colonna < giornoInizio) {
 calendario &= "<td style='height:50px;'></td>";
} else if (giornoCorrente <= giorniMese) {
 if (colonna == 6 || colonna == 7) {
 calendario &= "<td style='height:50px; background:##bdd0f0; text-align:center;'>" & giornoCorrente & "</td>";
} else {
calendario &= "<td style='height:50px; text-align:center;'>" & giornoCorrente & "</td>";
}
giornoCorrente = giornoCorrente + 1;
} else {
calendario &= "<td style='height:50px;'></td>";
}
} 

calendario &= "</tr>";

}
calendario &= "</table>";
writeOutput(calendario);


</cfscript>
