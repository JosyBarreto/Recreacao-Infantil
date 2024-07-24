package com.alegriakids.servlet;

import com.alegriakids.dao.ClienteDAO;
import com.alegriakids.model.Clientes;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/adicionarCliente")
public class ClienteServlet extends HttpServlet {

    private ClienteDAO clienteDAO = new ClienteDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");

        Clientes cliente = new Clientes();
        cliente.setNome(nome);
        cliente.setEmail(email);
        cliente.setTelefone(telefone);

        clienteDAO.adicionarCliente(cliente);

            response.sendRedirect("cliente.html");
    }
}