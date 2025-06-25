<cfscript>
numero=[]
for(i=1; i<=100; i++){
if( i mod 3 ==0 and i mod 5 ==0){
arrayappend(numero,"FizzBuzz")
} else if ( i mod 3 ==0){
arrayappend(numero,"Fizz")
}else if ( i mod 5==0){
arrayappend(numero,"Buzz")
} else {
arrayappend(numero,i)
}
}
for(i=1; i<= numero.len(); i++){
writeoutput(numero[i] & "<br>")
}
</cfscript>
