
package com.javatpoint;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import javax.servlet.*;


public class MyListener implements ServletContextListener{

	public void contextInitialized(ServletContextEvent arg0) {
		
		Connection con=null;
	try{
		ResultSet rs;
		//Class.forName("oracle.jdbc.driver.OracleDriver");
                
               String datapath="jdbc:mysql://localhost:3306/online_quiz";
		//con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
		Class.forName("com.mysql.jdbc.Driver");
                con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/online_quiz","root","");
		
		
//		PreparedStatement ps2= con.prepareStatement("CREATE SEQUENCE JAVATPOINT MINVALUE 1 MAXVALUE 999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE");
//		ps2.executeUpdate();
//		PreparedStatement ps=(PreparedStatement) con.prepareStatement("CREATE TABLE QUIZCONTACT (NAME VARCHAR(4000),EMAIL VARCHAR(4000),PHONE VARCHAR(4000),MESSAGE VARCHAR(4000))");
//		ps.executeUpdate();
//		PreparedStatement ps4=(PreparedStatement) con.prepareStatement("CREATE TABLE QUIZINFO (SUBJECT VARCHAR(4000),QUIZNAME VARCHAR(4000))");
//		ps4.executeUpdate();		
//		
//	
//		PreparedStatement  ps5=(PreparedStatement) con.prepareStatement("CREATE TABLE  QUIZQ(NAME VARCHAR(4000),EMAIL VARCHAR(4000),PHONE VARCHAR(4000),QUESTION VARCHAR(4000))");
//		ps5.executeUpdate();
//		
//		
//		ps5= (PreparedStatement) con.prepareStatement("CREATE TABLE  QUIZQUES(QUESTION VARCHAR(4000),OPTION1 VARCHAR(4000),OPTION2 VARCHAR(4000),OPTION3 VARCHAR(4000),OPTION4 VARCHAR(4000),ANSWER VARCHAR(4000),QUIZNAME VARCHAR(4000),QID VARCHAR(4000),DESCRIPTION VARCHAR(4000),CONSTRAINT QUIZQUES_PK PRIMARY KEY (QID) ENABLE)");
//		ps5.executeUpdate();
//		
//		
//		ps5= (PreparedStatement) con.prepareStatement("CREATE TABLE  QUIZREGISTER (USERNAME VARCHAR(4000),USERPASS VARCHAR(4000),CATEGORY VARCHAR(4000),EMAIL VARCHAR(4000))");
//		ps5.executeUpdate();
//		Statement stmt=(Statement) con.createStatement();
//		stmt.executeUpdate("CREATE TRIGGER  BI_QUIZINFO before insert on QUIZINFO for each row begin select JAVATPOINT.nextval into :NEW.QUIZNAME from dual;end");
//		stmt.executeUpdate("CREATE TRIGGER  BI_QUIZQUES before insert on QUIZQUES for each row begin select JAVATPOINT.nextval into :NEW.QID from dual;end");
		}	
	
		
	    catch(Exception e){
	    	e.printStackTrace();
	    	
	    }
	    }
	    
	    public void contextDestroyed(ServletContextEvent arg0) {
		System.out.println("project undeployed");
		
	}
}
