<cfscript>
prodotti=[{nome="Matita",prezzo=3.50, qnt=24},{nome="Penna",prezzo=2, Qnt=50},{nome="Libro",prezzo=4.99, Qnt=70}]
somma =0
for ( i = 1; i <= prodotti.len(); i++){
prodotto= prodotti[i]
tot= prodotto.prezzo * prodotto.qnt
writeoutput(prodotto.nome & " prezzo totale: " & tot & "<br>")
somma += tot
}
writeoutput("la somma del valore totale del magazzino è di: " & somma & " euro")
</cfscript>
