<cfquery datasource = "teste" name = "qteste">
    select nome, email from cliente
</cfquery>

<!DOCTYPE html>
<html lang="pt">
        <head>
            <title>Primeira consulta ao banco de dados</title>
            <meta charset="utf-8">
        </head>
    
        <body>

            Imprimindo a primeira query <br>

            <cfoutput query = "qteste">   
                <li>#qteste.nome#</li>
                <li>#qteste.email#</li>
            </cfoutput>
            
                        
        
            <cfdump  var="#qteste#">    
    
        </body>
</html>