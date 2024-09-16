package com.cetpa;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="bookdetails")
public class Book 
{
	@Id
	@GeneratedValue
	private int bookid;
	@Column(name="book_title")
	private String title;
	@Column(name="book_author")
	private String author;
	@Column(name="no_of_copies")
	private int copies;
	private int price;
	public Book(){}
	public Book(String title, String author, int copies, int price)
	{
		this.title = title;
		this.author = author;
		this.copies = copies;
		this.price = price;
	}
	public int getBookid() {
		return bookid;
	}
	public void setBookid(int bookid) {
		this.bookid = bookid;
	}
	public String getTitle() 
	{
		return title;
	}
	public void setTitle(String title) 
	{
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public int getCopies() {
		return copies;
	}
	public void setCopies(int copies) {
		this.copies = copies;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	@Override
	public String toString() 
	{
		return "Book [bookid=" + bookid + ", title=" + title + ", author=" + author + ", copies=" + copies + ", price="+ price + "]";
	}
	
	
}
