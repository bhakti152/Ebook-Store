package ebookbackend.dao;

import java.util.List;

import ebookbackend.dto.Book;

public interface BookDAO {

	Book get(int productId);
	List<Book> list();	
	boolean add(Book product);
	boolean update(Book product);
	boolean delete(Book product);

	List<Book> getBooksByParam(String param, int count);	
	
	
	// business methods
	List<Book> listActiveBooks();	
	List<Book> listActiveBooksByCategory(int categoryId);
	List<Book> getLatestActiveBooks(int count);
	
}
