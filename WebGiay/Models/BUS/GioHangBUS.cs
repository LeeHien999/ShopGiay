using ShopOnlineConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebGiay.Models.BUS
{
    public class GioHangBUS
    {
        public static void Them(string masanpham, string mataikhoan, int soluong, int gia, string tensanpham)
        {
            using (var db = new ShopOnlineConnectionDB())
            {
                var x = db.Query<GioHang>("select * from GioHang where MaTaiKhoan = '" + mataikhoan + "' and MaSanPham = '" + masanpham + "'").ToList();
                //kiểm tra mã sản phẩm đã có trong giở hàng chưa nểu rồi thì cập nhật số lượng 
                if (x.Count() > 0)
                {
                    //gọi hàm update số lượng
                    int a = (int)x.ElementAt(0).SoLuong + soluong;
                    CapNhat(masanpham, mataikhoan, a, gia, tensanpham);
                }
                else
                {
                    GioHang giohang = new GioHang()
                    {
                        MaSanPham = int.Parse(masanpham),
                        MaTaiKhoan = mataikhoan,
                        SoLuong = soluong,
                        Gia = gia,
                        TenSanPham = tensanpham,
                        TongTien = gia * soluong
                    };
                    db.Insert(giohang);
                }
            }
        }

        public static DonHang ThemDonHang(string tennguoinhan, string iduser, string sdt, string email, string diachi, int tongdonhang, string hinhthucthanhtoan)
        {
            using (var db = new ShopOnlineConnectionDB())
            {
                
                DonHang donhang = new DonHang()
                {
                    NgayTao = DateTime.Now,
                    IDKhachHang = iduser,
                    TenNguoiNhan = tennguoinhan,
                    Sdt = sdt,
                    DiaChiNhan = diachi,
                    EmailNguoiNhan = email,
                    TongDonHang = tongdonhang,
                    HinhThucThanhToan = hinhthucthanhtoan,
                    TinhTrang = "Đang chờ duyệt",

                };                
                db.Insert(donhang);
                return donhang;
            }
        }

        public static void ThemChiTietDonHang(ChiTietDonHang ctdh)
        {
            using (var db = new ShopOnlineConnectionDB())
            {
                db.Insert(ctdh);
            }
        }

        public static IEnumerable<GioHang> DanhSach(string mataikhoan)
        {
            using (var db = new ShopOnlineConnectionDB())
            {
                return db.Query<GioHang>("select * from GioHang where MaTaiKhoan ='" + mataikhoan + "'");
            }
                
        }

        public static int TongTien(string mataikhoan)
        {
            using (var db = new ShopOnlineConnectionDB())
            {
                return db.Query<int>("select sum(TongTien) from GioHang where MaTaiKhoan ='" + mataikhoan + "'").FirstOrDefault();
            }
        }

        public static void Xoa(string masanpham, string mataikhoan)
        {
            using (var db = new ShopOnlineConnectionDB())
            {
                var a = db.Query<GioHang>("select * from GioHang where MaSanPham='" + masanpham + "' and MaTaiKhoan='" + mataikhoan + "'").FirstOrDefault();
                db.Delete(a);
            }
        }

        public static void CapNhat(string masanpham, string mataikhoan, int soluong, int gia, string tensanpham)
        {
            using (var db = new ShopOnlineConnectionDB())
            {
                GioHang giohang = new GioHang()
                {
                    MaSanPham = int.Parse(masanpham),
                    MaTaiKhoan = mataikhoan,
                    SoLuong = soluong,
                    Gia = gia,
                    TenSanPham = tensanpham,
                    TongTien = gia * soluong
                };
                var temp = db.Query<GioHang>("select IDGioHang from GioHang where MaTaiKhoan ='" + mataikhoan + "' and MaSanPham = '" + masanpham + "'").FirstOrDefault();
                db.Update(giohang, temp.IDGioHang);
            }

  
        }

        
    }
}