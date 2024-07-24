
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- clientes.jsp -->
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clientes - Alegria Kids</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <header>
        <div class="logo-container">
            <img src="img/logo0101.jpg" alt="Logo Alegria Kids">
        </div>
        <nav>
            <ul>
                <li><a href="index.html">Início</a></li>
                <li><a href="sobre.html">Sobre</a></li>
                <li><a href="servicos.html">Serviços</a></li>
                <li><a href="contato.html">Contato</a></li>
                <li><a href="cliente.html">Clientes</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <section class="clientes">
            <h1>Clientes</h1>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nome</th>
                        <th>Email</th>
                        <th>Telefone</th>
                        <th>Ações</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="cliente" items="${clientes}">
                        <tr>
                            <td>${cliente.id}</td>
                            <td>${cliente.nome}</td>
                            <td>${cliente.email}</td>
                            <td>${cliente.telefone}</td>
                            <td>
                                <form action="excluir-cliente" method="post">
                                    <input type="hidden" name="id" value="${cliente.id}">
                                    <button type="submit">Excluir</button>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </section>
    </main>
    <footer>
        <div class="social">
            <a href="#"><img src="img/whatsapp.jpg" alt="Whatsapp"></a>
            <a href="#"><img src="img/icone face.jpg" alt="Facebook"></a>
            <a href="#"><img src="img/stagram.jpg" alt="Instagram"></a>
        </div>
        <p>&copy; 2024 Alegria Kids. Todos os direitos reservados.</p>
    </footer>
</body>
</html>
