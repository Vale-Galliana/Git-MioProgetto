<cfscript>
vendita= [{mese="Gennaio", vendite= 90}, {mese="Febbraio", vendite= 120}, {mese="Marzo", vendite=150},   {mese="Aprile" , vendite= 86},      {mese="Maggio", vendite= 280}, {mese="Giugno", vendite= 190},  {mese="Luglio", vendite= 160}, {mese="Agosto", vendite= 99},  {mese="Settembre", vendite= 232},   {mese="Ottobre", vendite= 79}, {mese="Novembre", vendite = 200}, {mese="Dicembre", vendite= 250}]

venditeAnnuali=0
mediaMensie=0
max=-999999999
meseMax=""

for(i=1; i<= vendita.len(); i++){
venditeAnnuali+=vendita[i].vendite
  if(vendita[i].vendite > max){
  max= vendita[i].vendite
  meseMax= vendita[i].mese
  }
}

mediaMensile= venditeAnnuali/12
// elenco puntato
writeOutput('<ul>');
writeoutput("<li>Il totale delle vendite annuali è di: " & venditeAnnuali & "</li>" 
& "<li> La media delle vendite mensili è di: " & mediaMensile & "</li>"  & "<li> Il mese con il numero massimo delle vendite è: " & meseMax & "</li>"  )

</cfscript>
