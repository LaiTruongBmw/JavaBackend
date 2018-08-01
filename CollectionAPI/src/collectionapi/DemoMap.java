/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package collectionapi;

import com.demo.sinhVien;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/**
 *
 * @author LaiTruong
 */
public class DemoMap {
    public static void main(String[] args) {
        Map map = new HashMap();
        
        map.put("key", "value");
        map.put(56, "value");
        map.put(55, "value");
        map.put(5.5, "value");
//        map.put(new sinhVien(), "value");
        Map<String, sinhVien> mapSv = new HashMap<String,sinhVien>();
        mapSv.put("001", new sinhVien("abc acb", "001",0));
        mapSv.put("002", new sinhVien("abc acb", "002",0));
        mapSv.put("003", new sinhVien("abc acb", "003",0));
        mapSv.put("004", new sinhVien("abc acb", "004",0));
        System.out.println("****************************");
        System.out.println(mapSv.get("002"));
        System.out.println("***********************");
        
        Set<String> dsKey = mapSv.keySet();
        
        for (String key : dsKey) {
            System.out.println(mapSv.get(key));
        }
        
        // Set entry la tach thanh 1 hang de get set key vs value
        
        System.out.println("*********************");
        Set<Map.Entry<String, sinhVien>> entry = mapSv.entrySet();
        
        for (Map.Entry<String, sinhVien> entry1 : entry) {
            System.out.println("entrykey: "+entry1.getKey()+ "  entryValue: " + entry1.getValue());
            
        }
        
    }
    
}
