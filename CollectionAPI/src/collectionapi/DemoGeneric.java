/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package collectionapi;

import com.demo.sinhVien;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.Vector;

/**
 *
 * @author LaiTruong
 */
public class DemoGeneric {
    public static void main(String[] args) {
        
        List<sinhVien> list = new Vector<sinhVien>();
        
        list.add(new sinhVien("Nguyen Van A", "002", 11));
        list.add(new sinhVien("Nguyen Van A", "002", 11));
        list.add(new sinhVien("Nguyen Van A", "002", 11));
        
        for (sinhVien sv : list) {
            System.out.println(sv);
            
        }
        
        // sout
        System.out.println("********************************");
        Set<String> set = new HashSet<>();
        
        set.add("aaaaaaaaa");
        set.add("aaaaaaaaa");
        set.add("aaaaaaaaa");
        set.add("aaaaaaaaa");
        set.add("aaaaaaaaa");
        
        for (String string : set) {
            System.out.println(string);
            
        }
        // 
        System.out.println("*****************");
        Set<sinhVien> setSv = new HashSet<sinhVien>();
        
        setSv.add(new sinhVien("Nguyen Van A", "002", 11));
        setSv.add(new sinhVien("Nguyen Van A", "002", 11));
        setSv.add(new sinhVien("Nguyen Van A", "002", 11));
        
        for (sinhVien sv : setSv) {
            System.out.println(sv);
            
        }
        
        
    }
    
}
