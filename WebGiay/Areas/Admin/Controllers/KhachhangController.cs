using ShopOnlineConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebGiay.Models.BUS;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using System.Threading.Tasks;
using PagedList;

namespace WebGiay.Areas.Admin.Controllers
{
    public class KhachhangController : Controller
    {
        // GET: Admin/Khachhang
        public ActionResult Index(int Page = 1, int PageZise = 8)
        {

            var db = KhachHangBUS.DanhSach();
            return View(db.ToPagedList(Page, PageZise));
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
        public ActionResult Edit(string id)
        {
            var db = KhachHangBUS.ChiTietKH(id);
            return View(db);
        }

        // POST: Admin/Khachhang/Edit/5
        [HttpPost]
        public ActionResult Edit(string id, AspNetUser kh)
        {
            try
            {              
                KhachHangBUS.Update(id, kh);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        public ActionResult KhoaTaiKhoan(string id)
        {
            AspNetUser kh = KhachHangBUS.ChiTietKH(id);

            // Cập nhật thông tin khóa người dùng vào CSDL
            kh.LockoutEndDateUtc = DateTimeOffset.MaxValue.UtcDateTime;
            kh.LockoutEnabled = true;
            KhachHangBUS.Update(id, kh);
            return RedirectToAction("Index");
        }

        

        // GET: Admin/Khachhang/Delete/5
        public ActionResult Delete(string id)
        {
            KhachHangBUS.Delete(id);
            return RedirectToAction("Index");
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
