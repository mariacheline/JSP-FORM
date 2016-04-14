<%-- 
    Document   : index
    Created on : 02-Apr-2016, 00:25:37
    Author     : mariacheline
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Client Side</title>
        
        <style>
            body{
                font-family: Verdana, Helvetica, sans-serif, Georgia;
                font-size: 18px;
                color: #222;
                margin: 0;
                padding: 0;
                word-spacing: 3px;
                line-height: 1.5;
            }
            
            .pagewrap{
                width: 750px;
                max-width: 100%;
                height: auto;
                margin: 2% auto;
                box-shadow: 0 1px 10px rgba(0,0,0,.3);
                background-color: #fdfdfd;
                padding: 20px;
            }
            
            table{
                margin: 2% 3%;
            }
            
            td{
                padding: 1.5% 0 1.5% 0;
            }
            
            p{
                word-spacing: 3px;
                letter-spacing: 2px;
                padding: 15px 0 20px 24px;
            }
            
            input, select{
                margin-left: 10%;
            }
            
            input[type=text]{
                padding:5px; 
                border: 2px solid #ccc;
                border-radius: 5px;
                width: 400px;
                height: 20px;
                padding-left: 10px;
                font-size: 20px;
                color: #666;
            }
            
            input[type=text]:focus {
                border-color: #333;
            }
            
            select{
                padding:5px; 
                border: 2px solid #ccc;
                border-radius: 5px;
                width: 70px;
                height: 30px;
                padding-left: 10px;
                font-size: 14px;
                color: #666;
            }
            
            select:focus {
                border-color: #333;
            }
            
            input[type=checkbox]{
                border: 2px solid #ccc;
                border-radius: 5px;
                width: 18px;
                height: 20px;
            }
            
            input[type=text]:focus {
                border-color: #333;
            }
            
            input[type=radio]{
                border: 2px solid #ccc;
                border-radius: 5px;
                width: 18px;
                height: 20px;
            }
            
            input[type=text]:focus {
                border-color: #333;
            }
            
            
            
            input[type=submit] {
                padding:5px 13px; 
                background:#ccc; 
                border:0 none;
                cursor:pointer;
                -webkit-border-radius: 5px;
                -moz-border-radius: 5px;
                -ms-border-radius: 5px;
                border-radius: 5px;
                margin: auto;
            }
            
            input[type=reset] {
                padding:5px 15px; 
                background:#ccc; 
                border:0 none;
                cursor:pointer;
                -webkit-border-radius: 5px;
                -moz-border-radius: 5px;
                -ms-border-radius: 5px;
                border-radius: 5px;
                margin: auto;
            }
            .buttons{
                text-align: center;
                padding: 20px 0;
            }
            
            textarea{
                font-size: 13px;
                color: #666;
            }
            
            #settings, #connessione{
                width: 90px;
            }
        </style>
        
    </head>
    <body>
        <div class="pagewrap">
        <p>Il seguente questionario vuole essere un modo per conoscere<br>
            le aspettative, i desideri e le opinioni dei nostri visitatori.<br>
            Mediante il Vostro aiuto saremo in grado di offrire un servizio migliore
        e, si spera, più utile.</p>
        
        <div id="errore" style="color: red; font-size: 12px; text-align: center;"></div>
        
        <form method="post" action="#" onsubmit="return validate()">
            <!-- Primo gruppo di tabella -->
            <table>
                <tbody>
                    <tr>
                        <td>Nome:</td>
                        <td><input type="text" value="" name="name" id="nome" size="30" maxlength="30"></td>
                    </tr>
                    
                    <tr>
                        <td>Cognome:</td>
                        <td><input type="text" value="" name="surname" id="cognome" size="30" maxlength="30"></td>
                    </tr>
                    
                    <tr>
                        <td>Età:</td>
                        <td><select name="age" size="1" id="eta">
                            <option value="selectcard">---</option>
                            <% int i; for (i = 16; i <=80; i++){
                            out.print("<option>" + i + "</option>");
                            }
                            %>
                            </select>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>Iscritto all'anno: </td>
                        <td><select name="enrolled" id="iscritto" size="1">
                            <option value="selectcard">---</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>                            
                        </td>
                    </tr>
                    
                    <tr>
                        <td>Corso di laurea</td>
                        <td><input type="text" value="" name="course" id="corso" size="30" maxlength="30"></td>
                    </tr>
                    
                    <tr>
                        <td>Tipo</td>
                        <td><input type="text" value="" name="type" id="tipo" size="30" maxlength="30"></td>
                    </tr>
                </tbody>
            </table>
            <!-- Fine primo gruppo della tabella-->
                            
            <!-- Secondo gruppo di tabella -->
            <table>
                <tbody>
                    <tr>
                        <td>Come sei venuto a conoscenza del sito?
                            <br><input type="radio" value="tramite un amico" name="conoscenza">tramite un amico
                            <br><input type="radio" value="tramite un docente" name="conoscenza">tramite un docente
                            <br><input type="radio" value="tramite la bacheca" name="conoscenza">tramite la bacheca
                            <br><input type="radio" value="su internet" name="conoscenza">su internet
                            <br><input type="radio" value="altro" name="conoscenza">altro (specificare) <input type="text" value="" name="conoscenza" id="altro">
                        </td>
                    </tr>
                    
                    <tr>
                        <td>Come giudichi l'impostazione?
                        <select name="impostazione" id="settings" size="1">
                            <option value="selectcard">---</option>
                            <option value="ottima">ottima</option>
                            <option value="buono">buono</option>
                            <option value="sufficiente">sufficiente</option>
                            <option value="non buono">non buono</option
                        </select>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>Qual'è la sezione che più ti ha interessato?
                            <br><input type="checkbox" name="sezione" value="Info sui docenti">Info sui docenti
                            <br><input type="checkbox" name="sezione" value="Info sugli insegnamenti">Info sugli insegnamenti
                            <br><input type="checkbox" name="sezione" value="Info su ricevimenti">Info su ricevimenti
                            <br><input type="checkbox" name="sezione" value="Il materiale didattico">Il materiale didattico
                            <br><input type="checkbox" name="sezione" value="La news">Le news
                            <br><input type="checkbox" name="sezione" value="Le proposte di tesi">Le proposte di tesi
                        </td>
                    </tr>
                    
                    <tr>
                        <td>Da dove ti colleghi?
                            <select name="connection" id="connessione" size="1">
                                <option value="selectcard">---</option>
                                <option value="casa">casa</option>
                                <option value="università">università</option>
                                <option value="ufficio">ufficio</option>
                                <option value="altro">altro</option>
                            </select>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>Ritieni che il sito del CLEI sia un sito utile?
                            <br><input type="radio" value="si" name="utile">Sì
                            <br><input type="radio" value="no" name="utile">No
                        </td>
                    </tr>
                    
                    <!-- Questo campo è opzionale -->
                    <tr>
                        <td>Che cosa ti piacerebbe trovare sul sito?
                            <br><br>
                            <textarea name="textarea" value="" id="textarea" rows="10" cols="95" maxlength="1000"></textarea>
                        </td>
                    </tr>
                </tbody>
            </table>
            <!-- Fine secondo gruppo della tabella -->
            <div class="buttons">
            <input type="submit" name="submit" id="submit" value="submit">
            <input type="reset" name="reset" id="reset" value="clear">
            </div>
        </form>
        </div>
                            
            <footer>
                <p style="color: #666; text-align: center; font-size: 10px;">&copy;mariacheline</p>         
            </footer>
            
                
            <script>
            function validate(){                              
                /** validation for texts **/
                var nam = document.getElementById('nome').value;
                var surnam = document.getElementById('cognome').value;
                var course = document.getElementById('corso').value;
                var type = document.getElementById('tipo').value;
                
                if (nam === null || nam === ""){
                    error("Iserisce il nome!");
                    return false;
                }
                if(surnam === null || surnam === ""){
                    error("Inserisce il cognome");
                    return false;
                }
                if(course === null || course === ""){
                    error("Iserisce un corso di laurea!");
                    return false;
                }
                if(type === null || type === ""){
                    error("Inserisce il tipo");
                    return false;
                }
                /** end of validation for texts **/
                
                /** validation for radio buttons **/
                var conoscenza = document.getElementsByName("conoscenza");
                /** In case altro is selected the user must input something in the textbox **/
                var altro = document.getElementById('altro').value;
                var useful = document.getElementsByName("utile");
                  
                if(conoscenza[0].checked === false && conoscenza[1].checked === false
                        && conoscenza[2].checked === false && conoscenza[3].checked === false
                        && (conoscenza[4].checked === false || altro === null || altro === "")){
                    error("Indicare come sei venuta a conoscenza del sito");
                    return false;
                }
                if (useful[0].checked === false && useful[1].checked === false){
                    error("Indicare se il sito CLEI è utile");
                    return false;
                }
                /** end of validation for radio buttons **/
                
                /** validation for select boxes **/
                var age = document.getElementById('eta').value;
                var enroll = document.getElementById('iscritto').value;
                var setting = document.getElementById('settings').value;
                var connect = document.getElementById('connessione').value;
                
                if (age === "selectcard"){
                    error("Seleziona l'età");
                    return false;
                }
                if (enroll === "selectcard"){
                    error("Seleziona l'anno iscritto");
                    return false;
                }
                if(setting === "selectcard"){
                    error("Seleziona come giudichi l'impostazione");
                    return false;
                }
                if (connect === "selectcard"){
                    error("Indicare da dove ti colleghi");
                    return false;
                }
                /** end validation for select boxes **/
                
                /** validation for checkboxes **/
                var section = document.getElementsByName("sezione");
                    for(var i = 0; i < section.length; i++){
                        if(section[i].checked === false){
                            error("Seleziona la sezione che ti ha piu interessato.");
                            return false;
                    }else{
                            return true;
                    }
                }
                /** end of validation for checkboxes **/
                
               /** Textarea is optional so no validation for it **/
               return true;
            }
           
            /** function to call when display an error message **/
            /** function da chiamare nel caso di errore **/
            function error(message){
                var err = document.getElementById('errore').innerHTML = message;;
            }
            </script>
    </body>
</html>
