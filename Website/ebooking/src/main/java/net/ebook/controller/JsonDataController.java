package net.ebook.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import ebookbackend.dao.BookDAO;
import ebookbackend.dto.Book;

@Controller
@RequestMapping("/json/data")
public class JsonDataController {

	@Autowired
	private BookDAO productDAO;
	

	@RequestMapping("/admin/all/products")
	@ResponseBody
	public List<Book> getAllBooksList() {		
		return BookDAO.list();
				
	}	
	
	
	@RequestMapping("/all/products")
	@ResponseBody
	public List<Book> getAllProducts() {
		
		return productDAO.listActiveBooks();
				
	}
	
	@RequestMapping("/category/{id}/products")
	@ResponseBody
	public List<Book> getProductsByCategory(@PathVariable int id) {
		
		return productDAO.listActiveBooksByCategory(id);
				
	}
	
	
	@RequestMapping("/mv/products")
	@ResponseBody
	public List<Book> getMostViewedProducts() {		
		return productDAO.getBooksByParam("views", 5);				
	}
		
	@RequestMapping("/mp/products")
	@ResponseBody
	public List<Book> getMostPurchasedProducts() {		
		return productDAO.getBooksByParam("purchases", 5);				
	}
	
	
	
	
}
