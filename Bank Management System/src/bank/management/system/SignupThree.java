package bank.management.system;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.util.*;

public class SignupThree extends JFrame implements ActionListener {

    JRadioButton r1, r2, r3, r4;
    JCheckBox c1, c2, c3, c4, c5, c6, c7;
    JButton submit, cancel;
    String formno;
    SignupThree(String formno) {
        this.formno = formno;
        setLayout(null);

        setTitle("NEW ACCOUNT APPLICATION FORM - PAGE 3");

        JLabel l1 = new JLabel("Page 3: Account Details");
        l1.setFont(new Font("Raleway", Font.BOLD, 22));
        l1.setBounds(280, 40, 400, 30);
        add(l1);

        JLabel type = new JLabel("Account Type:");
        type.setFont(new Font("Raleway", Font.BOLD, 22));
        type.setBounds(100, 100, 200, 25);
        add(type);

        r1 = new JRadioButton("Saving Account");
        r1.setFont(new Font("Raleway", Font.BOLD, 14));
        r1.setBackground(Color.WHITE);
        r1.setBounds(100, 150, 250, 17);
        add(r1);

        r2 = new JRadioButton("Fixed Deposit Account");
        r2.setFont(new Font("Raleway", Font.BOLD, 14));
        r2.setBackground(Color.WHITE);
        r2.setBounds(350, 150, 250, 17);
        add(r2);

        r3 = new JRadioButton("Current Account");
        r3.setFont(new Font("Raleway", Font.BOLD, 14));
        r3.setBackground(Color.WHITE);
        r3.setBounds(100, 200, 250, 17);
        add(r3);

        r4 = new JRadioButton("Recurring Deposit Account");
        r4.setFont(new Font("Raleway", Font.BOLD, 14));
        r4.setBackground(Color.WHITE);
        r4.setBounds(350, 200, 250, 17);
        add(r4);

        ButtonGroup groupaccount = new ButtonGroup();
        groupaccount.add(r1);
        groupaccount.add(r2);
        groupaccount.add(r3);
        groupaccount.add(r4);

        JLabel cardno = new JLabel("Card Number:");
        cardno.setFont(new Font("Raleway", Font.BOLD, 22));
        cardno.setBounds(100, 250, 200, 25);
        add(cardno);

        JLabel number = new JLabel("XXXX-XXXX-XXXX-0078");
        number.setFont(new Font("Raleway", Font.BOLD, 22));
        number.setBounds(330, 260, 250, 25);
        add(number);

        JLabel cardDetails = new JLabel("(Your 16 Digit Card Number)");
        cardDetails.setFont(new Font("Raleway", Font.BOLD, 12));
        cardDetails.setBounds(100, 290, 200, 15);
        add(cardDetails);

        JLabel pin = new JLabel("PIN:");
        pin.setFont(new Font("Raleway", Font.BOLD, 22));
        pin.setBounds(100, 340, 200, 25);
        add(pin);

        JLabel pinnumber = new JLabel("XXXX");
        pinnumber.setFont(new Font("Raleway", Font.BOLD, 22));
        pinnumber.setBounds(330, 350, 200, 25);
        add(pinnumber);

        JLabel pinDetails = new JLabel("(Your 4 Digit PIN Number)");
        pinDetails.setFont(new Font("Raleway", Font.BOLD, 12));
        pinDetails.setBounds(100, 380, 200, 15);
        add(pinDetails);

        JLabel services = new JLabel("Services Required:");
        services.setFont(new Font("Raleway", Font.BOLD, 22));
        services.setBounds(100, 430, 200, 25);
        add(services);

        c1 = new JCheckBox("ATM CARD");
        c1.setBackground(Color.white);
        c1.setFont(new Font("Raleway", Font.BOLD, 14));
        c1.setBounds(100, 480, 200, 25);
        add(c1);

        c2 = new JCheckBox("INTERNET BANKING");
        c2.setBackground(Color.white);
        c2.setFont(new Font("Raleway", Font.BOLD, 14));
        c2.setBounds(350, 480, 200, 25);
        add(c2);

        c3 = new JCheckBox("MOBILE BANKING");
        c3.setBackground(Color.white);
        c3.setFont(new Font("Raleway", Font.BOLD, 14));
        c3.setBounds(100, 530, 200, 25);
        add(c3);

        c4 = new JCheckBox("EMAIL & SMS ALERTS");
        c4.setBackground(Color.white);
        c4.setFont(new Font("Raleway", Font.BOLD, 14));
        c4.setBounds(350, 530, 200, 25);
        add(c4);

        c5 = new JCheckBox("CHEQUE BOOK");
        c5.setBackground(Color.white);
        c5.setFont(new Font("Raleway", Font.BOLD, 14));
        c5.setBounds(100, 580, 200, 25);
        add(c5);

        c6 = new JCheckBox("E-STATEMENT");
        c6.setBackground(Color.white);
        c6.setFont(new Font("Raleway", Font.BOLD, 14));
        c6.setBounds(350, 580, 200, 25);
        add(c6);

        c7 = new JCheckBox("I hereby declare that the above information is correct to the best of my knowledge");
        c7.setBackground(Color.white);
        c7.setFont(new Font("Raleway", Font.BOLD, 12));
        c7.setBounds(100, 630, 600, 25);
        add(c7);

        submit = new JButton("Submit");
        submit.setFont(new Font("Raleway", Font.BOLD, 14));
        submit.setBounds(270, 680, 100, 30);// Corrected bounds
        submit.addActionListener(this);
        add(submit);

        cancel = new JButton("Cancel");
        cancel.setFont(new Font("Raleway", Font.BOLD, 14));
        cancel.setBounds(440, 680, 100, 30);  // Corrected bounds
        cancel.addActionListener(this);
        add(cancel);

        getContentPane().setBackground(Color.WHITE);
        setSize(850, 800);
        setLocation(230, 0);
        setVisible(true);
        setBackground(Color.white);
    }

    SignupThree() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public void actionPerformed(ActionEvent ae){
        if(ae.getSource() == submit){
          String accountType =null;
          if(r1.isSelected()){
              accountType = "Saving Account";
          }else if (r2.isSelected()){
              accountType = "Fixed Deposit Account";
          }else if(r3.isSelected()){
              accountType = "Current Account";
          }else if(r4.isSelected()){
              accountType = "Reccuring Deposit Account";
          }
          
          Random random = new Random();
          String cardnumber = "" +  Math.abs((random.nextLong() % 90000000L)+ 5040936000000000L);
          
          String pinnumber = "" + Math.abs((random.nextLong() % 9000L) + 1000L);
          
          String facility ="";
                  if (c1.isSelected()){
                      facility = facility + "ATM Card";   
                  } else if(c2.isSelected()){
                      facility = facility + "Internet Banking";
                  }else if (c3.isSelected()){
                      facility = facility + "Mobile Banking";
                  }else if (c4.isSelected()){
                      facility = facility + "EMAIL & SMS Alerts";
                  }else if (c5.isSelected()){
                      facility = facility + "Cheque Book";
                  }else if(c6.isSelected()){
                      facility = facility + "E-Statement";
                  }
          
                  try{
                      if (accountType.equals("")){
                          JOptionPane.showMessageDialog(null, "Account Type is Required");
                      }else {
                          Conn conn = new Conn();
                          String query1 = "insert into signupthree values('"+formno+"', '"+accountType+"','"+cardnumber+"','"+pinnumber+"','"+facility+"')";
                          String query2 = "insert into login values('"+formno+"', '"+cardnumber+"','"+pinnumber+"')";
                          conn.s.executeUpdate(query1);
                          conn.s.executeUpdate(query2);
                          
                          JOptionPane.showMessageDialog(null, "Card Number: " + cardnumber + "\n Pin: "+pinnumber);
                          
                           setVisible(false);
                           new Login(pinnumber).setVisible(true);
                         
                      }
                           
                  }catch (Exception e){
                      System.out.println(e);
                  }
                  
        } else if(ae.getSource() == cancel){
            setVisible(false);
            new Login().setVisible(true);
    }
    }
    public static void main(String[] args) {
        new SignupThree("").setVisible(true);
    }
}

 
