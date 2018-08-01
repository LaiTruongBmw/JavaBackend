/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 *List kế thừ thừ Object
 * List cho phép trùng hợp dữ liệu
 */
package collectionapi;

import com.demo.sinhVien;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author LaiTruong
 */
public class CollectionAPI {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        List list = new ArrayList();
//        list.add("ffffff");
//        list.add("ffffff");
//        list.add("ffffff");
//        list.add("ffffff");
//        list.add("ffffff");
        for (int i = 0; i < 10; i++) {
            sinhVien sv = new sinhVien("Nguyen Van A"+i, "00"+ i, i+10);
            // add object vào trong List
            list.add(sv);
//            list.add(sv); List cho phép trùng hợp dữ liệu
            
        }
        // Get Object từ List ra
        for (int i = 0; i < list.size(); i++) {
            Object get = list.get(i);
            if(get instanceof sinhVien){
                sinhVien sv = (sinhVien) get;
                System.out.println("sv: " + sv);
            }
            
        }
        System.out.println("*******************************************");
        // For được viết tắt từ For ở trên. Lọc dữ liệu lấy ra từ list.
        // Mỗi lần lọc lấy ra cho get hứng lại giá trị
        for (Object get : list) {
            if(get instanceof sinhVien){
                sinhVien sv = (sinhVien) get;
                System.out.println("sv: " + sv);
            }
            
        }
        // Removed
       
        
        
    }
    
}
