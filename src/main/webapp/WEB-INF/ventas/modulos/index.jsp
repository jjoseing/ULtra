<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <script>
    $( function() {
      $( ".widget input[type=submit], .widget a, .widget button" ).button();
      $( "button, input, a" ).click( function( event ) {
        event.preventDefault();
      } );
    } );
    </script>        
    <h1>Hello World! MVC DMP</h1>
    <br/>
    <a href="/pers" class="btn btn-warning">Ir Persona</a>

    <button class="ui-button ui-widget ui-corner-all">A button element</button>

    <input class="ui-button ui-widget ui-corner-all" type="submit" value="A submit button">

    <a class="ui-button ui-widget ui-corner-all" href="#">An anchor</a>  
        
  <button class="btn waves-effect waves-light" type="submit" name="action">Submit
    <i class="material-icons right">send</i>
  </button>       
  <br/>
  Mensaje: 
  ${message}
   <br/>
   
   <p> <spring:message code="welcome.greeting" arguments="${startMeeting}" /> </p> 
   <br/>
   Cantidad Registros: 
    <br/>
    
    <c:if test="${!empty ListaPersona}">
    <table class="table">
      <thead class="thead-dark">
        <tr>
          <th scope="col">#</th>
          <th scope="col">Nombres</th>
          <th scope="col">Apellidos</th>
          <th scope="col">Telefono</th>
          <th scope="col">Direccion</th>
          <th scope="col">Email</th>
          <th scope="col">DNI</th>
        </tr>
      </thead>
      <tbody>
          <c:forEach items="${ListaPersona}" var="dato">
                <tr>
                  <td>${dato.idPersona}</td>
                  <td>${dato.nombres}</td>
                  <td>${dato.apellidos}</td>
                  <td>${dato.telefono}</td>
                  <td>${dato.direccion}</td>
                  <td>${dato.email}</td>
                  <td>${dato.dni}</td>
                </tr>
        </c:forEach> 
      </tbody>
    </table>   
    </c:if>