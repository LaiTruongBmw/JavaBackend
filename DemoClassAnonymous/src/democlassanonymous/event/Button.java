/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package democlassanonymous.event;

/**
 *
 * @author LaiTruong
 */
public class Button {
    
    private IXuLyPressButton iXuLyPressButton;
    

    public IXuLyPressButton getXuLyPressButton() {
        return iXuLyPressButton;
    }

    public void setXuLyPressButton(IXuLyPressButton iXuLyPressButton) {
        this.iXuLyPressButton = iXuLyPressButton;
    }
    
    public void pressButton(){
        iXuLyPressButton.nutBiAn();
       
        // duoc frame goi khi ma pressButton va se phai chay 1 doan code nao do do Dev truyen vao
        
        
    }
    
}
