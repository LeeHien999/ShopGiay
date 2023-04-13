using PagedList;
using ShopOnlineConnection;
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
        public ActionResult Index(int page = 1, int pagesize = 8)
        {
            return View(ShopOnlineBUS.DanhSachSP().ToPagedList(page, pagesize));
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


        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create(SanPham model, HttpPostedFileBase[] Files)
        {
            if (ModelState.IsValid)
            {
                // Lưu ảnh vào server và lấy tên của từng ảnh
                List<string> fileNames = new List<string>();
                foreach (var file in Files)
                {
                    if (file != null && file.ContentLength > 0)
                    {
                        var fileName = Path.GetFileName(file.FileName);
                        var path = Path.Combine(Server.MapPath("~/Asset/Images/"), fileName);
                        file.SaveAs(path);
                        fileNames.Add(fileName);
                    }
                }
                // Lưu tên của từng ảnh vào đối tượng sản phẩm
                model.HinhChinh = fileNames[0];
                model.Hinh1 = fileNames.Count > 1 ? fileNames[1] : null;
                model.Hinh2 = fileNames.Count > 2 ? fileNames[2] : null;
                model.Hinh3 = fileNames.Count > 3 ? fileNames[3] : null;
                model.Hinh4 = fileNames.Count > 4 ? fileNames[4] : null;
                model.LuotView = 0;
                model.SoLuongDaBan = 0;

                // Lưu đối tượng sản phẩm vào cơ sở dữ liệu
                ShopOnlineBUS.InsertSP(model);
                return RedirectToAction("Index");
            }

            // Nếu ModelState không hợp lệ, trả về form với các giá trị đã nhập
 
            return View();
        }

        // POST: Admin/SanPham2/Create
        /*[HttpPost]
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
        }*/

        // GET: Admin/SanPham2/Edit/5
        public ActionResult Edit(String id)
        {
            ViewBag.MaNhaSanXuat = new SelectList(NhaSanXuatBUS.DanhSach(), "MaNhaSanXuat", "TenNhaSanXuat", ShopOnlineBUS.ChiTiet(id).MaNhaSanXuat);
            ViewBag.MaLoaiSanPham = new SelectList(LoaiSanPhamBUS.DanhSach(), "MaLoaiSanPham", "TenLoaiSanPham", ShopOnlineBUS.ChiTiet(id).MaLoaiSanPham);
            return View(ShopOnlineBUS.ChiTiet(id));
        }

        // POST: Admin/SanPham2/Edit/5
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit(String id, SanPham model, HttpPostedFileBase[] Files)
        {
            if (ModelState.IsValid)
            {
                // Lấy đối tượng sản phẩm cũ
                var oldModel = ShopOnlineBUS.ChiTiet(id);

                // Kiểm tra và cập nhật tên file của từng ảnh mới
                if (Files != null && Files.Length > 0)
                {
                    // Lưu ảnh vào server và lấy tên của từng ảnh
                    List<string> fileNames = new List<string>();
                    foreach (var file in Files)
                    {
                        if (file != null && file.ContentLength > 0)
                        {
                            var fileName = Path.GetFileName(file.FileName);
                            var path = Path.Combine(Server.MapPath("~/Asset/Images/"), fileName);
                            file.SaveAs(path);
                            fileNames.Add(fileName);
                        }
                    }

                    // Cập nhật tên file của từng ảnh mới hoặc giữ nguyên tên file của ảnh cũ
                    model.HinhChinh = fileNames.Count > 0 ? fileNames[0] : oldModel.HinhChinh;
                    model.Hinh1 = fileNames.Count > 1 ? fileNames[1] : oldModel.Hinh1;
                    model.Hinh2 = fileNames.Count > 2 ? fileNames[2] : oldModel.Hinh2;
                    model.Hinh3 = fileNames.Count > 3 ? fileNames[3] : oldModel.Hinh3;
                    model.Hinh4 = fileNames.Count > 4 ? fileNames[4] : oldModel.Hinh4;
                }
                else
                {
                    // Nếu không có ảnh mới, giữ nguyên tên file của từng ảnh cũ
                    model.HinhChinh = oldModel.HinhChinh;
                    model.Hinh1 = oldModel.Hinh1;
                    model.Hinh2 = oldModel.Hinh2;
                    model.Hinh3 = oldModel.Hinh3;
                    model.Hinh4 = oldModel.Hinh4;
                }
                if (model.SoLuongDaBan > 1000)
                {
                    model.SoLuongDaBan = 0;
                }
                else
                {
                    model.SoLuongDaBan = oldModel.SoLuongDaBan;
                }
               if (model.LuotView > 1000)
                {
                    model.SoLuongDaBan = 0;
                }
               else
                {
                    model.LuotView = oldModel.SoLuongDaBan;
                }
               
                // Lưu đối tượng sản phẩm vào cơ sở dữ liệu
                ShopOnlineBUS.UpdateSP(id, model);
                return RedirectToAction("Index");
            }

            // Nếu ModelState không hợp lệ, trả về form với các giá trị đã nhập

            return View();
        }


        // GET: Admin/SanPham2/Delete/5
        public ActionResult Delete(String id)
        {
            ViewBag.MaNhaSanXuat = new SelectList(NhaSanXuatBUS.DanhSach(), "MaNhaSanXuat", "TenNhaSanXuat", ShopOnlineBUS.ChiTiet(id).MaNhaSanXuat);
            ViewBag.MaLoaiSanPham = new SelectList(LoaiSanPhamBUS.DanhSach(), "MaLoaiSanPham", "TenLoaiSanPham", ShopOnlineBUS.ChiTiet(id).MaLoaiSanPham);
            return View(ShopOnlineBUS.ChiTiet(id));
        }

        // POST: Admin/SanPham2/Delete/5
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Delete(String id, SanPham model, HttpPostedFileBase[] Files)
        {
            if (ModelState.IsValid)
            {
                // Lấy đối tượng sản phẩm cũ
                var oldModel = ShopOnlineBUS.ChiTiet(id);

                // Kiểm tra và cập nhật tên file của từng ảnh mới
                if (Files != null && Files.Length > 0)
                {
                    // Lưu ảnh vào server và lấy tên của từng ảnh
                    List<string> fileNames = new List<string>();
                    foreach (var file in Files)
                    {
                        if (file != null && file.ContentLength > 0)
                        {
                            var fileName = Path.GetFileName(file.FileName);
                            var path = Path.Combine(Server.MapPath("~/Asset/images/"), fileName);
                            file.SaveAs(path);
                            fileNames.Add(fileName);
                        }
                    }

                    // Cập nhật tên file của từng ảnh mới hoặc giữ nguyên tên file của ảnh cũ
                    model.HinhChinh = fileNames.Count > 0 ? fileNames[0] : oldModel.HinhChinh;
                    model.Hinh1 = fileNames.Count > 1 ? fileNames[1] : oldModel.Hinh1;
                    model.Hinh2 = fileNames.Count > 2 ? fileNames[2] : oldModel.Hinh2;
                    model.Hinh3 = fileNames.Count > 3 ? fileNames[3] : oldModel.Hinh3;
                    model.Hinh4 = fileNames.Count > 4 ? fileNames[4] : oldModel.Hinh4;
                }
                else
                {
                    // Nếu không có ảnh mới, giữ nguyên tên file của từng ảnh cũ
                    model.HinhChinh = oldModel.HinhChinh;
                    model.Hinh1 = oldModel.Hinh1;
                    model.Hinh2 = oldModel.Hinh2;
                    model.Hinh3 = oldModel.Hinh3;
                    model.Hinh4 = oldModel.Hinh4;
                }

                // Lưu đối tượng sản phẩm vào cơ sở dữ liệu
                if (model.TinhTrang == "0")
                {
                    model.TinhTrang = "1";
                }
                else
                    model.TinhTrang = "1";

                model.SoLuongDaBan = oldModel.SoLuongDaBan;
                model.LuotView = oldModel.LuotView;
                ShopOnlineBUS.UpdateSP(id, model);
                return RedirectToAction("Index");
            }

            // Nếu ModelState không hợp lệ, trả về form với các giá trị đã nhập

            return View();
        }
    }
}
