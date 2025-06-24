<cfscript>
libri = [
    {titolo = "1984", autore = "George Orwell", anno = 1949},
    {titolo = "Fahrenheit 451", autore = "Ray Bradbury", anno = 1953},
    {titolo = "Il nome della rosa", autore = "Umberto Eco", anno = 1980},
    {titolo = "Alla ricerca del tempo perduto", autore = "Marcel Proust", anno = 1913},
    {titolo = "Divina Commedia", autore = "Dante Alighieri", anno = 1321}
];
for(i=1; i<= libri.len() - 1 ; i++){
for (j=2; j<= libri.len(); j++){
if (libri[i].anno < libri[j].anno){
temp = libri[i]
libri[i]= libri[j]
libri[j] = temp
}
}
}
for(i=1; i<= libri.len(); i++){
writeoutput("## Titolo: " & libri[i].titolo & "<br>" & "-- Autore: " & libri[i].autore & "<br>" & "--  Anno di pubblicazione: " & libri[i].anno & "<br>")
writeoutput("---------------------------------------------------<br>")
}
</cfscript>
