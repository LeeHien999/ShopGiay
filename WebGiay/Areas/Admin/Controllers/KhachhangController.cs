using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebGiay.Models.BUS;

namespace WebGiay.Areas.Admin.Controllers
{
    public class KhachhangController : Controller
    {
        // GET: Admin/Khachhang
        public ActionResult Index()
        {
            var db = KhachHangBUS.DanhSach();
            return View(db);
        }

        // GET: Admin/Khachhang/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/Khachhang/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Khachhang/Create
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

        // GET: Admin/Khachhang/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Admin/Khachhang/Edit/5
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

        // GET: Admin/Khachhang/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/Khachhang/Delete/5
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
