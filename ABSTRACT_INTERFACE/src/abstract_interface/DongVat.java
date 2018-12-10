/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package abstract_interface;

/**
 *
 * @author LaiTruong
 * abstrac khong new duoc Class duoc
 * Class Abs thì có nhieu ham abs
 */
public abstract class DongVat {
    private int ma;
    private String ten;

    public int getMa() {
        return ma;
    }

    public void setMa(int ma) {
        this.ma = ma;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public DongVat() {
    }

    public DongVat(int ma, String ten) {
        this.ma = ma;
        this.ten = ten;
    }
    
    //
     public abstract void an(String tenThucAn);
     
     // Đay la ham ảo cua class Dong vat
     // Chi co khuon ham , ma khong co than ham
     // Ham nay sinh ra để tat ca cac class con cua dong vat phai cai de nó
     // Khong cai khong duoc
     
     /*{
        
        // mo ta dong vat an. Viet trong tung Class con
        // Neu viet trong Từng Class con thì:
        /*
        - mat tinh da hinh
        => Phai co ham an trong Class con
        
        */
    
    
}
