<cfscript>
studenti=[{nome="Edoardo",eta= 16,corso="geometra"}, {nome="alice",eta=13 ,corso="medie"},        {nome="sofia",eta=18 ,corso="turistico"},    {nome="chiara",eta=16 ,corso="turistico"},   {nome="elisabetta",eta=17 ,corso="informatica"}]

tabella="<table border='1' style= 'border-collapse:collapse;'>"
key= ["nome","eta","corso"]
tabella &= "<tr style='background-color: ##ade45c;'>"
for(i=1; i<=key.len(); i++){
tabella &= "<th style ='padding:5px; text-align:center;'>" & key[i] & "</th>"
}

tabella &= "</tr>"

for(riga=1; riga <= studenti.len(); riga+=1){
studente=studenti[riga]
tabella &= "<tr>"
for(colonna=1; colonna<= key.len(); colonna+=1){
tabella &= "<td style = 'height:50px; text-align:center;'>" & studente[key[colonna]] & "</td>"

}
tabella &= "</tr>"
}
tabella &= "</table>"
writeoutput(tabella)
</cfscript>
