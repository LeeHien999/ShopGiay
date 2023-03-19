﻿using ShopOnlineConnection;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebGiay.Models.BUS;

namespace WebGiay.Areas.Admin.Controllers
{
    
    public class SanPham2Controller : Controller
    {
        [Authorize(Roles = "Admin")]
        // GET: Admin/SanPham2
        public ActionResult Index()
        {
            return View(ShopOnlineBUS.DanhSachSP());
        }

        // GET: Admin/SanPham2/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/SanPham2/Create
        public ActionResult Create()
        {
            ViewBag.MaNhaSanXuat = new SelectList(NhaSanXuatBUS.DanhSach(), "MaNhaSanXuat", "TenNhaSanXuat");
            ViewBag.MaLoaiSanPham = new SelectList(LoaiSanPhamBUS.DanhSach(), "MaLoaiSanPham", "TenLoaiSanPham");
            return View();
        }

        // POST: Admin/SanPham2/Create
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create(SanPham sp)
        {
            try
            {               
                ShopOnlineBUS.InsertSP(sp);
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/SanPham2/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Admin/SanPham2/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/SanPham2/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/SanPham2/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
