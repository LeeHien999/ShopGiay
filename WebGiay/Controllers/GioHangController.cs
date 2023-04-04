using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebGiay.Models.BUS;

namespace WebGiay.Controllers
{
    [Authorize]
    public class GioHangController : Controller
    {
        // GET: GioHang
        public ActionResult Index()
        {
            var userId = User.Identity.GetUserId();
            var gioHang = GioHangBUS.DanhSach(userId);
            if (gioHang.Count() == 0)
            {
                ViewBag.TongTien = 0;
            }
            else
            {
                ViewBag.TongTien = GioHangBUS.TongTien(userId);
            }
            return View(gioHang);
        }

        [HttpPost]
        public ActionResult Them(string MaSanPham, string TenSanPham, int SoLuong, int Gia)
        {
            try
            {
                // TODO: Add insert logic here
                GioHangBUS.Them(MaSanPham, User.Identity.GetUserId(), SoLuong, Gia, TenSanPham);
                return RedirectToAction("Index");
            }
            catch
            {
                return RedirectToAction("../Shop/Index");
            }
        }

        [HttpPost]
        public ActionResult CapNhat(string MaSanPham, int SoLuong, int Gia, string TenSanPham)
        {
            try
            {
                // TODO: Add insert logic here
                GioHangBUS.CapNhat(MaSanPham, User.Identity.GetUserId(), SoLuong, Gia, TenSanPham);
                return RedirectToAction("Index");
            }
            catch
            {
                return RedirectToAction("../Shop/Index");
            }
        }

        [HttpGet]
        public ActionResult Xoa(string MaSanPham)
        {
            try
            {
                // TODO: Add insert logic here
                GioHangBUS.Xoa(MaSanPham, User.Identity.GetUserId());
                return RedirectToAction("Index");
            }
            catch
            {
                return RedirectToAction("../Shop/Index");
            }
        }

        public ActionResult CheckOut()
        {
            return View();
        }

        // POST: GioHang/Create
        [HttpPost]
        public ActionResult CheckOut(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: GioHang/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: GioHang/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: GioHang/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: GioHang/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: GioHang/Edit/5
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

        // GET: GioHang/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: GioHang/Delete/5
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
