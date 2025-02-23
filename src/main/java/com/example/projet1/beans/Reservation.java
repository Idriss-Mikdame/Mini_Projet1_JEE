package com.example.projet1.beans;

public class Reservation extends  Client  {
    private String type;
    private double prix;
    private String option;


    public Reservation() {
    }



    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public double getPrix() {
        return prix;
    }

    public void setPrix(double prix) {
        this.prix = prix;
    }

    public String getOption() {
        return option;
    }

    public void setOption(String option) {
        this.option = option;
    }
}
