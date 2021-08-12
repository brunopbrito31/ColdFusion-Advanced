<html language = "pt">
    <head>
        <title>Resultado do Cadastro </title>
        <meta charset = "utf-8">
    </head>

    <body>
        <cfoutput>
            <cfif isDefined("form.botao")>
                <cfset Pessoa = structNew()>
                <cfset Pessoa.nome = #form.nome#>
                <cfset Pessoa.email = #form.email#>
                <cfset Pessoa.fone = #form.fone#>
                <h1>Pessoa Cadastrada: </h1><br>
                <li>Nome: #Pessoa.nome#</li>
                <li>Email: #Pessoa.email#</li>
                <li>Telefone: #Pessoa.fone#</li>
                <cfelse>
                    situacao inexperada    
            </cfif>
        </cfoutput>
    </body>

</html>


