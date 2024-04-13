<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <!-- Enlace a Bootstrap (asegúrate de tener Bootstrap instalado o enlazado correctamente) -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+2U+OrCXaRkfjzO4f5f5Xn2lqVpSg9bM2Stqib4yG2F2emDr" crossorigin="anonymous">
    <!-- Estilos personalizados -->
    <style>
        /* Fondo degradado azul */
        body {
            background: linear-gradient(135deg, #CBD6FB, #A5F0FA);
            color: #fff;
        }

        /* Encabezado */
        header {
            text-align: center;
            padding: 100px 0;
        }

        h1 {
            font-size: 3em;
            margin: 0;
            text-transform: uppercase;
            letter-spacing: 5px;
        }

        /* Botón con efecto degradado */
        .btn {
            background: linear-gradient(45deg, #0055cc, #0099cc);
            border: none;
            color: #fff;
        }

        .btn:hover {
            background: linear-gradient(45deg, #0099cc, #0055cc);
            color: #fff;
        }

        /* Sección de contenido */
        .content {
            text-align: center;
            padding: 40px;
        }

        p {
            font-size: 1.2em;
        }

        /* Imagen con efecto de sombra */
        .rounded-img {
            border-radius: 50%;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .rounded-img:hover {
            transform: scale(1.1);
        }
    </style>
</head>
<body>
    <header>
    <h1 style="color: black; font-family: 'Arial', sans-serif; font-size: 36px; font-weight: bold;">Inmobiliaria Casagrande</h1>
        <a href="./?p=inmobiliarios" class="btn btn-lg">Ver Inmuebles</a>
    </header>
    <section class="content">
        <h2 style="color: #ED9924; font-family: 'Arial', sans-serif; font-size: 30px; font-weight: bold;">La casa de tus sueños te esta esperando</h2>
        <p style="color: black; font-family: 'Arial', sans-serif; font-size: 20px; font-weight: bold;">“No hay nada más alto, más fuerte, más sano y útil para la vida que algún buen recuerdo, especialmente un recuerdo relacionado con la infancia, con el hogar.”</p>
        <img src="uploads/tc.png" alt="Imagen Llamativa" class="img-fluid rounded-img" width="300" height="300">
    </section>
    <!-- Enlace a Bootstrap JS (asegúrate de tener Bootstrap instalado o enlazado correctamente) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-+6Q/ih4d7gk7KpP8vQF7fF2tFqAJxqE/2fZO/pXn3I5KfG5P5zU6enw5O4Z+iMs1FV" crossorigin="anonymous"></script>
</body>
</html>
