<cfscript>
numeri= [1,45,23,98,4,16,26,45.34,65,89]
max = -9999999
min = 99999999
media=0
somma =0
pari=[]
for (i=1 ; i<=numeri.len(); i++){
if (numeri[i] > max){
max = numeri[i]
} 
if ( numeri[i] < min) {
min = numeri[i]
}
somma+=numeri[i]
if (numeri[i] mod 2 == 0){
arrayappend(pari,numeri[i])
}
}
media = somma/ numeri.len()
writeoutput("il max è: " & max & "<br> il min è: " & min & "<br> la media è: " & media)
writeoutput("<br> i numeri pari sono:")
writeoutput(arraytoList(pari))
</cfscript>
