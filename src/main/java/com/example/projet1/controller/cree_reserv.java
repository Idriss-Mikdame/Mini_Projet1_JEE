package com.example.projet1.controller;

import com.example.projet1.beans.Client;
import com.example.projet1.beans.Reservation;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet ("/reservation")
public class cree_reserv extends HttpServlet {
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
        String type = request.getParameter("type");
        String option = request.getParameter("option");
        String messag;
        Double prix;
        try {
            prix = Double.parseDouble(request.getParameter("prix"));
        }catch (NumberFormatException e){
        prix = 0.10;
        }
 if (nom.trim().isEmpty() || prenom.trim().isEmpty() || telephone.trim().isEmpty() || email.trim().isEmpty() || type.trim().isEmpty() || option.trim().isEmpty() || prix== 0.10) {
     messag = "Veuillez remplir tous les champs";
  request.setAttribute("messag", messag);
  this.getServletContext().getRequestDispatcher("/reservation.jsp").forward(request, response);
}else {
     messag = "Reservation OK";
     request.setAttribute("messag", messag);
     Client client = new Client();
     Reservation reservation = new Reservation();
    client.setNom(nom);client.setPrenom(prenom);client.setTelephone(telephone);
    reservation.setType(type);reservation.setOption(option);reservation.setPrix(prix);
    client.setReservation(reservation);

    request.setAttribute("client", client);
    this.getServletContext().getRequestDispatcher("/WEB-INF/inforeserv.jsp").forward(request, response);
 }
    }
}
