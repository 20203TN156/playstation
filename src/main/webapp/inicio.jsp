<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
                <li class="nav-item border border-secondary rounded-pill">
                    <a class="nav-link active" href="#">Vista simulador</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="agregar_juego">Agregar juego</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Eliminar o editar juegos</a>
                </li>

            </ul>
            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="" aria-label="">
                <button class="btn btn-outline-primary" type="submit">Buscar</button>
            </form>

        </div>
    </div>
</nav>

<!--Sección de los populars del momento-->

<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="https://cdn-cf.gamivo.com/image_mainbanner.jpg?f=416975&n=41349578190523206.jpg&h=03e5cbe06acfff0c2242de44bca5e200" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="https://cdn-cf.gamivo.com/image_mainbanner.jpg?f=415266&n=12987655864586278.jpg&h=ac8fda136647e01835c9b0f5af802a70" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="https://cdn-cf.gamivo.com/image_mainbanner.jpg?f=414367&n=15919933799777308.jpg&h=d0e5fc0d4d25b310b39a72d2ffa91150%20class=" class="d-block w-100" alt="...">
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>

<!--Sección de los más aclamados-->
<div class="container-lg mb-5">

    <div class="container mt-5">
        <h1>Los más aclamados</h1>
        <div class="row row-cols-1 row-cols-md-3 g-4">

            <c:forEach items="${listaJuegos}" var = "juego" varStatus="status">

                <div class="col-12 col-sm-6 col-md-4 col-lg-3 mt-5">
                    <div class="card">
                        <img src="${pageContext.request.contextPath}/ServletGetFile?id=${juego.id_videojuego}" class="rounded" alt="" >
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>


<div class="container-lg mb-5">
    <!--Sección de juegos próximos-->
    <div class="container mt-5">
        <h1>Próximamente</h1>
        <div class="row row-cols-1 row-cols-md-3 g-4">

            <c:forEach items="${listaJuegosProx}" var = "juego" varStatus="status">

                <div class="col-12 col-sm-6 col-md-4 col-lg-3 mt-5">
                    <div class="card">
                        <img src="${pageContext.request.contextPath}/ServletGetFile?id=${juego.id_videojuego}" class="rounded" alt="" >
                    </div>
                </div>
            </c:forEach>
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
                    <img  src="img/logo2.png" width="100px">

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