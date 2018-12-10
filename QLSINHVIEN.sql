	Create database QLSV
	 go
	  use QLSV
	  go

	--Tạo bảng  Hệ
	Create table HE
	(
			mahe nvarchar(10) primary key,
			tenhe nvarchar(30),
			ghichu ntext
	)
	go
	--Tạo bảng KHOAHOC
	Create table KHOAHOC
	(
			makhoahoc nvarchar(10) primary key,
			tenkhoahoc nvarchar(30),
			ngaybatdau datetime,
			ngayketthuc datetime,
			mahe nvarchar(10),
			ghichu ntext ,
			foreign key(mahe)  references HE(mahe)
	)
	go
	--Tạo  bảng KHOA
	Create table KHOA
	(
			makhoa nvarchar(10) primary key,
			tenkhoa nvarchar(30),
			socanbogiangday smallint,
			ghichu ntext
	)
	go
	--Tạo bảng LOP
		Create table LOP
	(
		  malop nvarchar(10) primary key,
		  tenlop nvarchar(30),
		  makhoa nvarchar(10),
		  ghichu ntext,
		  foreign key( makhoa) references KHOA(makhoa)
	)
	go
	--Tạo bảng SINHVIEN
	Create table SINHVIEN
	(
		  masv nvarchar(10) primary key,
		  tensv nvarchar(30),
		  ngaysinh datetime,
		  gioitinh nvarchar(5),
		  diachi nvarchar(120),
		  malop nvarchar(10),
		  makhoa nvarchar(10),
		  sdt numeric,
		  ghichu ntext,
		  foreign key(malop) references LOP(malop),
		  foreign key(makhoa) references KHOA(makhoa)
	)

	go
	--Tạo bảng GIAOVIEN
		Create table GIAOVIEN
		(
			 magiaovien nvarchar(10) primary key,
			 tengiaovien nvarchar(30),
			 makhoa nvarchar(10),
			 chucvu nvarchar(30),
			 ghichu ntext
			foreign key(makhoa) references KHOA(makhoa)
	)
	go
	--Tạo bảng MONHOC
		Create Table MONHOC(
				mamh nvarchar(10) primary key,
				tenmh nvarchar(30),
				ngaydangky datetime,
				hocky smallint,
				stc smallint,
				ngaybatdau datetime,
				ngayketthuc datetime,
				tengiaovien nvarchar(30),
				ghichu ntext 
		)
		go
	-- Tạo bảng DIEM
		 Create table DIEM
		(
			masv nvarchar(10), 
			mamh nvarchar(10),
			diemlan1 numeric(18,2),
			diemlan2 numeric(18,2),
			lanthi smallint,
			ngaythi datetime,
			ghichu ntext,
			primary key(masv,mamh),
			foreign key(masv) references SINHVIEN (masv), 
			foreign key(mamh) references MONHOC (mamh)
		)
	
	go
			--Tạo bảng KETQUA
			Create table KETQUA
		(
			   masv nvarchar(10) ,
			   mamh nvarchar(10),
			   malop nvarchar(10) ,
			   diemtb numeric(18,2),
			   tinhtrang nvarchar(20),
			   ghichu ntext,
			   primary key(masv,mamh),
			foreign key (masv) references SINHVIEN(masv),
			 foreign key (mamh) references MONHOC(mamh),
			 foreign key (malop) references LOP(malop)
		)

	  go
	  --Tạo bảng TKAdmim
	      Create Table TKAdmin (
		      username varchar(16) primary key,
			  password varchar(32),
			  status int
		  )
		  
		  
	--Chèn dữ liệu bảng HE
		Insert into HE Values (N'DH', N'Đại học', null)
		Insert into HE Values (N'CD', N'Cao Đẳng', null)
		 go
	--Chèn dự liệu cho barg KHOAHOC
			  Insert into KHOAHOC Values(N'DHK1',N'DH Khóa 1',N'2007/8/19',N'2011/8/19',N'DH',null)
			  Insert into KHOAHOC Values(N'DHK2',N' DH Khóa 2',N'2008/8/19',N'2012/8/19',N'DH',null)
			  Insert into KHOAHOC Values(N'DHK3',N'DH Khóa 3',N'2009/8/19',N'2013/8/19',N'DH',null)
			  Insert into KHOAHOC Values(N'DHK4',N'DH Khóa 4',N'2010/8/19',N'2014/8/19',N'DH',null)
			  Insert into KHOAHOC Values(N'DHK5',N'DH Khóa 5',N'2011/8/19',N'2015/8/19',N'DH',null)
			  Insert into KHOAHOC Values(N'DHK6',N'DH Khóa 6',N'2012/8/19',N'2016/8/19',N'DH',null)
			  Insert into KHOAHOC Values(N'DHK7',N'DH Khóa 7',N'2013/8/19',N'2017/8/19',N'DH',null)
			  Insert into KHOAHOC Values(N'DHK8',N'DH Khóa 8',N'2014/8/19',N'2018/8/19',N'DH',null)
			  Insert into KHOAHOC Values(N'DHK9',N'DH Khóa 9',N'2015/8/19',N'2019/8/19',N'DH',null)
			  Insert into KHOAHOC Values(N'DHK10',N'DH Khóa 10',N'2016/8/19',N'2020/8/19',N'DH',null)
			  Insert into KHOAHOC Values(N'DHK11',N'DH Khóa 11',N'2017/8/19',N'2021/8/19',N'DH',null)
			  Insert into KHOAHOC Values(N'DHK12',N'DH Khóa 12',N'2018/8/19',N'2022/8/19',N'DH',null)
			  Insert into KHOAHOC Values(N'DHK13',N'DH Khóa 13',N'2019/8/19',N'2023/8/19',N'DH',null)
			  Insert into KHOAHOC Values(N'DHK14',N'DH Khóa 14',N'2020/8/19',N'2024/8/19',N'DH',null)
			 Insert into KHOAHOC Values(N'CDK1',N'CD Khóa 1',N'2007/8/19',N'2010/8/19',N'CD',null)
			 Insert into KHOAHOC Values(N'CDK2',N'CD Khóa 2',N'2008/8/19',N'2011/8/19',N'CD',null)
			 Insert into KHOAHOC Values(N'CDK3',N'CD Khóa 3',N'2009/8/19',N'2012/8/19',N'CD',null)
			 Insert into KHOAHOC Values(N'CDK4',N'CD Khóa 4',N'2010/8/19',N'2013/8/19',N'CD',null)
			 Insert into KHOAHOC Values(N'CDK5',N'CD Khóa 5',N'2011/8/19',N'2014/8/19',N'CD',null)
			 Insert into KHOAHOC Values(N'CDK6',N'CD Khóa 6',N'2012/8/19',N'2015/8/19',N'CD',null)

			go
		--Chèn dữ liệu bảng KHOA
			Insert into KHOA Values(N'CNM',N'Công nghệ may',50,null)
			Insert into KHOA Values(N'CNTP',N'Công nghệ thực phẩm',60,null)
			Insert into KHOA Values(N'KT',N'Kế Toán',80,null)
			Insert into KHOA Values(N'QTKD',N'Quản trị kinh doanh',50,null)
		   Insert into KHOA Values(N'TDH',N'Tự Động Hóa',50,null)
		   Insert into KHOA Values(N'CNTT',N'Công Nghệ Thông Tin',50,null)
		   Insert into KHOA Values(N'CNDS',N'Công nghệ dệt sợi',50,null)
		   Insert into KHOA Values(N'CK',N'Cơ khí',50,null)
		   Insert into KHOA Values(N'TCNH',N'Tài chính ngân hàng',50,null)
		   Insert into KHOA Values(N'DTTT',N'Điện tử  truyền thông',50,null)
		   Insert into KHOA Values(N'KDTM',N'Kinh Doanh Thương mại',50,null)
		   Insert into KHOA Values(N'DT',N'Điện Tử',50,null)
		  Insert into KHOA Values(N'QTM',N'Quản trị mạng',50,null)
		  Insert into KHOA Values(N'MT',N'Marketing',30,null)
		  Insert into KHOA Values(N'KTCDT',N'Kỹ thuật cơ điện tử',50,null)
		  Insert into KHOA Values(N'KTHN',N'Kỹ thuật hạt nhân',50,null)
		  Insert into KHOA Values(N'SPAV',N'Sư phạm anh văn',50,null)
		   Insert into KHOA Values(N'QTKS',N'Quản trị khách sạn',50,null)
		   Insert into KHOA Values(N'QTNL',N'Quản trị nhân lực',50,null)
		   Insert into KHOA Values(N'TN',N'Tự Nhiên',30,null)
		   Insert into KHOA Values(N'XH',N'Xã hội',30,null)
		   Insert into KHOA Values(N'NN',N'Ngoại Ngữ',20,null)
   

		   go
	--Chèn dữ liệu bảng LOP
		   Insert into LOP Values(N'DHTI10a3',N'DH Tin 10a3',N'CNTT',null)
		   Insert into LOP Values(N'DHKT10a3',N'DH Kế toán 10a3',N'KT',null)
		   Insert into LOP Values(N'DHDT10a3',N'DH Điện tử10a3',N'DT',null)
		   Insert into LOP Values(N'DHTCNH10a3',N'DH Tài chinh ngân hàng 10a3',N'TCNH',null)
		   Insert into LOP Values(N'DHMAY10a3',N'DH May 10a3',N'CNM',null)
		   Insert into LOP Values(N'CDDT10a3',N'DH Điện tử 10a3',N'DT',null)
		   Insert into LOP Values(N'DHTI11a3',N'DH Tin 11a3',N'CNTT',null)
		   Insert into LOP Values(N'DHTI9a1',N'DH Tin 9a1',N'CNTT',null)
		   Insert into LOP Values(N'DHTI12a3',N'DH Tin 12a3',N'CNTT',null)
		   Insert into LOP Values(N'CDKT10a4',N'DH Kế toán 10a4',N'KT',null)
		   Insert into LOP Values(N'DHKT12a3',N'DH Kế toán 12a3',N'KT',null)
		   Insert into LOP Values(N'DHTP9a1',N'DH Thực phẩm 9a1',N'CNTP',null)
		   Insert into LOP Values(N'CDTP11a5',N'CD Thực phẩm 11a5',N'CNTP',null)
		   Insert into LOP Values(N'DHMAY9a5',N'DH May 9a5',N'CNM',null)
		   Insert into LOP Values(N'DHMAY11a2',N'DH May 11a2',N'CNM',null)
		   Insert into LOP Values(N'CDMAY10a3',N'CD May 10a3',N'CNM',null)
		   Insert into LOP Values(N'DHDT9a1',N'DH Điện tử 9a1',N'DT',null)
		   Insert into LOP Values(N'DHDT11a2',N'DH Điện tử 11a2',N'DT',null)
		   Insert into LOP Values(N'CDDT12a3',N'DH Điện tử 12a3',N'DT',null)
 
		 go  
	--Chèn dữ liệu cho bảng SINHVIEN
		   Insert into SINHVIEN values(N'SV001',N'Trần Quang Tư',N'1998/2/14',N'Nam',N'Bắc Giang',N'DHTI10a3',N'CNTT',0372673250,null)
		   Insert into SINHVIEN values(N'SV002',N'Phan Minh Anh',N'1998/5/19',N'Nam',N'Hà Nội',N'DHKT10a3',N'KT',0372673251,null)
		   Insert into SINHVIEN values(N'SV003',N'Vũ Xuân Bắc',N'1998/8/13',N'Nam',N'Bắc Giang',N'DHDT10a3',N'DT',0372673252,null)
		   Insert into SINHVIEN values(N'SV004',N'Nguyễn Duy Đại',N'1998/6/6',N'Nam',N'Ninh Bình',N'DHTCNH10a3',N'TCNH',0372673253,null)
		   Insert into SINHVIEN values(N'SV005',N'Tạ Công Duy ',N'1998/2/15',N'Nam',N'Thường Tín',N'DHMAY10a3',N'CNM',0372673254,null)
		   Insert into SINHVIEN values(N'SV006',N'Nguyễn Đình Hậu',N'1998/3/14',N'Nam',N'Hà Nội',N'CDDT10a3',N'DT',0372673255,null)
		   Insert into SINHVIEN values(N'SV007',N'Đào Minh Hiếu',N'1998/2/4',N'Nam',N'Bắc Giang',N'DHTI11a3',N'CNTT',0372673256,null)
		   Insert into SINHVIEN values(N'SV008',N'Lê Xuân Hòa',N'1998/2/1',N'Nam',N'Bắc Ninh',N'DHTI11a3',N'CNTT',0372673257,null)
		   Insert into SINHVIEN values(N'SV009',N'Nguyễn Lan Hương',N'1998/2/5',N'Nữ',N'Bắc Ninh',N'DHTI9a1',N'CNTT',0372673258,null)
		   Insert into SINHVIEN values(N'SV010',N'Phan Thị Lan',N'1998/2/6',N'Nữ',N'Nghệ An',N'DHTI12a3',N'CNTT',0372673259,null)
		   Insert into SINHVIEN values(N'SV011',N'Trần Quốc Phương',N'1998/7/14',N'Nam',N'Hà Nội',N'CDKT10a4',N'KT',0372673260,null)
		   Insert into SINHVIEN values(N'SV012',N'Nguyễn Hồng Nhung',N'1998/2/24',N'Nữ',N'Quảng Ninh',N'DHKT10a3',N'KT',0372673261,null)
		   Insert into SINHVIEN values(N'SV013',N'Dương Thị Thảo',N'1998/8/14',N'Nữ',N'Bắc Ninh',N'DHKT12a3',N'KT',0372673262,null)
		   Insert into SINHVIEN values(N'SV014',N'Ngô Hồng Sơn',N'1998/9/14',N'Nam',N'Hà Nội',N'DHTP9a1',N'CNTP',0372673263,null)
		   Insert into SINHVIEN values(N'SV015',N'Nguyễn Đức Thành',N'1998/2/4',N'Nam',N'Lai Châu',N'CDTP11a5',N'CNTP',0372673350,null)
		   Insert into SINHVIEN values(N'SV016',N'Dương Chí Thanh',N'1998/2/14',N'Nam',N'Bắc Giang',N'DHMAY9a5',N'CNM',0372683250,null)
		   Insert into SINHVIEN values(N'SV017',N'Vũ Viết Văn',N'1998/2/18',N'Nam',N'Hưng Yên',N'DHMAY11a2',N'CNM',0372773250,null)
		   Insert into SINHVIEN values(N'SV018',N'Nguyễn Như Thịnh',N'1998/2/15',N'Nam',N'Bắc Ninh',N'DHDT9a1',N'DT',0373673250,null)
		   Insert into SINHVIEN values(N'SV019',N'Trần Văn Toan',N'1998/1/14',N'Nam',N'Nam Định',N'DHDT11a2',N'DT',0472673250,null)
		   Insert into SINHVIEN values(N'SV020',N'Nguyễn Mạnh Long',N'1997/2/14',N'Nam',N'Hà Nội',N'CDDT12a3',N'DT',0382673250,null)

		   go
	--Chèn dữ liệu cho bảng GIAOVIEN

				Insert into GIAOVIEN values(N'GV001',N'Đào Thị Phương Anh',N'CNTT',N'Giảng Viên',null)
				Insert into GIAOVIEN values(N'GV002',N'Nguyễn Phương Nga',N'CNTT',N'Giảng Viên',null)
				Insert into GIAOVIEN values(N'GV003',N'Trần Huy',N'TN',N'Giảng Viên',null)
				Insert into GIAOVIEN values(N'GV004',N'Trần Hoài Anh',N'TN',N'Giảng Viên',null)
				Insert into GIAOVIEN values(N'GV005',N'Vũ Thu Uyên',N'CNTT',N'Giảng Viên',null)
				Insert into GIAOVIEN values(N'GV006',N'Nguyễn Lan Thương',N'CNTT',N'Giảng Viên',null)
				Insert into GIAOVIEN values(N'GV007',N'Nguyễn Thúy Hồng',N'CNTT',N'Giảng Viên',null)
				Insert into GIAOVIEN values(N'GV008',N'Vũ Minh Lan',N'XH',N'Giảng Viên',null)
				Insert into GIAOVIEN values(N'GV009',N'Nguyễn Ngọc Ánh',N'XH',N'Giảng Viên',null)
				Insert into GIAOVIEN values(N'GV010',N'Nguyễn Thu Hiền',N'CNTT',N'Giảng Viên',null)
				Insert into GIAOVIEN values(N'GV011',N'Trần Quang Đại',N'CNTT',N'Giảng Viên',null)
				Insert into GIAOVIEN values(N'GV012',N'Nguyễn Hoài Thu',N'NN',N'Giảng Viên',null)
				Insert into GIAOVIEN values(N'GV013',N'Nguyễn Thị Hương',N'CNTT',N'Giảng Viên',null)
				Insert into GIAOVIEN values(N'GV014',N'Doãn Thị Thúy Hiền',N'CNTT',N'Giảng Viên',null)
				Insert into GIAOVIEN values(N'GV015',N'Nguyễn Thanh Hà',N'NN',N'Giảng Viên',null)
				Insert into GIAOVIEN values(N'GV016',N'Bùi Thị Huế',N'TN',N'Giảng Viên',null)
				Insert into GIAOVIEN values(N'GV017',N'Đỗ Tuấn Hạnh',N'CNTT',N'Giảng Viên',null)
				Insert into GIAOVIEN values(N'GV018',N'Nguyễn Thị Thùy',N'CNTT',N'Giảng Viên',null)
				Insert into GIAOVIEN values(N'GV019',N'Phạm Ngọc Tuân',N'CNTT',N'Giảng Viên',null)
				Insert into GIAOVIEN values(N'GV020',N'Nguyễn Thị Thu Hà',null,N'Giáo Vụ',null)
				Insert into GIAOVIEN values(N'GV021',N'Phạm Anh Tuấn',null,N'Giáo Vụ',null)

		go

	--Chèn dữ liệu cho bảng MONHOC


				Insert into MONHOC Values (N'mh01',N'Cơ sở dữ liệu',N'2018/8/27',1,4,N'2018/9/5',N'2019/1/31',N'Đào Thị Phương Anh',null)
				Insert into MONHOC Values (N'mh02',N'SQL Server',N'2018/8/27',1,2,N'2018/9/5',N'2019/1/31',N'Nguyễn Phương Nga',null)
				Insert into MONHOC Values (N'mh03',N'Toán cao cấp 1',N'2019/8/27',1,2,N'2018/9/5',N'2019/1/31',N'Trần Huy',null)
				Insert into MONHOC Values (N'mh04',N'Hóa Học',N'2019/1/26',1,2,N'2018/2/5',N'2019/7/31',N'Nguyễn ANh Như',null)
				Insert into MONHOC Values (N'mh05',N'Toán rời rạc',N'2018/8/27',1,3,N'2018/9/5',N'2019/1/31',N'Trần Hoài Anh',null)
				Insert into MONHOC Values (N'mh06',N'Tin cơ sở',N'2018/8/27',1,4,N'2018/9/5',N'2019/1/31',N'Vũ Thu Uyên',null)
				Insert into MONHOC Values (N'mh07',N'Nguyên lý kế toán',N'2018/8/27',1,4,N'2018/9/5',N'2019/1/31',N'Nguyễn Lan Thương',null)
				Insert into MONHOC Values (N'mh08',N'Hệ điều hành',N'2018/8/27',1,4,N'2018/9/5',N'2019/1/31',N'Nguyễn Thúy Hồng',null)
				Insert into MONHOC Values (N'mh09',N'Môi trường và con người',N'2018/8/27',1,1,N'2018/9/5',N'2019/1/31',N'Trịnh Minh Lan',null)
				Insert into MONHOC Values (N'mh10',N'Quản trị học',N'2018/8/27',1,2,N'2018/9/5',N'2019/1/31',N'Nguyễn Ngọc Anh',null)
				Insert into MONHOC Values (N'mh11',N'ANh văn 2',N'2018/8/27',1,3,N'2018/9/5',N'2019/1/31',N'Nguyễn Thanh Hà',null)
				Insert into MONHOC Values (N'mh12',N'Vật Lý',N'2018/8/27',1,4,N'2018/9/5',N'2019/1/31',N'Bùi Thị Huế',null)
				Insert into MONHOC Values (N'mh13',N'Toán cao cấp 2',N'2019/1/26',2,2,N'2018/2/5',N'2019/7/31',N'Dương Anh Tú',null)
				Insert into MONHOC Values (N'mh14',N'Ký thuật lập trình',N'2019/1/26',2,2,N'2018/2/5',N'2019/7/31',N'Nguyễn Thu Hiền',null)
				Insert into MONHOC Values (N'mh15',N'Kiến trúc máy tính',N'2019/1/26',2,2,N'2018/2/5',N'2019/7/31',N'Trần Thanh Đại',null)
				Insert into MONHOC Values (N'mh16',N'Lập trình Windows',N'2019/1/26',2,2,N'2018/2/5',N'2019/7/31',N'Nguyễn Thị Thùy',null)
				Insert into MONHOC Values (N'mh17',N'Anh Văn 3',N'2019/1/26',2,3,N'2018/2/5',N'2019/7/31',N'Nguyễn Hoài Thu',null)
				Insert into MONHOC Values (N'mh18',N'Lập trình hướng đối tượng',N'2019/1/26',2,2,N'2018/2/5',N'2019/7/31',N'Nguyễn Thị Hương',null)
				Insert into MONHOC Values (N'mh19',N'Kỹ thuật đồ họa máy tính',N'2019/1/26',2,2,N'2018/2/5',N'2019/7/31',N'Doãn Thị Thúy Hiền',null)
				Insert into MONHOC Values (N'mh20',N'Quy Hoạch Tuyến tính',N'2019/1/26',2,2,N'2018/2/5',N'2019/7/31',N'Trần Chí Lê',null)
		 go

	 --Chèn dữ liệu cho bảng DIEM
			  Insert into DIEM Values (N'SV001',N'mh01',7,null,1,N'2018/6/19',null)
			  Insert into DIEM Values (N'SV002',N'mh02',3,6,2,N'2018/7/26',null)
			  Insert into DIEM Values (N'SV003',N'mh03',3,2,2,N'2018/7/29',null)
			  Insert into DIEM Values (N'SV004',N'mh04',6,null,1,N'2018/6/19',null)
			  Insert into DIEM Values (N'SV005',N'mh05',7,null,1,N'2018/6/20',null)
			  Insert into DIEM Values (N'SV006',N'mh06',7,null,1,N'2018/6/20',null)
			  Insert into DIEM Values (N'SV007',N'mh07',3,5,2,N'2018/7/22',null)
			  Insert into DIEM Values (N'SV008',N'mh08',2,8,2,N'2018/7/22',null)
			  Insert into DIEM Values (N'SV003',N'mh20',4,3,2,N'2018/6/18',null)
			  Insert into DIEM Values (N'SV004',N'mh20',5,3,2,N'2018/6/18',null)
              Insert into DIEM Values (N'SV009',N'mh09',9,null,1,N'2018/6/19',null)
			  Insert into DIEM Values (N'SV010',N'mh10',2,4,2,N'2018/7/26',null)
			  Insert into DIEM Values (N'SV011',N'mh11',10,null,1,N'2018/7/20',null)
			  Insert into DIEM Values (N'SV012',N'mh12',6,null,1,N'2018/6/19',null)
			  Insert into DIEM Values (N'SV013',N'mh13',1,7,2,N'2018/7/29',null)
			  Insert into DIEM Values (N'SV014',N'mh14',5,4,2,N'2018/7/29',null)
			  Insert into DIEM Values (N'SV015',N'mh15',8,null,1,N'2018/6/19',null)
			  Insert into DIEM Values (N'SV016',N'mh16',7,null,1,N'2018/6/18',null)
			  Insert into DIEM Values (N'SV017',N'mh17',4,6,2,N'2018/7/20',null)
			  Insert into DIEM Values (N'SV018',N'mh18',5,8,2,N'2018/7/20',null)
			  Insert into DIEM Values (N'SV019',N'mh19',9,null,1,N'2018/6/19',null)
			  Insert into DIEM Values (N'SV020',N'mh20',10,null,1,N'2018/6/18',null)
			  Insert into DIEM Values (N'SV005',N'mh20',3,2,2,N'2018/6/18',null)
			  Insert into DIEM Values (N'SV020',N'mh01',4,1,2,N'2018/6/18',null)
			  Insert into DIEM Values (N'SV016',N'mh12',1,3,2,N'2018/6/18',null)
			  Insert into DIEM Values (N'SV010',N'mh16',2,4,2,N'2018/6/18',null)
			  Insert into DIEM Values (N'SV008',N'mh16',3,1.5,2,N'2018/6/18',null)
			 
			
			  update DIEM 
			  set ghichu=N'Thi lại' where lanthi=2



			  go
	--Chèn dữ liệu cho bảng KETQUA
				Insert into KETQUA values (N'SV001', N'mh01', N'DHTI10a3', null, null, null )
				Insert into KETQUA values (N'SV002', N'mh02',N'DHKT10a3', null, null,  null )
				Insert into KETQUA values (N'SV001', N'mh03', N'DHDT10a3', null,null,  null)
				Insert into KETQUA values (N'SV004', N'mh04', N'DHTI10a3', null, null, null )
				Insert into KETQUA values (N'SV001', N'mh10', N'DHMAY10a3', null,null,null )
				Insert into KETQUA values (N'SV001', N'mh02',N'DHTI9a1', null,null, null)
				Insert into KETQUA values (N'SV007', N'mh03', N'DHTI12a3', null,null, null )
				Insert into KETQUA values (N'SV008', N'mh04', N'CDKT10a4', null,null, null)
				Insert into KETQUA values (N'SV009', N'mh01', N'DHKT12a3', null,null, null )
				Insert into KETQUA values (N'SV010', N'mh02', N'DHTP9a1', null,null, null )
				Insert into KETQUA values (N'SV008', N'mh03', N'CDTP11a5', null,null, null )
				Insert into KETQUA values (N'SV007', N'mh04', N'DHMAY11a2',null,null, null)
				Insert into KETQUA values (N'SV013', N'mh01', N'CDMAY10a3',null,null,null )
				Insert into KETQUA values (N'SV013', N'mh02', N'DHDT9a1',null,null, null)
				Insert into KETQUA values (N'SV015', N'mh03', N'DHDT11a2',null,null, null )
				Insert into KETQUA values (N'SV016',N'mh04', N'CDDT12a3',null,null, null )
				Insert into KETQUA values (N'SV015', N'mh01', N'DHDT11a2',null,null, null )
				Insert into KETQUA values (N'SV015', N'mh02', N'DHTI10a3',null,null, null)
				Insert into KETQUA values (N'SV005', N'mh03', N'DHKT10a3',null,null, null )
				Insert into KETQUA values (N'SV005',N'mh04', N'CDMAY10a3',null,null, null)
				Insert into KETQUA values (N'SV010', N'mh01', N'DHKT10a3',null,null, null )
				Insert into KETQUA values (N'SV002', N'mh04', N'DHKT10a3',null,null, null )
				Insert into KETQUA values (N'SV002', N'mh18', N'DHKT10a3',null,null, null )
				Insert into KETQUA values (N'SV007', N'mh05', N'DHKT10a3',null,null, null )
				Insert into KETQUA values (N'SV016', N'mh12', N'CDDT10a3',null,null, null )
				Insert into KETQUA values (N'SV010', N'mh16', N'DHTI12a3',null,null, null )
				Insert into KETQUA values (N'SV008', N'mh16', N'DHTI9a1',null,null, null )

			
	
   go

  --Chèn dữ liệu cho bảng TKAdmin 
        Insert into TKAdmin values ('admin','E10ADC3949BA59ABBE56E057F20F883E',1)
		Insert into TKAdmin values ('vumanhhoai','C35AA101C57A4148423F072AFEF6E202',2)
		Insert into TKAdmin values ('phammainhu','868D42CD0F3C7FCDA7013A4E4982B880',2)
		Insert into TKAdmin values ('daothiphuonganh','8C80BBAC5C4DF6E9A85AF6940BA1C3F3',4)
	    Insert into TKAdmin values ('nguyenphuongnga','BF5914FBCC2CC3B9CCBBA60EB9D7B86F',4)
	    Insert into TKAdmin values ('vuthuuyen','6BBA00550E5025395DAEB37B7B4B02',4)
	    Insert into TKAdmin values ('nguyenthuhien','97BFDD3FE299A8E462E4A9AA0E232B2B',4)
		Insert into TKAdmin values ('buithihue','71A6B6F094346A8832DF801C8428EA06',4)
		Insert into TKAdmin values ('tranquangdai','B892F199C326369E706A77B8BA0642D0',4)
		Insert into TKAdmin values ('nguyenthanhha','A38E6D826BA998FB384535075BED6743',4)
		Insert into TKAdmin values ('tranhuy','11967D5E9ADDC5416EA9224EEE0E91FC',4)
		Insert into TKAdmin values ('truongthile','D9180594744F870AEEFB086982E980BB',5)
	    Insert into TKAdmin values ('vuvietvan','957D2FA52C19A5AFF4CCF5D9A959ADAB',5)
		Insert into TKAdmin values ('lailexuan','EBBB855092F574CEF61B6F3CE7640D87',5)
		Insert into TKAdmin values ('nguyenthuynga','0A478FD4FFB01AE2744B2DBDBAF3112C',5)
		Insert into TKAdmin values ('duongthithao','0823FE22C8E6B63779BBBE9F43752156',5)
		Insert into TKAdmin values ('tranquangtu','B6B4CE6DF035DCFAA26F3BC32FB89E6A',5)
		Insert into TKAdmin values ('nguyenhongnhung','40B340B06A104930D9C4164578BF4D79',5)
		Insert into TKAdmin values ('nguyenthisen','82B77281BD3029D95CFDF76C16657391',5)



		Update KETQUA 
		set diemtb=(8*40+DIEM.diemlan1*60)/100
		from DIEM where KETQUA.masv=DIEM.masv and KETQUA.mamh=KETQUA.mamh and diemlan1>5

		Update KETQUA 
		set diemtb=(8*40+DIEM.diemlan2*60)/100
		from DIEM where KETQUA.masv=DIEM.masv and KETQUA.mamh=KETQUA.mamh and diemlan1<5

		Update KETQUA
		set tinhtrang=N'Giỏi' where diemtb>=8.5

				Update KETQUA
		set tinhtrang=N'Khá Giỏi' where diemtb>=8.0 and diemtb<=8.4

			Update KETQUA
		set tinhtrang=N'Khá' where diemtb>=7.0 and diemtb<=7.9

		Update KETQUA
		set tinhtrang=N'Trung bình khá' where diemtb>=6.5 and diemtb<=6.9

				Update KETQUA
		set tinhtrang=N'Trung bình ' where diemtb>=5.5 and diemtb<=6.4

       			Update KETQUA
		set tinhtrang=N'Trung bình Yếu' where diemtb>=5.0 and diemtb<=5.4

				Update KETQUA
		set tinhtrang=N'Yếu' where diemtb>=4.0 and diemtb<=4.9

					Update KETQUA
		set tinhtrang=N'Kém ' where diemtb<4.0

		 Update KETQUA 
		 set ghichu=N'Học lại' where diemtb<=4.0

		  Update KETQUA 
		  set ghichu=N'Cảnh cáo' where diemtb<=5.0 and diemtb>4.0

		   Update KETQUA 
		   set ghichu=N'Học tiếp' where diemtb>5.0






		Select * from HE
	   Select * from MONHOC
	   Select * from LOP
	   Select * from SINHVIEN
	  Select * from GIAOVIEN
 	  Select * from KHOAHOC
	  Select * from KHOA
	  Select * from DIEM
	   Select * from KETQUA


	