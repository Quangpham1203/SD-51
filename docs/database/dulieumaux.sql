USE menz;
GO

-- =============================================
-- 1. DANH MỤC (id: 1-6)
-- =============================================
INSERT INTO danh_muc (ten, trang_thai)  
('Áo thun',           1),
('Áo sơmi',           1),
('Áo khoác',          1),
('Quần jeans',        1),
('Quần thả',          1),
('Áo len',            1);
GO

-- =============================================
-- 2. THƯƠNG HIỆU (id: 1-5)
-- =============================================
INSERT INTO thuong_hieu (ten, trang_thai) VALUES
('Menz Classic',      1),
('UrbanFit',          1),
('DandiStyle',        1),
('TopKing',           1),
('SmoothWear',        1);
GO

-- =============================================
-- 3. XUẤT XỨ (id: 1-4)
-- =============================================
INSERT INTO xuat_xu (ten_quoc_gia, ghi_chu, trang_thai) VALUES
('Việt Nam',          'Sản xuất trong nước',              1),
('Trung Quốc',        'Nhập khẩu từ Trung Quốc',         1),
('Nhật Bản',          'Nhập khẩu từ Nhật Bản',           1),
('Hàn Quốc',          'Nhập khẩu từ Hàn Quốc',          1);
GO

-- =============================================
-- 4. CHẤT LIỆU (id: 1-5)
-- =============================================
INSERT INTO chat_lieu (ten, trang_thai) VALUES
('Cotton 100%',       1),
('Polyester',         1),
('Linen',             1),
('Denim',             1),
('Wool',              1);
GO

-- =============================================
-- 5. MÀU SẮC (id: 1-8)
-- =============================================
INSERT INTO mau_sac (ma, ten, trang_thai) VALUES
('CLR001', 'Đen',           1),
('CLR002', 'Trắng',         1),
('CLR003', 'Xám',           1),
('CLR004', 'Navy Blue',     1),
('CLR005', 'Đỏ Burgundy',   1),
('CLR006', 'Xanh Cobalt',   1),
('CLR007', 'Kem',           1),
('CLR008', 'Xaki',          1);
GO

-- =============================================
-- 6. KÍCH THƯỚC (id: 1-6)
-- =============================================
INSERT INTO kich_thuoc (ma, ten_kich_thuoc, trang_thai) VALUES
('SZ001', 'XS',   1),
('SZ002', 'S',    1),
('SZ003', 'M',    1),
('SZ004', 'L',    1),
('SZ005', 'XL',   1),
('SZ006', 'XXL',  1);
GO

-- =============================================
-- 7. CỔ ÁO (id: 1-4)
-- =============================================
INSERT INTO co_ao (ma, ten, trang_thai) VALUES
('CO001', 'Cổ tròn',        1),
('CO002', 'Cổ V',           1),
('CO003', 'Cổ đứng',        1),
('CO004', 'Cổ spread',      1);
GO

-- =============================================
-- 8. TAY ÁO (id: 1-4)
-- =============================================
INSERT INTO tay_ao (ma, ten, trang_thai) VALUES
('TA001', 'Không tay',      1),
('TA002', 'Tay ngắn',       1),
('TA003', 'Tay 3/4',        1),
('TA004', 'Tay dài',        1);
GO

-- =============================================
-- 9. SẢN PHẨM (id: 1-6)
--    FK: id_chat_lieu, id_thuong_hieu, id_xuat_xu, id_danh_muc
-- =============================================
INSERT INTO san_pham (id_chat_lieu, id_thuong_hieu, id_xuat_xu, id_danh_muc, ma_san_pham, ten_san_pham, trang_thai) VALUES
(1, 1, 1, 1, 'SP001', 'Áo thun cổ tròn basic',                 1),  -- id=1
(1, 2, 1, 1, 'SP002', 'Áo thun cổ V graphic',                  1),  -- id=2
(3, 3, 3, 2, 'SP003', 'Áo sơmi linen hàng tuần',               1),  -- id=3
(1, 1, 1, 2, 'SP004', 'Áo sơmi cotton slim fit',               1),  -- id=4
(2, 4, 2, 3, 'SP005', 'Áo khoác polyester windbreaker',        1),  -- id=5
(4, 2, 2, 4, 'SP006', 'Quần jeans slim fit',                   1);  -- id=6
GO

-- =============================================
-- 10. CHI TIẾT SẢN PHẨM (id: 1-12)
--     FK: id_san_pham, id_mau_sac, id_kich_thuoc, id_co_ao, id_tay_ao
-- =============================================
INSERT INTO chi_tiet_san_pham (id_san_pham, id_mau_sac, id_kich_thuoc, id_co_ao, id_tay_ao, ma_san_pham_chi_tiet, gia, so_luong, trong_luong, mo_ta, trang_thai) VALUES
-- Áo thun cổ tròn basic (SP001)
(1, 1, 3, 1, 2, 'SP001-BLK-M',  299000, 50, 0.25, 'Áo thun đen size M',       1),  -- id=1
(1, 2, 4, 1, 2, 'SP001-WHT-L',  299000, 40, 0.25, 'Áo thun trắng size L',     1),  -- id=2
(1, 3, 2, 1, 2, 'SP001-GRY-S',  299000, 35, 0.25, 'Áo thun xám size S',       1),  -- id=3

-- Áo thun cổ V graphic (SP002)
(2, 1, 3, 2, 2, 'SP002-BLK-M',  349000, 30, 0.27, 'Áo thun cổ V đen size M', 1),  -- id=4
(2, 4, 4, 2, 2, 'SP002-NBY-L',  349000, 25, 0.27, 'Áo thun cổ V navy size L',1),  -- id=5

-- Áo sơmi linen (SP003)
(3, 7, 3, 3, 4, 'SP003-CRM-M',  499000, 20, 0.30, 'Áo sơmi linen kem size M',1),  -- id=6
(3, 2, 4, 3, 4, 'SP003-WHT-L',  499000, 18, 0.30, 'Áo sơmi linen trắng L',   1),  -- id=7

-- Áo sơmi cotton slim (SP004)
(4, 1, 3, 4, 4, 'SP004-BLK-M',  429000, 25, 0.28, 'Áo sơmi cotton đen M',    1),  -- id=8
(4, 2, 5, 4, 4, 'SP004-WHT-XL', 429000, 15, 0.28, 'Áo sơmi cotton trắng XL', 1),  -- id=9

-- Áo khoác windbreaker (SP005)
(5, 1, 4, 3, 4, 'SP005-BLK-L',  699000, 15, 0.45, 'Áo khoác đen size L',     1),  -- id=10
(5, 6, 3, 3, 4, 'SP005-CBL-M',  699000, 12, 0.45, 'Áo khoác cobalt size M',  1),  -- id=11

-- Quần jeans slim (SP006)
(6, 1, 4, 1, 4, 'SP006-BLK-L',  549000, 30, 0.50, 'Quần jeans đen size L',   1);  -- id=12
GO

-- =============================================
-- 11. HÌNH ẢNH (id: 1-8)
-- =============================================
INSERT INTO hinh_anh (ma_anh, duong_dan_anh, anh_mac_dinh, mo_ta, trang_thai) VALUES
('IMG001', '/images/products/SP001-BLK-M-1.jpg',  1, 'Áo thun đen M - góc chính',       1),
('IMG002', '/images/products/SP001-BLK-M-2.jpg',  0, 'Áo thun đen M - góc sau',         1),
('IMG003', '/images/products/SP001-WHT-L-1.jpg',  1, 'Áo thun trắng L - góc chính',     1),
('IMG004', '/images/products/SP002-BLK-M-1.jpg',  1, 'Áo thun cổ V đen M - góc chính', 1),
('IMG005', '/images/products/SP003-CRM-M-1.jpg',  1, 'Áo sơmi linen kem M - chính',    1),
('IMG006', '/images/products/SP004-BLK-M-1.jpg',  1, 'Áo sơmi cotton đen M - chính',   1),
('IMG007', '/images/products/SP005-BLK-L-1.jpg',  1, 'Áo khoác đen L - góc chính',     1),
('IMG008', '/images/products/SP006-BLK-L-1.jpg',  1, 'Quần jeans đen L - góc chính',   1);
GO

-- =============================================
-- 12. HSPCT HÌNH ẢNH (gắn ảnh với chi tiết SP)
-- =============================================
INSERT INTO hspct_hinh_anh (id_san_pham_chi_tiet, id_hinh_anh) VALUES
(1,  1),   -- SP001-BLK-M  -> IMG001
(1,  2),   -- SP001-BLK-M  -> IMG002
(2,  3),   -- SP001-WHT-L  -> IMG003
(4,  4),   -- SP002-BLK-M  -> IMG004
(6,  5),   -- SP003-CRM-M  -> IMG005
(8,  6),   -- SP004-BLK-M  -> IMG006
(10, 7),   -- SP005-BLK-L  -> IMG007
(12, 8);   -- SP006-BLK-L  -> IMG008
GO

-- =============================================
-- 13. VAI TRÒ (id: 1-3)
-- =============================================
INSERT INTO vai_tro (ten, mo_ta) VALUES
('Quản trị',          'Quản lý toàn bộ hệ thống'),
('Nhân viên bán hàng','Xử lý đơn hàng và chăm sóc khách hàng'),
('Nhân viên kho',     'Quản lý kho hàng và xuất nhập hàng');
GO

-- =============================================
-- 14. NHÂN VIÊN (id: 1-3)
-- =============================================
INSERT INTO nhan_vien (id_vai_tro, ma_nhan_vien, ho_va_ten, hinh_anh, gioi_tinh, ngay_sinh, so_dien_thoai, can_cuoc_cong_dan, email, ten_tai_khoan, mat_khau, chuc_vu, trang_thai) VALUES
(1, 'NV001', 'Nguyễn Văn Minh',  '/images/staff/nv001.jpg', 'Nam',   '1990-03-15', '0912345678', '079123456789', 'minh.nv@menz.com',  'nguyenvanminh',  'hashed_pw_001', 'Giám đốc',            1),
(2, 'NV002', 'Trần Thị Hương',   '/images/staff/nv002.jpg', 'Nữ',    '1995-07-22', '0987654321', '077987654321', 'huong.tt@menz.com', 'tranthihuong',   'hashed_pw_002', 'Nhân viên bán hàng',  1),
(3, 'NV003', 'Lê Quang Đức',     '/images/staff/nv003.jpg', 'Nam',   '1993-11-08', '0911223344', '072112233445', 'duc.lq@menz.com',   'lequangduc',     'hashed_pw_003', 'Nhân viên kho',       1);
GO

-- =============================================
-- 15. KHÁCH HÀNG (id: 1-5)
-- =============================================
INSERT INTO khach_hang (ma_khach_hang, ten_tai_khoan, mat_khau, ten_khach_hang, email, gioi_tinh, sdt, ngay_sinh, ghi_chu, hinh_anh, trang_thai) VALUES
('KH001', 'pham_tuan_anh',   'hashed_kh_001', 'Phạm Tuấn Anh',     'tuananh@email.com',   'Nam', '0901112222', '1992-05-10', 'Khách hàng VIP',        '/images/customers/kh001.jpg', 1),
('KH002', 'nguyen_mai_ly',   'hashed_kh_002', 'Nguyễn Mai Ly',     'mailyy@email.com',    'Nữ',  '0902223333', '1990-08-20', NULL,                    '/images/customers/kh002.jpg', 1),
('KH003', 'le_duc_hoa',      'hashed_kh_003', 'Lê Đức Hoa',        'duchoa@email.com',    'Nam', '0903334444', '1988-12-01', 'Khách hàng mới',        NULL,                          1),
('KH004', 'vu_thi_lan',      'hashed_kh_004', 'Vũ Thị Lan',        'thilan@email.com',    'Nữ',  '0904445555', '1994-02-14', NULL,                    '/images/customers/kh004.jpg', 1),
('KH005', 'ho_minh_tri',     'hashed_kh_005', 'Hồ Minh Trí',       'minhtri@email.com',   'Nam', '0905556666', '1991-09-30', 'Đánh giá thường xuyên', NULL,                          1);
GO

-- =============================================
-- 16. ĐỊA CHỈ (id: 1-6)
--     FK: id_khach_hang
-- =============================================
INSERT INTO dia_chi (id_khach_hang, ten_nguoi_nhan, sdt_nguoi_nhan, tinh_thanh_pho, quan_huyen, xa_phuong, dia_chi_cu_the, anh_mac_dinh, trang_thai) VALUES
(1, 'Phạm Tuấn Anh',  '0901112222', 'TP. Hồ Chí Minh', 'Quận 7',          'P. Nguyễn Bảo Long',  '123 Lương Đương, P. Nguyễn Bảo Long', 1, 1),  -- id=1
(1, 'Phạm Tuấn Anh',  '0901112222', 'TP. Hồ Chí Minh', 'Quận Bình Thạnh','P. An HAires',          '456 Đinh Tiền',                       0, 1),  -- id=2
(2, 'Nguyễn Mai Ly',  '0902223333', 'Hà Nội',           'Quận Hoàn Kiếm', 'P. Lý Thái Tổ',        '78 Nguyễn Siêu, P. Lý Thái Tổ',      1, 1),  -- id=3
(3, 'Lê Đức Hoa',     '0903334444', 'TP. Đà Nẵng',     'Quận Hải Châu',   'P. Nguyễn Bảo',        '90 Trần Phú',                         1, 1),  -- id=4
(4, 'Vũ Thị Lan',     '0904445555', 'TP. Hồ Chí Minh', 'Quận 3',          'P. 10',                 '200 Đinh Tiền, P. 10, Q.3',           1, 1),  -- id=5
(5, 'Hồ Minh Trí',    '0905556666', 'TP. Hồ Chí Minh', 'Quận 1',          'P. Bến Nghé',           '15 Nguyễn Bảo Cường, P. Bến Nghé',   1, 1);  -- id=6
GO

-- =============================================
-- 17. GIỏ HÀNG (id: 1-3)
-- =============================================
INSERT INTO gio_hang (id_khach_hang, ngay_tao, ngay_cap_nhat, trang_thai) VALUES
(1, '2025-01-20 10:00:00', '2025-01-20 10:30:00', 1),   -- id=1  KH001 giỏ hàng đang mở
(3, '2025-01-22 14:15:00', '2025-01-22 14:45:00', 1),   -- id=2  KH003
(5, '2025-01-25 09:00:00', '2025-01-25 09:20:00', 0);   -- id=3  KH005 giỏ đã checkout (trang_thai=0)
GO

-- =============================================
-- 18. GIỏ HÀNG CHI TIẾT (id: 1-5)
--     FK: id_gio_hang, id_san_pham_chi_tiet
-- =============================================
INSERT INTO gio_hang_chi_tiet (id_gio_hang, id_san_pham_chi_tiet, gia, so_luong, ghi_chu, trang_thai) VALUES
(1, 1,  299000, 2, NULL,                          1),   -- Giỏ 1: 2x Áo thun đen M
(1, 8,  429000, 1, 'Cần gửi trong 2 ngày',       1),   -- Giỏ 1: 1x Áo sơmi cotton đen M
(2, 6,  499000, 1, NULL,                          1),   -- Giỏ 2: 1x Áo sơmi linen kem M
(3, 12, 549000, 1, NULL,                          1),   -- Giỏ 3: 1x Quần jeans đen L
(3, 10, 699000, 1, 'Áo khoác cho mùa lạnh',      1);   -- Giỏ 3: 1x Áo khoác đen L
GO

-- =============================================
-- 19. ĐỖT GIẢM GIÁ (id: 1-2)
-- =============================================
INSERT INTO dot_giam_gia (ma_dot_giam_gia, ten_dot_giam_gia, phan_tram_giam_gia, ngay_bat_dau, ngay_ket_thuc, ngay_tao, ngay_sua, mo_ta, trang_thai) VALUES
('DGG001', 'Tết Nguyên Đán 2025',        20.00, '2025-01-15', '2025-02-05', '2025-01-10', NULL,              'Giảm giá mừng Tết',          1),
('DGG002', 'Valentine Season Sale',       15.00, '2025-02-10', '2025-02-20', '2025-02-08', '2025-02-09',     'Khuyến mãi Valentine',       1);
GO

-- =============================================
-- 20. CHI TIẾT ĐỖT GIẢM GIÁ
--     FK: id_dot_giam_gia, id_san_pham_chi_tiet
-- =============================================
INSERT INTO chi_tiet_dot_giam_gia (id_dot_giam_gia, id_san_pham_chi_tiet, gia_truoc_khi_giam, gia_sau_khi_giam, ghi_chu, ngay_tao, trang_thai) VALUES
-- DGG001: giảm 20% cho áo thun đen M (id=1) và áo sơmi linen kem M (id=6)
(1, 1,  299000, 239200, 'Áo thun đen M giảm 20%',       '2025-01-10', 1),
(1, 6,  499000, 399200, 'Áo sơmi linen kem M giảm 20%', '2025-01-10', 1),
-- DGG002: giảm 15% cho áo khoác đen L (id=10)
(2, 10, 699000, 594150, 'Áo khoác đen L giảm 15%',      '2025-02-08', 1);
GO

-- =============================================
-- 21. PHIẾU GIẢM GIÁ / COUPON (id: 1-3)
-- =============================================
INSERT INTO phieu_giam_gia (ma_phieu_giam_gia, dieu_kien_giam, ten_phieu, loai_phieu, phan_tram_giam_gia, so_tien_giam, giam_toi_da, so_luong_toi_da, so_luong_da_dung, ngay_bat_dau, ngay_ket_thuc, ngay_tao, ngay_cap_nhat, ghi_chu, trang_thai) VALUES
('WELCOME10',  0,       'Chào mừng khách mới - 10%',   'phan_tram',  10.00,  NULL,     100000, 100, 45,  '2024-12-01', '2025-06-30', '2024-11-25', '2024-12-01', 'Áp dụng 1 lần / khách hàng',        1),  -- id=1
('SAVE50K',    500000,  'Giảm 50K khi mua từ 500K',    'so_tien',    NULL,   50000,    50000,  50,  12,  '2025-01-01', '2025-03-31', '2024-12-28', NULL,          'Điều kiện: đơn hàng >= 500K',       1),  -- id=2
('FLASH20',    1000000, 'Flash Sale 20% đơn >= 1M',    'phan_tram',  20.00,  NULL,     200000, 30,  8,   '2025-01-20', '2025-01-31', '2025-01-18', NULL,          'Flash sale cuối tháng 1',           1);  -- id=3
GO

-- =============================================
-- 22. CHI TIẾT PHIẾU GIẢM GIÁ (gắn coupon -> khách hàng)
-- =============================================
INSERT INTO chi_tiet_phieu_giam_gia (id_khach_hang, id_phieu_giam_gia, ngay_dung, trang_thai) VALUES
(1, 1, '2025-01-21',  1),   -- KH001 đã dùng WELCOME10
(1, 2, NULL,          0),   -- KH001 chưa dùng SAVE50K
(3, 1, '2025-01-23',  1),   -- KH003 đã dùng WELCOME10
(5, 3, '2025-01-25',  1),   -- KH005 đã dùng FLASH20
(2, 1, NULL,          0);   -- KH002 chưa dùng WELCOME10
GO

-- =============================================
-- 23. HÌNH THỨC THANH TOÁN (id: 1-4)
-- =============================================
INSERT INTO hinh_thuc_thanh_toan (ma_hinh_thuc, phuong_thuc_thanh_toan, mo_ta, ngay_tao, ngay_cap_nhat, trang_thai) VALUES
('HTT001', 'VNPay',              'Thanh toán online qua VNPay',        '2024-01-01', NULL,          1),
('HTT002', 'Momo',               'Thanh toán ví điện tử Momo',         '2024-01-01', NULL,          1),
('HTT003', 'COD',                'Thanh toán khi nhận hàng',           '2024-01-01', NULL,          1),
('HTT004', 'Chuyển khoản ngân hàng', 'Chuyển khoản trực tiếp',        '2024-06-15', NULL,          1);
GO

-- =============================================
-- 24. HÓA ĐƠN (id: 1-4)
--     FK: id_nhan_vien, id_khach_hang, id_phieu_giam_gia (nullable), id_dia_chi
--     Tính toán:
--       HD1: KH001, 2x áo thun đen M (299k) + 1x áo sơmi cotton đen M (429k) = 1027k
--            dùng coupon SAVE50K => giảm 50k => sau giảm = 977k, phí ship = 30k => tổng = 1007k
--       HD2: KH003, 1x áo sơmi linen kem M (499k) = 499k
--            không coupon, phí ship = 25k => tổng = 524k
--       HD3: KH005, 1x quần jeans đen L (549k) + 1x áo khoác đen L (699k) = 1248k
--            dùng coupon FLASH20 (20%, max 200k) => giảm 200k => sau giảm = 1048k, phí ship = 0 => tổng = 1048k
--       HD4: KH001, 1x áo thun trắng L (299k) = 299k
--            không coupon, phí ship = 25k => tổng = 324k
-- =============================================
INSERT INTO hoa_don (id_nhan_vien, id_khach_hang, id_phieu_giam_gia, id_dia_chi, ma_hoa_don, ngay_tao, tong_tien, giam_gia, tong_tien_sau_giam, phi_van_chuyen, tong_hoa_don, ten_khach_hang, ngay_dat, ngay_giao_du_kien, sdt, dia_chi, ghi_chu, trang_thai) VALUES
(2, 1, 2,    1, 'HD001', '2025-01-21 11:00:00', 1027000, 50000,  977000,  30000,  1007000, 'Phạm Tuấn Anh', '2025-01-21', '2025-01-24', '0901112222', '123 Lương Đương, Q.7, TPHCM',                  NULL,                      2),  -- id=1 đang giao
(2, 3, NULL, 4, 'HD002', '2025-01-23 09:30:00', 499000,  0,       499000,  25000,  524000,  'Lê Đức Hoa',   '2025-01-23', '2025-01-26', '0903334444', '90 Trần Phú, Q. Hải Châu, ĐN',                 'Giao nhanh',              2),  -- id=2 đang giao
(2, 5, 3,    6, 'HD003', '2025-01-25 16:45:00', 1248000, 200000,  1048000, 0,      1048000, 'Hồ Minh Trí',  '2025-01-25', '2025-01-28', '0905556666', '15 Nguyễn Bảo Cường, Q.1, TPHCM',              'Free ship đơn >= 1M',     2),  -- id=3 đang giao
(2, 1, NULL, 2, 'HD004', '2025-01-28 14:00:00', 299000,  0,       299000,  25000,  324000,  'Phạm Tuấn Anh', '2025-01-28', '2025-01-31', '0901112222','456 Đinh Tiền, Q. Bình Thạnh, TPHCM',          NULL,                      1);  -- id=4 chờ xử lý
GO

-- =============================================
-- 25. HÓA ĐƠN CHI TIẾT
--     FK: id_hoa_don, id_san_pham_chi_tiet
-- =============================================
INSERT INTO hoa_don_chi_tiet (id_hoa_don, id_san_pham_chi_tiet, gia, so_luong, thanh_tien, ghi_chu, trang_thai) VALUES
-- HD001
(1, 1,  299000, 2, 598000, NULL,                        1),
(1, 8,  429000, 1, 429000, NULL,                        1),
-- HD002
(2, 6,  499000, 1, 499000, NULL,                        1),
-- HD003
(3, 12, 549000, 1, 549000, NULL,                        1),
(3, 10, 699000, 1, 699000, 'Áo khoác đen - size L',    1),
-- HD004
(4, 2,  299000, 1, 299000, NULL,                        1);
GO

-- =============================================
-- 26. CHI TIẾT THANH TOÁN
--     FK: id_hoa_don, id_hinh_thuc_thanh_toan
-- =============================================
INSERT INTO chi_tiet_thanh_toan (id_hoa_don, id_hinh_thuc_thanh_toan, ma_giao_dich, so_tien_thanh_toan, ngay_thanh_toan, trang_thai_thanh_toan, ghi_chu) VALUES
(1, 1, 'VNP_TXN_20250121_001', 1007000, '2025-01-21 11:05:00', 'thanh_toan_ok',   NULL),
(2, 3, 'COD_20250123_001',     524000,  '2025-01-26 10:00:00', 'cho_thanh_toan',  'Thanh toán khi nhận'),
(3, 2, 'MOM_TXN_20250125_001', 1048000, '2025-01-25 16:50:00', 'thanh_toan_ok',   NULL),
(4, 4, 'BK_TXN_20250128_001',  324000,  '2025-01-28 14:10:00', 'thanh_toan_ok',   'Đã chuyển khoản');
GO

-- =============================================
-- 27. ĐƠN VẬN CHUYỂN
--     FK: id_hoa_don
-- =============================================
INSERT INTO don_van_chuyen (id_hoa_don, ma_don_van_chuyen, ten_nguoi_giao, sdt_nguoi_giao, ten_nguoi_nhan, sdt_nguoi_nhan, dia_chi_giao, ngay_giao_thực_te, ngay_giao_du_kien, trang_thai, ghi_chu) VALUES
(1, 'GHN_2501210001', 'Tran Quang Hoa', '0388112233', 'Phạm Tuấn Anh', '0901112222', '123 Lương Đương, Q.7, TPHCM',             NULL,          '2025-01-24', 1, 'Đang giao'),
(2, 'GHN_2501230002', 'Le Minh Duc',    '0399445566', 'Lê Đức Hoa',   '0903334444', '90 Trần Phú, Q. Hải Châu, ĐN',            NULL,          '2025-01-26', 1, 'Đang trên đường'),
(3, 'GHN_2501250003', 'Nguyen Van Son', '0377889900', 'Hồ Minh Trí',  '0905556666', '15 Nguyễn Bảo Cường, Q.1, TPHCM',         NULL,          '2025-01-28', 0, 'Chưa gửi'),
(4, 'GHN_2501280004', 'Pham Thi Ngoc',  '0366778899', 'Phạm Tuấn Anh', '0901112222', '456 Đinh Tiền, Q. Bình Thạnh, TPHCM',    NULL,          '2025-01-31', 0, 'Chưa gửi');
GO

-- =============================================
-- 28. LỊCH SỬ HÓA ĐƠN
--     FK: id_hoa_don
-- =============================================
INSERT INTO lich_su_hoa_don (id_hoa_don, ma_lich_su, noi_dung_thay_doi, nguoi_thuc_hien, ngay_thay_doi, ghi_chu, trang_thai) VALUES
(1, 'LS001', 'Hóa đơn được tạo',                        'Phạm Tuấn Anh',  '2025-01-21 11:00:00', NULL,                       1),
(1, 'LS002', 'Thanh toán thành công qua VNPay',          'Hệ thống',       '2025-01-21 11:05:00', 'Mã giao dịch: VNP_001',   1),
(1, 'LS003', 'Đơn hàng đã được xác nhận và gửi đi',    'Trần Thị Hương', '2025-01-21 14:00:00', NULL,                       1),
(2, 'LS004', 'Hóa đơn được tạo',                        'Lê Đức Hoa',     '2025-01-23 09:30:00', NULL,                       1),
(2, 'LS005', 'Đơn hàng đang được xử lý',                'Trần Thị Hương', '2025-01-23 10:00:00', NULL,                       1),
(3, 'LS006', 'Hóa đơn được tạo',                        'Hồ Minh Trí',    '2025-01-25 16:45:00', NULL,                       1),
(3, 'LS007', 'Thanh toán thành công qua Momo',           'Hệ thống',       '2025-01-25 16:50:00', 'Mã giao dịch: MOM_001',   1),
(4, 'LS008', 'Hóa đơn được tạo',                        'Phạm Tuấn Anh',  '2025-01-28 14:00:00', NULL,                       1);
GO

-- =============================================
-- 29. ĐÁNH GIÁ SẢN PHẨM
--     FK: id_khach_hang, id_san_pham, id_hoa_don
-- =============================================
INSERT INTO danh_gia (id_khach_hang, id_san_pham, id_hoa_don, diem_danh_gia, tieu_de, noi_dung, hinh_anh, ngay_tao, ngay_cap_nhat, trang_thai) VALUES
(1, 1, 1, 5, 'Áo thun rất tốt!',           'Chất liệu mềm mại, may kỹ. Sẽ mua thêm.',                              '/images/reviews/rev001.jpg', '2025-01-24 18:00:00', NULL,                  1),
(1, 4, 1, 4, 'Áo sơmi cotton ổn',          'Chất liệu ổn, fit hơi chặt nhưng vẫn được.',                            NULL,                        '2025-01-24 18:10:00', NULL,                  1),
(3, 3, 2, 5, 'Áo sơmi linen đẹp quá',      'Mặc mùa nóng rất mát. Màu sắc đúng như ảnh. Rất hài lòng!',           '/images/reviews/rev002.jpg', '2025-01-27 10:00:00', NULL,                  1),
(5, 1, 3, 3, 'Ổn nhưng không nổi bật',     'Chất liệu ok, nhưng thiết kế hơi đơn giản so với giá.',               NULL,                        '2025-01-29 20:00:00', NULL,                  0),  -- chờ duyệt
(5, 6, 3, 4, 'Quần jeans chất lượng tốt',  'Denim chắc chắn, may gọn gàng. Đáng giá tiền.',                        NULL,                        '2025-01-29 20:15:00', NULL,                  1);
GO

-- =============================================
-- 30. THÔNG BÁO
--     FK: id_khach_hang
-- =============================================
INSERT INTO thong_bao (id_khach_hang, loai_thong_bao, tieu_de, noi_dung, da_doc, ngay_tao, trang_thai) VALUES
(1, 'dat_hang',    'Đặt hàng thành công - HD001',        'Đơn hàng HD001 của bạn đã được nhận. Tổng: 1,007,000 VND.',          1, '2025-01-21 11:05:00', 1),
(1, 'giao_hang',   'Đơn hàng HD001 đang được giao',     'Mã theo dõi: GHN_2501210001. Dự kiến giao ngày 24/01.',             1, '2025-01-21 14:00:00', 1),
(1, 'dat_hang',    'Đặt hàng thành công - HD004',        'Đơn hàng HD004 của bạn đã được nhận. Tổng: 324,000 VND.',           0, '2025-01-28 14:10:00', 1),
(3, 'dat_hang',    'Đặt hàng thành công - HD002',        'Đơn hàng HD002 của bạn đã được nhận. Tổng: 524,000 VND.',           1, '2025-01-23 09:35:00', 1),
(3, 'giao_hang',   'Đơn hàng HD002 đang được giao',     'Mã theo dõi: GHN_2501230002. Dự kiến giao ngày 26/01.',             0, '2025-01-23 10:00:00', 1),
(5, 'dat_hang',    'Đặt hàng thành công - HD003',        'Đơn hàng HD003 của bạn đã được nhận. Tổng: 1,048,000 VND.',         1, '2025-01-25 16:50:00', 1),
(1, 'coupon',      'Bạn có coupon mới!',                  'Mã: SAVE50K - Giảm 50K cho đơn hàng từ 500K. HSD: 31/03/2025.',     1, '2025-01-15 08:00:00', 1),
(5, 'khuyen_mai',  'Flash Sale đang diễn ra!',           'Giảm 20% cho đơn hàng từ 1M. Sử dụng mã: FLASH20.',                1, '2025-01-20 07:00:00', 1),
(2, 'coupon',      'Chào mừng bạn gia nhập Menz!',      'Sử dụng mã WELCOME10 để giảm 10% đơn hàng đầu tiên.',              0, '2025-01-10 09:00:00', 1);
GO