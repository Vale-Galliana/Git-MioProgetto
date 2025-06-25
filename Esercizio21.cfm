<cfscript>
str = "ColdFusion Is Cool!"
count={}
str=ucase(str)
letter={}
str=replace(str," ","","all")
str=replace(str,"!","","all")
for (i=1; i<= str.len(); i++){
letter = mid(str,i,1)
if (structKeyExists(count,letter)){
count[letter]+=1
}else {
count[letter] = 1
}

}

for (key in count){
writeoutput(key & ": " & count[key] & "<br>")
}
