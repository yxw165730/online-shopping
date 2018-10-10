package net.yw.shoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.yw.shoppingbackend.dao.ProductDAO;
import net.yw.shoppingbackend.dto.Product;

public class ProductTestCase {

	private static AnnotationConfigApplicationContext context;
	private static ProductDAO productDAO;
	private Product product;

	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("net.yw.shoppingbackend");
		context.refresh();
		productDAO = (ProductDAO) context.getBean("ProductDAO");
	}

	/*
	public voi@Testd testCRUDProduct() {
		// Create operation
		product = new Product();

		product.setName("Oppo Selfie S53");
		product.setBrand("Oppo");
		product.setDescription("Description for Oppo Selfie S53!");
		product.setUnitPrice(25000);
		product.setActive(true);
		product.setCategoryId(3);
		product.setSupplierId(3);

		// Test add function
		assertEquals("Something went wrong while inserting a new product!", true, productDAO.add(product));

		// Reading and updating the category
		product = productDAO.get(2);
		product.setName("Samsung Galaxy S7");
		assertEquals("Something went wrong while updating a new product!", true, productDAO.update(product));

		assertEquals("Something went wrong while deleting a new product!", true, productDAO.delete(product));

		// Plain listing
		assertEquals("Something went wrong while listing products!", 2, productDAO.list().size());
	}*/

	@Test
	public void testCRUDProduct() {
		// Listing active products
		assertEquals("Something went wrong while listing active products!", 2, productDAO.listActiveProducts().size());

		// Listing active products by category
		assertEquals("Something went wrong while listing active products by category!", 1,
				productDAO.listActiveProductsByCategory(3).size());

		// Listing latest count of products
		assertEquals("Something went wrong while listing active products by count!", 2,
				productDAO.getLatestActiveProducts(2).size());
	}

}
