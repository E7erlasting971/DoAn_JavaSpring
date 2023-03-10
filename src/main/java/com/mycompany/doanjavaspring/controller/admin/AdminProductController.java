/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.doanjavaspring.controller.admin;

import com.mycompany.config.Utils;
import com.mycompany.database.DBProduct;
import com.mycompany.model.Admin;
import com.mycompany.model.Product;
import com.mycompany.model.ProductType;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author truongthanh
 */
@Controller
public class AdminProductController {

    DBProduct dbq = new DBProduct();
    // admin's home page
    @RequestMapping(value = "/admin/adminIndex")
    public String adminIndex(HttpSession session, @ModelAttribute() Admin admin, Model model) {
        if (session.getAttribute("admin") == null) {
            return "redirect:/admin/adminLogin";
        }
        Admin a = (Admin) session.getAttribute("admin");
        admin.setId(a.getId());
        admin.setUsername(a.getUsername());
        admin.setPassword(a.getPassword());
        admin.setRole(a.getRole());
        session.setAttribute("admin", admin);
        return "/admin/adminIndex";
    }
    // end admin homepage
    
    // admin's adding product page
    @RequestMapping(value = "/admin/adminAddProduct")
    public String adminAddProduct(HttpSession session, @ModelAttribute() Admin admin, Model model) {
        if (session.getAttribute("admin") == null) {
            return "redirect:/admin/adminLogin";
        }
        Admin a = (Admin) session.getAttribute("admin");
        admin.setId(a.getId());
        admin.setUsername(a.getUsername());
        admin.setPassword(a.getPassword());
        admin.setRole(a.getRole());
        session.setAttribute("admin", admin);
        // transfer data from db to dropdown list in view
        List<ProductType> producttypes = dbq.GetProductTypeList();
        if (producttypes!=null){
            System.out.println("type is not null");
            model.addAttribute("producttypes", producttypes);
        }
        else{
            System.out.println("type is null");
        }
        return "admin/adminAddProduct";
    }

    @RequestMapping(value = "/admin/adminAddProduct", method = RequestMethod.POST)
    public String adminAddProduct(HttpSession session, @ModelAttribute() Product product,
            @RequestParam("ProductType") String productType, Model model) {

        //lay gia tri cua value trong dropdown list
        System.out.println(productType);
        System.out.println(product.getIdProductType());
        product.setIdProductType(Integer.parseInt(productType));
        boolean is_reg = dbq.addProduct(product);

        if (is_reg == true) {
            return "redirect:/admin/adminListProduct";
        } else {
            model.addAttribute("msg", is_reg == false ? "San pham ???? t???n t???i!" : "C?? l???i x???y ra, vui l??ng th??? l???i!");
        }
        return "admin/adminAddProduct";
    }
    //end admin adding product page
    // admin product list
    @RequestMapping(value = "/admin/adminListProduct")
    public String adminListProduct(HttpSession session, @ModelAttribute() Admin admin,@RequestParam(required = false) String page, Model model) {
        if (session.getAttribute("admin") == null) {
            return "redirect:/admin/adminLogin";
        }
        Admin a = (Admin) session.getAttribute("admin");
        admin.setId(a.getId());
        admin.setUsername(a.getUsername());
        admin.setPassword(a.getPassword());
        admin.setRole(a.getRole());
        session.setAttribute("admin", admin);
        
        int page_id = Utils.Page(page);
        List<Product> products;
        if (dbq.GetProductList(page_id) != null) {
            products = dbq.GetProductList(page_id);
            model.addAttribute("products",products);
        } else System.out.println("failed");
        return "admin/adminListProduct";
    }
    // end admin product list
}
