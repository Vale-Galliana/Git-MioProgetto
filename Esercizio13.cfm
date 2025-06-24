<cfscript>
function password(lunghezza){
caratteri = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZè+òàù-_.:,;?!'1234567890"
pass=""
for(i=1;i<=lunghezza;i++){
indice=randrange(1,caratteri.len())
pass &= mid(caratteri,indice,1)
}
return pass

}
lunghezza= 12
passwordGenerata= password(lunghezza)
writeoutput("password generata: " & EncodeForHTML(passwordGenerata))
</cfscript>
