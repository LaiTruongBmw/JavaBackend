/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package democlassanonymous;

/**
 * interface khong New duoc Anymous Class INhanVien() {
 *
 * @Override public void nhap() { System.out.println("AAAAAAAAAAAAAAAAA"); }
 *
 * @Override public void hien() { System.out.println("BBBBBBBBBBBBBBBBBBBBBB");
 *
 * }
 * };
 *
 * @author LaiTruong
 */
public class NhanVienCtrl implements INhanVienCtrl {

    private int maFake = 1;
    private String tenFake = "aaaaaaa";
    private int i = 2;
    int soLuong = 2;

    @Override
    public INhanVien[] taoDanhSach() {
        INhanVien[] viens = new INhanVien[soLuong];
        for (i = 0; i < viens.length; i++) {

            viens[i] = new INhanVien() {
                @Override
                public void nhap() {
                    System.out.println("aaaaaaaaaa");

                }

                @Override
                public void hien() {
                    System.out.println("ma =" + maFake);
                    System.out.println("ten =" + tenFake);
                    System.out.println("bbbbbbbbbbbb: " + i);

                }
            };

            viens[i].nhap();

        }
        return viens;
    }

    @Override
    public void hienDanhSach(INhanVien[] ds) {

        if (ds != null) {

            for (INhanVien d : ds) {
                d.hien();
            }

        }
    }

//    Test Nhan Vien Demo
//    class NhanVienDemo implements INhanVien{
//
//        @Override
//        public void nhap() {
//            System.out.println("Nhap Nhan vien demo");
//            
//        }
//
//        @Override
//        public void hien() {
//            System.out.println("Hien Nhan vien Demo");
//        }
//        
//    }
}
