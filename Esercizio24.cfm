<cfscript>
numeri = [5, 10, 15, 20]
count=0
num=[]

for (i=1; i<= numeri.len() ; i++){
count+=numeri[i]
arrayappend(num,count)
}

writeoutput(arraytolist(num))

</cfscript>
