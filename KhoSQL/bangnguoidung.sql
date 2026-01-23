USE QuanLyChiTieuCN;
GO

-- Thêm một sinh viên mẫu vào bảng NGUOIDUNG
INSERT INTO NGUOIDUNG (TenDangNhap, MatKhau, HoTen, NgheNghiep)
VALUES ('sinhvien', '123456', N'Trần Khiết Tư', N'Sinh Viên');
GO

-- Kiểm tra xem đã có chưa
SELECT * FROM NGUOIDUNG;