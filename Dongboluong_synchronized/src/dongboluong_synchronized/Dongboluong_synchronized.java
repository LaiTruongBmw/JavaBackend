/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dongboluong_synchronized;

import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author LaiTruong
 */
public class Dongboluong_synchronized {

    static Data dataShare;

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        dataShare = new Data();
        dataShare.setFlag(1); // khởi tạo
        // Đánh dấu cờ 1--> A sdụng, 2--> B sdụng, 3--> C sdụng  

        Thread threadA = new Thread(new Runnable() {
            @Override
            public void run() {
                synchronized (dataShare) {
                    for (int i = 0; i < 100; i++) {
                        try {
                            if (dataShare.getFlag() == 1) {
                                int a = new Random().nextInt(100);
                                dataShare.setA(a);
                                System.out.println("iA= " +i);
                                System.out.println("A=" + dataShare.getA());
                                Thread.sleep(10);
                                dataShare.setFlag(2); // Chuyển cờ qua 2 làm việc
                                dataShare.notifyAll();// đánh thức tất cả luông slepp
                            } else {
                                // thì tạm dừng chờ đợi
                                dataShare.wait();
                            }
                        } catch (InterruptedException ex) {
                            Logger.getLogger(Dongboluong_synchronized.class.getName()).log(Level.SEVERE, null, ex);
                        }
                    }
                }
            }
        });

        Thread threadB = new Thread(new Runnable() {
            @Override
            public void run() {
                synchronized (dataShare) {
                    for (int i = 0; i < 100; i++) {
                        try {
                            if (dataShare.getFlag() == 2) {
                                int a = new Random().nextInt(100);
                                dataShare.setB(a);
                                System.out.println("iB= " + i);
                                System.out.println("B=" + dataShare.getB());
                                Thread.sleep(8);
                                dataShare.setFlag(3);
                                dataShare.notifyAll();
                            } else {
                                dataShare.wait();
                            }
                        } catch (InterruptedException ex) {
                            Logger.getLogger(Dongboluong_synchronized.class.getName()).log(Level.SEVERE, null, ex);
                        }
                    }
                }
            }
        });

        Thread threadC = new Thread(new Runnable() {
            @Override
            public void run() {
                synchronized (dataShare) {
                    for (int i = 0; i < 100; i++) {
                        try {
                            if (dataShare.getFlag() == 3) {
                                int a = new Random().nextInt(100);
                                System.out.println("iC= "+i);
                                System.out.println("Tổng = " + dataShare.tinhTong());
                                Thread.sleep(9);
                                dataShare.setFlag(1);
                                dataShare.notifyAll();
                            } else {
                                dataShare.wait();
                            }
                        } catch (InterruptedException ex) {
                            Logger.getLogger(Dongboluong_synchronized.class.getName()).log(Level.SEVERE, null, ex);
                        }
                    }
                }
            }
        });
        //
        threadA.start();
        threadB.start();
        threadC.start();
    }

}
