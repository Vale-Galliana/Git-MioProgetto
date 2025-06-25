<cfscript>
for (i = 1; i <= 50; i++) {
 group = int((i - 1) / 7);
color = (group mod 2 == 0) ? "black" : "red";
writeOutput("<span style='color:" & color & "'>" & i & "</span> ");
}
</cfscript>
