package com.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;

import javax.servlet.Servlet;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.DAO.ProductService;
import com.EntityClassess.Product;


@Controller
public class MyController {

	@Autowired
	ProductService service;
	 @Autowired
	  ServletContext req;
	 @RequestMapping("/")
	 public String show()
	 {
		  System.out.println("Controller");
		  return "index";
	 }
	
	 
	 @RequestMapping("/ViewAll")  
	 public ModelAndView getList() {  
	  List<Product> productList = service.getList();  
	  return new ModelAndView("ViewAll", "productList", productList);  
	 }  
	 
	 
	 
	  @RequestMapping(value="/save",method=RequestMethod.POST)
	 
	  public String save(@ModelAttribute("product") Product product,BindingResult result) throws UnsupportedEncodingException
	  {
		 
		  System.out.println(product.getCtg());
		  String p=req.getRealPath("/");
		  //System.out.println("*****"+product.getFile1());
		  String path=product.getFilePath(p,req.getContextPath());
	
		  System.out.println("Context path"+req.getContextPath()+"############"+path); 
		  service.addProduct(product);
		  
		  return "admin";
	  }
	  @RequestMapping(value="/upload" ,method=RequestMethod.GET)
	  @ResponseBody
	  public String upload(@RequestParam("file")String name)
	  {
		  System.out.println("inside upload"+name);
		  
		  
		  return "AddProduct";
	  }
	  
	  
	  @RequestMapping("/delete")
	  public String deleteProduct(@RequestParam("id")String prodid)
	  {
		  service.deleteProduct(prodid);
		  return "redirect:ViewAll";
		  
	  }
	  
	  
	  @RequestMapping("/Edit")  
	  public ModelAndView editUser(@RequestParam String id,  
	    @ModelAttribute Product product) {  
	   Product productObject =service.getProductbyId(id); 
	   System.out.println("Edit:"+productObject.getPname());
	   return new ModelAndView("Edit", "productObject", productObject);  
	  }  
	   
	  @RequestMapping("/update")  
	  public ModelAndView updateUser(@ModelAttribute Product product) {  
		  System.out.println(""+product.getProdid());
	   service.updateProduct(product);  
	   return new ModelAndView("redirect:ViewAll");  
	    
	   
	 }  
	  
	  
	  @RequestMapping("/Login")
	  public String login()
	  {
		  return "Login";
	  }
	  
	  @RequestMapping("/Register")
	  public String register()
	  {
		  return "Register";
	  }
	  
	  @RequestMapping("/admin")
	  public String admin()
	  {
		  return "admin";
	  }
	  
	  @RequestMapping(value="/AddProduct")
	  public ModelAndView addProduct()
	  {
		  Product p=new Product();
		  ModelAndView model=new ModelAndView("AddProduct");
		  model.addObject(p);
		  return model;
	  }
	  
	  
	  @RequestMapping("/ViewRecord")
	  public ModelAndView getRecord(@RequestParam String id,  
				    @ModelAttribute Product product) {  
				   Product productObject =service.getProductbyId(id); 
				   System.out.println("view:"+productObject.getPname());
				   return new ModelAndView("ViewRecord", "productObject", productObject);  
				  }  
	  
}
