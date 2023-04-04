using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections;

namespace WebGiay.App_Code
{
    public class Product
    {
        private String TenSanPham;
        private String MaSanPham;
        private int Gia;
        private int SoLuong;
    }

    public class Cart
    {
        private List<Product> productList = new List<Product>();

        public void addProduct(Product product)
        {
            productList.Add(product);
        }

    }

}