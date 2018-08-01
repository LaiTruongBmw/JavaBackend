/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package innerClass;

/**
 * iner Class khai báo thì được
 *
 * @author LaiTruong
 */
public class SinhVien {
    private int ma;
    private String ten;
    
    class SinhVienNamNhat{
        private int tuoi;
        
        public void hienThongtin(){
            System.out.println("Tuoi: " + this.tuoi);
            System.out.println("Ma: " + ma);
            System.out.println("Ma: " + ten);
        }
        
    }
    public static void main(String[] args) {
        SinhVien sv = new SinhVien();
        sv.ma = 1;
        sv.ten = "aaaa";
        
//        SinhVienNamNhat svnn = new SinhVienNamNhat(); Loi tao moi khong dc
        SinhVienNamNhat svnn = sv.new SinhVienNamNhat();
        // svnn la 1 object nam trong nam trong sv
        
        svnn.hienThongtin();
        
    }
    
}
