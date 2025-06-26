<cfscript>
numeri=[]
for(i=1;i<=50;i++){
arrayappend(numeri,randrange(10,100))
}
media=[]
finestra=[]
lunghezzafinestra=7
for(i=1;i<=numeri.len();i++){
lunghezza=min(lunghezzafinestra,arraylen(numeri)- i+ 1)
finestra=arraySlice(numeri,i,lunghezza)
arrayappend(media,arrayavg(finestra)
)
}
arraySort(media,"numeric")


for(i=1; i<= media.len();i++){
writeoutput(media[i] & "<br>")
}

</cfscript>
