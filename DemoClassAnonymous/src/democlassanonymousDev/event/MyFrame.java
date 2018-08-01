/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package democlassanonymousDev.event;

import democlassanonymous.event.Button;
import democlassanonymous.event.IXuLyPressButton;

/**
 *
 * @author LaiTruong
 */
public class MyFrame {
    // Su dung nut bam
    Button nutBam = new Button();
    // Gia su co 1 ham dai dien cho nguoi dung bam nut
    
    public void nguoiDungBamNut(){
        // moi khi nguoi dung bam nut ham nay dc goi va ham nay dc code truoc
        nutBam.pressButton();
        
    }
    // Yeu cau an nut thi hen ra ten chuong trinh
    private String tenChuongTrinh = " Day la phan mem quan li nhan vien";
    
     public MyFrame(){
         nutBam.setXuLyPressButton(new IXuLyPressButton(){
             @Override
             public void nutBiAn(){
                 System.out.println("DAY LA PHAN MEM: " + tenChuongTrinh);
             }
            
         });
     }
     
     public static void main(String[] args) {
        MyFrame frame = new MyFrame();
        frame.nguoiDungBamNut();
         frame.nguoiDungBamNut();
        
    }
    
    
    
}
