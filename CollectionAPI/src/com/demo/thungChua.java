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
public class thungChua <T>{
    
    //Trong class Thung chua: T duoc coi nhu 1 class
    // Cu the 
    
    private T t;

    public T getT() {
        return t;
    }

    public void setT(T t) {
        this.t = t;
    }
    
    public static void main(String[] args) {
        thungChua<sinhVien> thungChuaSv = new thungChua<>();
    }
    
}
