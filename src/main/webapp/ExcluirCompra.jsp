<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Excluir Compra</title>
    <!-- Importando o Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilo.css">
    <script src="${pageContext.request.contextPath}/resources/js/tema.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 30px;
            margin-top: 50px;
        }
        .btn-custom {
            background-color: #dc3545; /* Vermelho */
            color: white;
        }
        .btn-custom:hover {
            background-color: #c82333; /* Vermelho escuro */
        }
        .form-label {
            color: #007bff; /* Azul */
        }
    </style>
</head>
<body>

    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <a class="navbar-brand" href="EventoListar?next=home.jsp">Bilheteria</a>
            <form class="d-flex mx-auto" style="width: 50%;" action="EventoListar" method="get">
                <input class="form-control me-2" type="search" placeholder="Pesquisar eventos, shows, etc..." aria-label="Search">
                <button class="btn btn-outline-primary" type="submit">Buscar</button>
            </form>
            <div>
                <a href="EventoListar?next=eventolistar.jsp" class="btn btn-primary me-2">Listar evento</a>
                <a href="CadastrarEvento.jsp" class="btn btn-success">Cadastrar Evento</a>
                <a href="CompraListar?next=CompraListar.jsp" class="btn btn-success">Listar Compras</a>
                <button onclick="alterarTema('claro')" class="btn btn-success"><i class="bi bi-cloud-sun"></i></button>
                <button onclick="alterarTema('escuro')" class="btn btn-success"><i class="bi bi-cloud-rain-heavy-fill"></i></button>
            </div>
        </div>
    </nav>

    <div class="container">
        <h2 class="text-center text-danger">Excluir Compra</h2>
        <form action="/sisbilheteria/DeletarCompra" method="post" onsubmit="return confirmarExclusao();">
            <div class="mb-3">
                <label for="compra_id" class="form-label">ID da Compra:</label>
                <input type="number" id="compra_id" name="compra_id" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-custom btn-lg btn-block">Excluir Compra</button>
        </form>
    </div>

    <script>
        function confirmarExclusao() {
            return confirm("Tem certeza que deseja excluir esta compra? Esta a��o n�o pode ser desfeita.");
        }
    </script>

    <!-- Importando o Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>
