<cfscript>
prodotti=[{nome="Matita",prezzo=3.50, qnt=5},{nome="Penna",prezzo=2, Qnt=50},{nome="Libro",prezzo=4.99, Qnt=70}]
somma =0
max = -99999999
prodottoMax= ""
for ( i = 1; i <= prodotti.len(); i++){
prodotto= prodotti[i]
tot= prodotto.prezzo * prodotto.qnt
if ( prodotto.qnt < 10){
writeoutput(prodotto.nome & "-" & prodotto.prezzo & "-" & prodotto.qnt & "<br>")
}
somma += tot
if (prodotto.prezzo> max){
max = prodotto.prezzo
prodottoMax= prodotto.nome
}
}
writeoutput("la somma del valore totale del magazzino è di: " & somma & " euro <br>" & " il prodotto più caro è: " & prodottoMax & " con " & max & " prezzo unitario")
</cfscript>
