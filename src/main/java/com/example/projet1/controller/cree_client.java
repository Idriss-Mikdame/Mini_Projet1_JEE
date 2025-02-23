package com.example.projet1.controller;

import com.example.projet1.beans.Client;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet("/client")
public class cree_client extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String telephone  = request.getParameter("phone");
        String email = request.getParameter("email");
        String mesage;
        if (nom.trim().isEmpty() || prenom.trim().isEmpty() || telephone.trim().isEmpty() || email.trim().isEmpty()) {
            mesage = "Vous devez remplire Tous les champs SVP";
            request.setAttribute("message", mesage);
            this.getServletContext().getRequestDispatcher("/inscription.jsp").forward(request, response);
        }else {
            mesage = "Inscription avec succes";
            request.setAttribute("message", mesage);
            Client client = new Client();
            client.setNom(nom);
            client.setPrenom(prenom);
            client.setTelephone(telephone);
            client.setEmail(email);
            request.setAttribute("client", client);
            this.getServletContext().getRequestDispatcher("/WEB-INF/infoclient.jsp").forward(request, response);
        }

    }
}
