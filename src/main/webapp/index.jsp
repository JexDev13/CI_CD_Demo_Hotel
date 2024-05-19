
<%--<jsp:useBean id="allRooms" scope="request" type="java.util.List<model.entity.Room>"/>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel NewYork - Reservas</title>
    <link rel="stylesheet" href="./css/index.css"> <!-- Enlazar el archivo CSS externo -->
    <script>
        // Función para mostrar el formulario cuando se presiona el botón "Reservar"
        function mostrarFormulario(nombreHabitacion, numeroHabitacion) {
            // Obtener el formulario y el párrafo para mostrar el nombre y número de la habitación
            var formulario = document.getElementById("formulario");
            var nombreHabitacionElemento = document.getElementById("nombreHabitacion");
            var numeroHabitacionElemento = document.getElementById("numeroHabitacion");
            var numeroHabitacionInput = document.getElementById("numeroHabitacionInput");
            // Establecer el nombre y número de la habitación en los elementos correspondientes
            nombreHabitacionElemento.textContent = nombreHabitacion;
            numeroHabitacionElemento.textContent = numeroHabitacion;
            numeroHabitacionInput.value = numeroHabitacion;

            // Mostrar el formulario
            formulario.style.display = "block";
        }

        function cerrarFormulario() {
            var formulario = document.getElementById("formulario");
            formulario.style.display = "none";

            // Limpiar los campos del formulario
            document.getElementById("cedula").value = "";
            document.getElementById("checkIn").value = "";
            document.getElementById("checkOut").value = "";
            document.getElementById("cantidadPersonas").value = "";
        }

    </script>
</head>
<body>
<header>
    <h1 id="titulo">Gran Hotel NewYork</h1>
</header>

<main>
    <h1>Prueba CI#1</h1>
    <h1>Prueba CI#2: Configurar Jenkins CI</h1>
    <h1>Prueba CI#3: Automatizacion del webhook</h1>
    <h1>Prueba CI#4: Automatizacion del compose</h1>
    <h1>Prueba CI#5: Prueba en el pipeline</h1>
<%--    <c:forEach items="${allRooms}" var="room">--%>
<%--        <div class="habitacion" >--%>
<%--            asdlkajskl--%>
<%--        </div>--%>
<%--    </c:forEach>--%>

    <div id="formulario" style="display: none;">
        <button id="cerrarFormulario" onclick="cerrarFormulario()">X</button>
        <h2>Reservar Habitacion</h2>

        <form action="reservar-servlet" method="POST"> <!-- Cambiado a ReservaServlet y método POST -->

            <p>Nombre de la habitacion: <span id="nombreHabitacion"></span></p>
            <p>Numero de la habitación: <span id="numeroHabitacion"></span></p>

            <input type="hidden" id="numeroHabitacionInput" name="numeroHabitacion">

            <label for="cedula">Cedula:</label>
            <input type="text" id="cedula" name="cedula" required><br>

            <label for="nombre">Nombre:</label> <!-- Agregado campo de nombre -->
            <input type="text" id="nombre" name="nombre" required><br>

            <label for="checkIn">Check In:</label>
            <input type="date" id="checkIn" name="checkIn" required><br>

            <label for="checkOut">Check Out:</label>
            <input type="date" id="checkOut" name="checkOut" required><br>

            <label for="cantidadPersonas">Cantidad de Personas:</label>
            <input type="number" id="cantidadPersonas" name="cantidadPersonas" min="1" required><br>

            <input type="submit" value="Reservar">
        </form>

    </div>

</main>
</body>
</html>
