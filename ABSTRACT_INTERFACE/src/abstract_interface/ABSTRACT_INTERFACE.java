/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package abstract_interface;

/**
 *
 * @author LaiTruong
 */
public class ABSTRACT_INTERFACE {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        // khai bao Dong vat
        
        DongVat dv = new GauGau();
        dv.an("Xuong");
        dv = new CucTac();
        dv.an("thoc");
    }
    
}
