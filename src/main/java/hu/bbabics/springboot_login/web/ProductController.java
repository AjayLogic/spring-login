package hu.bbabics.springboot_login.web;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import hu.bbabics.springboot_login.model.Product;
import hu.bbabics.springboot_login.model.User;
import hu.bbabics.springboot_login.service.ProductService;
import hu.bbabics.springboot_login.validator.ProductFormValidator;

@Controller
public class ProductController {

    private ProductService productService;
    
    @Autowired
    private ProductFormValidator formValidator;

    @Autowired
    public void setProductService(ProductService productService) {
        this.productService = productService;
    }

    @RequestMapping(value = "/products", method = RequestMethod.GET)
    public String list(Model model){
        model.addAttribute("products", productService.listAllProducts());
        System.out.println("Returning products:");
        return "products";
    }

    @RequestMapping("product/{id}")
    public String showProduct(@PathVariable Integer id, Model model){
        model.addAttribute("product", productService.getProductById(id));
        return "productshow";
    }

    @RequestMapping("product/edit/{id}")
    public String edit(@PathVariable Integer id, Model model){
        model.addAttribute("product", productService.getProductById(id));
        return "productform";
    }

    @RequestMapping("product/new")
    public String newProduct(Model model){
        model.addAttribute("product", new Product());
        return "productform";
    }
   
    @RequestMapping(value = "product", method = RequestMethod.POST)
    public String saveProduct(@ModelAttribute("product") Product product, BindingResult bindingResult){
    	formValidator.validate(product, bindingResult);
    	if (bindingResult.hasErrors()) {
            return "productform";
        }
        productService.saveProduct(product);

        return "redirect:/product/" + product.getId();
    }

}
