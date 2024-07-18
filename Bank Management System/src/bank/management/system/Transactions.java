
package bank.management.system;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class Transactions extends JFrame implements ActionListener{
    
    JButton deposit, cashwithdrawal, fastcash, ministatement, pinchange, balanceEnquiry, exit;
    String pinnumber;
    Transactions(String pinnumber){
        this.pinnumber = pinnumber;
        setLayout(null);
        
        ImageIcon i1 = new ImageIcon(ClassLoader.getSystemResource("icons/atm.jpg"));
        Image i2 = i1.getImage().getScaledInstance(900, 900, Image.SCALE_DEFAULT);
        ImageIcon i3 = new ImageIcon(i2);
        JLabel image = new JLabel(i3);
        image.setBounds(0,0,800,800);
        add(image);
        
        JLabel text = new JLabel("Please select your Transaction");
        text.setBounds(165, 240, 700, 35);
        text.setForeground(Color.WHITE);
        text.setFont(new Font("System", Font.BOLD, 16));
        image.add(text);
        
        deposit = new JButton("Deposit");
        deposit.setBounds(110,370,150,25);
        deposit.addActionListener(this);
        image.add(deposit);
        
        cashwithdrawal = new JButton("Cash Withdrawal");
        cashwithdrawal.setBounds(310,370,150,25);
        cashwithdrawal.addActionListener(this);
        image.add(cashwithdrawal);
        
        fastcash = new JButton("Fast Cash");
        fastcash.setBounds(110,405,150,25);
        fastcash.addActionListener(this);
        image.add(fastcash);
        
        ministatement = new JButton("Mini Statement");
        ministatement.setBounds(310,405,150,25);
        ministatement.addActionListener(this);
        image.add(ministatement);
        
        pinchange = new JButton("Pin Change");
        pinchange.setBounds(110,440,150,25);
        pinchange.addActionListener(this);
        image.add(pinchange);
        
        balanceEnquiry = new JButton("Balance Enquiry");
        balanceEnquiry.setBounds(310,440,150,25);
        balanceEnquiry.addActionListener(this);
        image.add(balanceEnquiry);
        
        exit = new JButton("Exit");
        exit.setBounds(310,475,150,25);
        exit.addActionListener(this);
        image.add(exit);
        
        setSize(800, 800);
        setLocation(250,0);
        setUndecorated(true);
        setVisible(true);
        
        
    }
    
    public void actionPerformed(ActionEvent ae){
        if(ae.getSource() == exit){
            System.exit(0);
        }else if(ae.getSource()==deposit){
            setVisible(false);
            new Deposit(pinnumber).setVisible(true);
        }else if(ae.getSource()==cashwithdrawal){
            setVisible(false);
            new Withdrawal(pinnumber).setVisible(true);
        }else if (ae.getSource() == fastcash){
            setVisible(false);
            new FastCash(pinnumber).setVisible(true);
        }else if (ae.getSource() == pinchange){
            setVisible(false);
            new PinChange(pinnumber).setVisible(true);
        
        }else if (ae.getSource() == ministatement){
            new MiniStatement(pinnumber).setVisible(true);
        }else if (ae.getSource() == balanceEnquiry){
            setVisible(false);
            new BalanceEnquiry(pinnumber).setVisible(true);
        }
        
    }
    public static void main(String[] args){
        new Transactions("");
}
}
