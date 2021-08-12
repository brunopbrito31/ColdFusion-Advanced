<html>
    
    <head>
        <title>Tela Principal do Programa</title>
        <meta charset = "utf-8">
    </head>
    <body>
    <cfoutput>
        <cfapplication sessionmanagement="Yes">

        <!--- <cfset structDelete(session,"pessoasCadastro") >
        <cfset structDelete(session,"contador") > --->

        <cfif NOT isDefined("session.contador") > 
            <cfset session.contador = 1 >
        </cfif>

        <cfif isDefined("form.botao") > 
            <cfif isDefined("session.pessoasCadastro") >
                <cfset session.pessoasCadastro[session.contador] = structNew()>
                <cfset session.pessoasCadastro[session.contador].nome = #form.nome#>
                <cfset session.pessoasCadastro[session.contador].email = #form.email#>
                <cfset session.pessoasCadastro[session.contador].fone = #form.fone#>
                <cfset session.contador++ >
                <!--- <cfdump  var="#session.pessoasCadastro#" label = "ja existe"> --->
            <cfelse>
                <cfset session.pessoasCadastro = arrayNew(1)>
                <cfset session.pessoasCadastro[session.contador] = structNew()>
                <cfset session.pessoasCadastro[session.contador].nome = #form.nome#>
                <cfset session.pessoasCadastro[session.contador].email = #form.email#>
                <cfset session.pessoasCadastro[session.contador].fone = #form.fone#>
                <cfset session.contador++ >
                <!--- <cfdump  var="#session.pessoasCadastro#" label = "novo"> --->
            </cfif>
        </cfif>
        
        <cfif isDefined('session.pessoasCadastro') >
            <cfdump  var="#session.pessoasCadastro#" label = "-- VISUALIZACAO --">
        </cfif>

        <form action method = "post">
            <label for = "nome">Nome </label>
            <input type = "text" id = "nome" name = "nome" required><br>
    
            <label for = "email">Email </label>
            <input type = "text" id = "email" name = "email" required><br>
    
            <label for = "fone">Fone </label>
            <input type = "tel" id = "fone" name = "fone" required><br>
    
            <input type = "submit" name = "botao" value = "Enviar">
        </form>
    </cfoutput>
    </body>
</html>