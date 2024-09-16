package com.cetpa;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

public class BookDao 
{
   private static SessionFactory factory;
   private static Session ses; 
   public static Transaction t;
   static
   {
	   factory=new Configuration().configure().buildSessionFactory();
	   ses=factory.openSession();
	   t=ses.getTransaction();
   }
   public static void saveBook(Book book)
   {
	   t.begin();
	   ses.save(book);
	   t.commit();
   }
   public static Book getBook(int bid)
   {
	   Book b=ses.get(Book.class, bid);
	   return b;
   }
   public static void deleteBook(Book book)
   {
	   t.begin();
	   ses.delete(book);
	   t.commit();
   }
}
