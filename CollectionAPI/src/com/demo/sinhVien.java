/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.demo;

/**
 *
 * @author LaiTruong
 */
public class sinhVien {
    private String ten;
    private String ma;
    private int tuoi;


    public String getTen() {
        return ten;
    }

    public sinhVien(String ten, String ma, int tuoi) {
        this.ten = ten;
        this.ma = ma;
        this.tuoi = tuoi;
    }
    
    

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getMa() {
        return ma;
    }

    public void setMa(String ma) {
        this.ma = ma;
    }

    public int getTuoi() {
        return tuoi;
    }

    public void setTuoi(int tuoi) {
        this.tuoi = tuoi;
    }

    @Override
    public String toString() {
        return "sinhVien{" + "ten=" + ten + ", ma=" + ma + ", tuoi=" + tuoi + '}';
    }
    
    
    
    
    
}
