/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package demoenum;

/**
 * Khong dc phep new object nao ben class khac
 * @author LaiTruong
 */
public enum ThuTrongTuan {
    
    ThuHai(1,"Thu Hai","Mon"),ThuBa(2,"Thu Ba","Tues"),ThuTu(3,"Thu Tu", "Wed"),ThuNam(4,"Thu Nam","Thus");
    
    // Khai bao thuoc tinh
    private int ma;
    private String lbViet;
    private String lbAnh;

    private ThuTrongTuan(int ma, String lbViet, String lbAnh) {
        System.out.println("ma: " + ma);
        this.ma = ma;
        this.lbViet = lbViet;
        this.lbAnh = lbAnh;
    }
    
    

    public int getMa() {
        return ma;
    }

    public void setMa(int ma) {
        this.ma = ma;
    }

    public String getLbViet() {
        return lbViet;
    }

    public void setLbViet(String lbViet) {
        this.lbViet = lbViet;
    }

    public String getLbAnh() {
        return lbAnh;
    }

    public void setLbAnh(String lbAnh) {
        this.lbAnh = lbAnh;
    }
    
    
    
}
