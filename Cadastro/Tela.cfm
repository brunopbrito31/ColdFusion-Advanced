<html>
    <head>
        <title>Tela Principal do Programa</title>
        <meta charset = "utf-8">
    </head>
    <body>



        <cfif isDefined("form.botao")>

            <cfset session.teste = "asdasda">

           <cfif structKeyExists(session, "pessoasCadastro") AND isDefined("session.pessoasCadastro")>
          
            <cfelse>

           </cfif>

            
            <cfoutput>
                <cfset pessoasCadastradas = ArrayNew(1)>
                <cfset pessoasCadastradas[1] = structNew()>
                <cfset pessoasCadastradas[1].nome = #form.nome#>
                <cfset pessoasCadastradas[1].email = #form.email#>
                <cfset pessoasCadastradas[1].fone = #form.fone#>


                <cfset session.pessoasCadastro = pessoasCadastradas>
    
                <!---<h2>Ultima Pessoa Cadastrada</h2><br>
                Nome: #session.pessoasCadastro.nome#
                Email: #session.pessoasCadastro.email#
                Telefone: #session.pessoasCadastro.fone#
                -------------------------------------->
            </cfoutput>

            <cfdump var ="#session#">


        </cfif>
        <h1> Cadastro de Pessoa: <br>
        <!---cfinclude  template= "Cadastro.cfm" --->

        

        <form action = "Tela.cfm" method = "post">
            <label for = "nome">Nome </label>
            <input type = "text" id = "nome" name = "nome" required><br>
    
            <label for = "email">Email </label>
            <input type = "text" id = "email" name = "email" required><br>
    
            <label for = "fone">Fone </label>
            <input type = "tel" id = "fone" name = "fone" required><br>
    
            <input type = "submit" name = "botao" value = "Enviar">
        </form>

    </body>

</html>