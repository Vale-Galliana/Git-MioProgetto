<cfscript>
N = 100
numeri=[]


for (i=2; i<=n ; i++){
arrayappend(numeri,i)
}

for (i=1; i<= numeri.len(); i++){
Primo =numeri[i]
if(primo != 0){
for (j=i+ 1;  j<= numeri.len(); j++){
if(numeri[j] != 0 and numeri[j] mod primo ==0){
numeri[j]=0
}
}
}
}
primi=[]
for(i=1; i<= numeri.len(); i++){
if(numeri[i] !=0){
arrayappend(primi,numeri[i])
}
}

writeoutput(arrayToList(primi))
</cfscript>
