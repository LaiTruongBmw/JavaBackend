/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 * Set tương tư List Nhưng 
 *Set được sắp xếp
 * Set không lấy dc phần tử bất kì
 * Bất cập là phải ép kiểu 
 * generic đánh dấu cho nó 1 kiểu để khỏi ép kiểu
 */
package collectionapi;

import com.demo.sinhVien;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/**
 *
 * @author LaiTruong
 */
public class DemoSet {
    public static void main(String[] args) {
        
        Set set = new HashSet();
        
        for (int i = 0; i < 10; i++) {
            sinhVien sv = new sinhVien("Nguyen Van A"+i, "00"+ i, i+10);
            set.add(sv);
            // Set không dc trùng dữ liệu vì đã dc sắp xếp
            set.add(sv);
            set.add(sv);
            set.add(sv);
            
        }
        
        for (Object get : set) {
            if(get instanceof sinhVien){
                sinhVien sv = (sinhVien) get;
                System.out.println("sv : " + sv);
            }
            
        }
        // nên sử dụng Cách này
        System.out.println("*******************************");
        Iterator it = set.iterator();
        while (it.hasNext()) {
            Object object = it.next();
             if(object instanceof sinhVien){
                sinhVien sv = (sinhVien) object;
                System.out.println("sv IT: " + sv);
            }
            
        }
        
        
        
        
    }
    
}
