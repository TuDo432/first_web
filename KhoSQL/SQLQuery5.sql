USE QuanLyChiTieuCN;
SELECT * FROM GIAODICH ORDER BY MaGiaoDich DESC;

-- Thêm h?n m?c m?u (Ví d?: Tháng 1/2026, Ti?n ?n gi?i h?n 3 tri?u)
INSERT INTO HANMUC (MaNguoiDung, MaDanhMuc, SoTienHanMuc, Thang, Nam)
VALUES 
(1, 3, 3000000, 1, 2026), -- ID 3 là ?n u?ng
(1, 4, 1500000, 1, 2026); -- ID 4 là Ti?n tr?