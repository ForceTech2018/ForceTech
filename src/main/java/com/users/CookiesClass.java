package com.users;

public class CookiesClass {
    private String user;
    private String pass;
    private String nowReg;
    private String medalii;
    //security
    private String avatar_url;
    private String nume;
    private String prenume;
    private String email;
    //personal
    private String sex;
    private String varsta;
    private String inaltime;
    private String greutate;
    private String nivelact;
    private String tipact;
    //String feedback;

    public String getSex() {
        return sex;
    }

    void setSex(String sex) {
        this.sex = sex;
    }

    public String getVarsta() {
        return varsta;
    }

    void setVarsta(String varsta) {
        this.varsta = varsta;
    }

    public String getInaltime() {
        return inaltime;
    }

    void setInaltime(String inaltime) {
        this.inaltime = inaltime;
    }

    public String getGreutate() {
        return greutate;
    }

    void setGreutate(String greutate) {
        this.greutate = greutate;
    }

    public String getNivelact() {
        return nivelact;
    }

    void setNivelact(String nivelact) {
        this.nivelact = nivelact;
    }

    public String getTipact() {
        return tipact;
    }

    void setTipact(String tipact) {
        this.tipact = tipact;
    }

    public String getNume() {
        return nume;
    }

    public void setNume(String nume) {
        this.nume = nume;
    }

    public String getPrenume() {
        return prenume;
    }

    public void setPrenume(String prenume) {
        this.prenume = prenume;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAvatar_url() {
        return avatar_url;
    }

    void setAvatar_url(String avatar_url) {
        this.avatar_url = avatar_url;
    }

    public String getUser() {
        return user;
    }

    public String getPass() {
        return pass;
    }

    public String getNowReg() {
        return nowReg;
    }

    public void setUser(String user) { this.user = user; }

    public void setPass(String pass) {
        this.pass = pass;
    }

    void setNowReg(String nowReg) {
        this.nowReg = nowReg;
    }

    public String getMedalii() {
        return medalii;
    }

    public void setMedalii(String medalii) {
        this.medalii = medalii;
    }
}
