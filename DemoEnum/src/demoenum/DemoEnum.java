/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package demoenum;

/**
 * Enum như la 1 class
 * Class cho phep them  thuoc tinh
 * Object thi co dinh
 * Thuoc tinh enum thi khong co dinh
 *
 * @author LaiTruong
 */
public class DemoEnum {
    
    public static final int ThuHai=1;
    // De final thi khong có thuoc tinh duoc

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        ThuTrongTuan obj1 = ThuTrongTuan.ThuBa;
        obj1.setMa(1);
        
        System.out.println("aaaa"+ obj1.getLbViet());
        
        switch(obj1){
            case ThuHai:
                System.out.println("Thu hai");
                break;
                case ThuBa:
                    System.out.println("Thu Ba");
                    break;
                case ThuTu:
                    System.out.println("Thu Tuuuuuuu");
                    break;
                default:
                    throw  new AssertionError();
            
        }
        
    }
    
}
