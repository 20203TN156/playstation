<%--
  Created by IntelliJ IDEA.
  User: rabah
  Date: 16/02/2022
  Time: 0:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!doctype html>
<html lang="es">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<!--Sección del navbar-->
<nav class="navbar navbar-expand-lg navbar-light bg-white">
    <div class="container-lg">
        <a class="navbar-brand" href="#">
            <img src="img/logo.png" width="200" alt="">
        </a>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" href="inicio">Vista simulador</a>
                </li>
                <li class="nav-item border border-secondary rounded-pill">
                    <a class="nav-link active" href="#">Agregar juego</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Eliminar o editar juegos</a>
                </li>

            </ul>

        </div>
    </div>
</nav>

<!--Sección contenido-->

<div class="container mb-5">
    <div class="row mb-5">
        <div class="col-md-6 mb-5">
            ${mensaje}
            <form action="agregar_juego" method="post">
                <div class="form-group mt-3 mb-5">

                    <label for="name">Nombre</label>
                    <input class="form-control" type="text" name="name" id="name">

                    <label for="description">Descripción</label>
                    <textarea class="form-control" name="description" id="description"></textarea>

                    <label for="price">Precio</label>
                    <input type="text" name="price" id="price" class="form-control">

                    <label for="image">Imagen del juego</label>
                    <input type="file" class="form-control form-control-file" name="image" id="image">


                    <label class="mt-2">Estado de disponibilidad</label>

                    <select name="state" class="form-select">
                        <option value="Próximamente">Próximamente</option>
                        <option value="Disponible">Disponible</option>
                    </select>

                    <button type="submit" class="btn btn-outline-primary mt-4">Registrar</button>
                </div>

            </form>
        </div>
    </div>

</div>

<!--Sección footer-->

<section class="">
    <!-- Footer -->
    <footer class="text-center text-white" style="background-color: #0a4275;">
        <!-- Grid container -->
        <div class="container p-4 pb-0">
            <!-- Section: CTA -->
            <section class="">
                <p class="d-flex justify-content-center align-items-center">
                    <img src="img/logo2.png" width="100px">

                </p>
            </section>
            <!-- Section: CTA -->
        </div>
        <!-- Grid container -->

        <!-- Copyright -->
        <div class="text-center p-3" style="background-color: rgb(0, 67, 156);">
            © 2022 Copyright:
            <a class="text-white" href="#">store.playstation.com</a>
        </div>
        <!-- Copyright -->
    </footer>
    <!-- Footer -->
</section>

<!-- Optional JavaScript; choose one of the two! -->

<!-- Option 1: Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

<!-- Option 2: Separate Popper and Bootstrap JS -->
<!--
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
-->
</body>
</html>