USE QuanLyChiTieuCN;
GO

-- 1. T?o vài danh m?c m?u (Chú ý c?t MaNguoiDung ph?i kh?p v?i ID user c?a b?n, ví d? là 1)
INSERT INTO DANHMUC (TenDanhMuc, LoaiGiaoDich, MaNguoiDung) VALUES 
(N'L??ng c?ng', N'Thu', 1),
(N'Th??ng', N'Thu', 1),
(N'?n u?ng', N'Chi', 1),
(N'Ti?n tr?', N'Chi', 1),
(N'Cafe', N'Chi', 1);

-- 2. T?o vài giao d?ch m?u
INSERT INTO GIAODICH (MaNguoiDung, MaDanhMuc, SoTien, GhiChu, NgayGiaoDich) VALUES
(1, 1, 10000000, N'L??ng tháng 1', GETDATE()), -- Thu 10tr
(1, 3, 50000, N'C?m t?m', GETDATE()),          -- Chi 50k
(1, 3, 45000, N'Ph? bò', GETDATE()),           -- Chi 45k
(1, 4, 3000000, N'?óng ti?n nhà', GETDATE());  -- Chi 3tr