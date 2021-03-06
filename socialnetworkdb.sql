USE [socialnetwork]
GO
/****** Object:  Table [dbo].[tbluprofile]    Script Date: 07/20/2017 03:22:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbluprofile](
	[upid] [int] IDENTITY(1,1) NOT NULL,
	[userid] [nvarchar](50) NULL,
	[photo] [nvarchar](50) NULL,
	[firstname] [nvarchar](50) NULL,
	[middlename] [nvarchar](50) NULL,
	[lastname] [nvarchar](50) NULL,
	[gender] [nvarchar](50) NULL,
	[dateofbirth] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
	[state] [nvarchar](50) NULL,
	[pin] [nvarchar](50) NULL,
	[mobileno] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbluprofile] PRIMARY KEY CLUSTERED 
(
	[upid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbluprofile] ON
INSERT [dbo].[tbluprofile] ([upid], [userid], [photo], [firstname], [middlename], [lastname], [gender], [dateofbirth], [city], [state], [pin], [mobileno]) VALUES (1, N'anjusrajan@gmail.com', N'~/photo/i1.jpg', N'anju', N's', N'rajan', N'Female', N'2017-07-14', N'1', N'1', N'682001', N'9895456923')
INSERT [dbo].[tbluprofile] ([upid], [userid], [photo], [firstname], [middlename], [lastname], [gender], [dateofbirth], [city], [state], [pin], [mobileno]) VALUES (2, N'anjusrajan@gmail.com', N'~/photo/i3.jpg', N'anju', N'r', N'rajan', N'Female', N'1994-07-14', N'1', N'1', N'682001', N'9895456923')
INSERT [dbo].[tbluprofile] ([upid], [userid], [photo], [firstname], [middlename], [lastname], [gender], [dateofbirth], [city], [state], [pin], [mobileno]) VALUES (3, N'anujjthomas@gmail.com', N'~/photo/i2.jpg', N'anuj', N'j', N'thomas', N'Male', N'1994-03-10', N'4', N'4', N'682002', N'8795412333')
INSERT [dbo].[tbluprofile] ([upid], [userid], [photo], [firstname], [middlename], [lastname], [gender], [dateofbirth], [city], [state], [pin], [mobileno]) VALUES (4, N'sininair@gmail.com', N'~/photo/i1.jpg', N'sini', N'', N'nair', N'Female', N'1993-07-14', N'1', N'1', N'682003', N'9656842919')
INSERT [dbo].[tbluprofile] ([upid], [userid], [photo], [firstname], [middlename], [lastname], [gender], [dateofbirth], [city], [state], [pin], [mobileno]) VALUES (5, N'rajumd@gmail.com', N'~/photo/3.jpg', N'raju', N'm', N'd', N'Male', N'1994-07-16', N'5', N'4', N'682011', N'7789652318')
INSERT [dbo].[tbluprofile] ([upid], [userid], [photo], [firstname], [middlename], [lastname], [gender], [dateofbirth], [city], [state], [pin], [mobileno]) VALUES (6, N'sininair@gmail.com', N'~/photo/i5.jpg', N'sini', N's', N'nair', N'Female', N'1993-07-14', N'1', N'1', N'682003', N'9656842919')
INSERT [dbo].[tbluprofile] ([upid], [userid], [photo], [firstname], [middlename], [lastname], [gender], [dateofbirth], [city], [state], [pin], [mobileno]) VALUES (7, N'anujjthomas@gmail.com', N'~/photo/i2.jpg', N'anuj', N'j', N'thomas', N'Male', N'1994-03-10', N'4', N'4', N'682002', N'8795412333')
INSERT [dbo].[tbluprofile] ([upid], [userid], [photo], [firstname], [middlename], [lastname], [gender], [dateofbirth], [city], [state], [pin], [mobileno]) VALUES (8, N'harithagh@gmail.com', N'~/photo/i1.jpg', N'haritha', N'g', N'h', N'Female', N'1999-07-16', N'4', N'4', N'682007', N'7789682317')
INSERT [dbo].[tbluprofile] ([upid], [userid], [photo], [firstname], [middlename], [lastname], [gender], [dateofbirth], [city], [state], [pin], [mobileno]) VALUES (9, N'sininair@gmail.com', N'~/photo/i5.jpg', N'sini', N's', N'nair', N'Female', N'1986-07-14', N'1', N'1', N'682001', N'9656842919')
INSERT [dbo].[tbluprofile] ([upid], [userid], [photo], [firstname], [middlename], [lastname], [gender], [dateofbirth], [city], [state], [pin], [mobileno]) VALUES (10, N'sininair@gmail.com', N'~/photo/i5.jpg', N'sini', N's', N'nair', N'Female', N'1992-10-20', N'1', N'1', N'682001', N'9656842919')
INSERT [dbo].[tbluprofile] ([upid], [userid], [photo], [firstname], [middlename], [lastname], [gender], [dateofbirth], [city], [state], [pin], [mobileno]) VALUES (11, N'sininair@gmail.com', N'~/photo/i5.jpg', N'sini', N's', N'nair', N'Female', N'1989-10-20', N'5', N'4', N'682001', N'9656842919')
INSERT [dbo].[tbluprofile] ([upid], [userid], [photo], [firstname], [middlename], [lastname], [gender], [dateofbirth], [city], [state], [pin], [mobileno]) VALUES (12, N'anujjthomas@gmail.com', N'~/photo/i2.jpg', N'anuj', N'j', N'thomas', N'Male', N'1994-03-10', N'4', N'4', N'682007', N'8795412333')
INSERT [dbo].[tbluprofile] ([upid], [userid], [photo], [firstname], [middlename], [lastname], [gender], [dateofbirth], [city], [state], [pin], [mobileno]) VALUES (13, N'sininair@gmail.com', N'~/photo/i5.jpg', N'sini', N's', N'nair', N'Female', N'1989-10-20', N'5', N'4', N'682005', N'9656842919')
INSERT [dbo].[tbluprofile] ([upid], [userid], [photo], [firstname], [middlename], [lastname], [gender], [dateofbirth], [city], [state], [pin], [mobileno]) VALUES (14, N'abyjohnk@gmail.com', N'~/photo/i6.jpg', N'aby', N'john', N'k', N'Male', N'1989-07-16', N'3', N'1', N'682003', N'9895647123')
INSERT [dbo].[tbluprofile] ([upid], [userid], [photo], [firstname], [middlename], [lastname], [gender], [dateofbirth], [city], [state], [pin], [mobileno]) VALUES (15, N'sininair@gmail.com', N'~/photo/i1.jpg', N'sini', N's', N'nair', N'Female', N'1989-10-20', N'5', N'4', N'682005', N'9656842919')
INSERT [dbo].[tbluprofile] ([upid], [userid], [photo], [firstname], [middlename], [lastname], [gender], [dateofbirth], [city], [state], [pin], [mobileno]) VALUES (16, N'sininair@gmail.com', N'~/photo/i5.jpg', N'sini', N's', N'nair', N'Female', N'1989-10-20', N'5', N'4', N'682005', N'9656842919')
SET IDENTITY_INSERT [dbo].[tbluprofile] OFF
/****** Object:  Table [dbo].[tblstate]    Script Date: 07/20/2017 03:22:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblstate](
	[stateid] [int] IDENTITY(1,1) NOT NULL,
	[statename] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblstate] PRIMARY KEY CLUSTERED 
(
	[stateid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblstate] ON
INSERT [dbo].[tblstate] ([stateid], [statename]) VALUES (1, N'kerala')
INSERT [dbo].[tblstate] ([stateid], [statename]) VALUES (4, N'tamilnadu')
INSERT [dbo].[tblstate] ([stateid], [statename]) VALUES (5, N'andrapradesh')
SET IDENTITY_INSERT [dbo].[tblstate] OFF
/****** Object:  Table [dbo].[tblscrap]    Script Date: 07/20/2017 03:22:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblscrap](
	[sid] [int] IDENTITY(1,1) NOT NULL,
	[smsgfrom] [nvarchar](50) NULL,
	[smsgto] [nvarchar](50) NULL,
	[sdetails] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblscrap] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblscrap] ON
INSERT [dbo].[tblscrap] ([sid], [smsgfrom], [smsgto], [sdetails]) VALUES (2, N'amalaantony93@gmail.com', N'anjusrajan@gmail.com', N';;;;')
INSERT [dbo].[tblscrap] ([sid], [smsgfrom], [smsgto], [sdetails]) VALUES (3, N'sininair@gmail.com', N'minumd@gmail.com', N'hi minu')
INSERT [dbo].[tblscrap] ([sid], [smsgfrom], [smsgto], [sdetails]) VALUES (5, N'sininair@gmail.com', N'anjusrajan@gmail.com', N'hii')
INSERT [dbo].[tblscrap] ([sid], [smsgfrom], [smsgto], [sdetails]) VALUES (6, N'anujjthomas@gmail.com', N'sininair@gmail.com', N'hi')
INSERT [dbo].[tblscrap] ([sid], [smsgfrom], [smsgto], [sdetails]) VALUES (9, N'anujjthomas@gmail.com', N'select friend', N'')
INSERT [dbo].[tblscrap] ([sid], [smsgfrom], [smsgto], [sdetails]) VALUES (10, N'anujjthomas@gmail.com', N'select friend', N'')
INSERT [dbo].[tblscrap] ([sid], [smsgfrom], [smsgto], [sdetails]) VALUES (11, N'sininair@gmail.com', N'anujjthomas@gmail.com', N'hii')
SET IDENTITY_INSERT [dbo].[tblscrap] OFF
/****** Object:  Table [dbo].[tblrequest]    Script Date: 07/20/2017 03:22:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblrequest](
	[rid] [int] IDENTITY(1,1) NOT NULL,
	[reqfrom] [nvarchar](50) NULL,
	[reqto] [nvarchar](50) NULL,
	[status] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblrequest] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblrequest] ON
INSERT [dbo].[tblrequest] ([rid], [reqfrom], [reqto], [status]) VALUES (1, N'sininair@gmail.com', N'anujjthomas@gmail.com', N'y')
INSERT [dbo].[tblrequest] ([rid], [reqfrom], [reqto], [status]) VALUES (2, N'anjusrajan@gmail.com', N'anujjthomas@gmail.com', N'f')
INSERT [dbo].[tblrequest] ([rid], [reqfrom], [reqto], [status]) VALUES (3, N'anjusrajan@gmail.com', N'sininair@gmail.com', N'f')
INSERT [dbo].[tblrequest] ([rid], [reqfrom], [reqto], [status]) VALUES (4, N'anujjthomas@gmail.com', N'anjusrajan@gmail.com', N'n')
INSERT [dbo].[tblrequest] ([rid], [reqfrom], [reqto], [status]) VALUES (5, N'sininair@gmail.com', N'anjusrajan@gmail.com', N'n')
SET IDENTITY_INSERT [dbo].[tblrequest] OFF
/****** Object:  Table [dbo].[tblprofile]    Script Date: 07/20/2017 03:22:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblprofile](
	[pid] [int] IDENTITY(1,1) NOT NULL,
	[userid] [nvarchar](50) NULL,
	[photo] [nvarchar](50) NULL,
	[firstname] [nvarchar](50) NULL,
	[middlename] [nvarchar](50) NULL,
	[lastname] [nvarchar](50) NULL,
	[gender] [nvarchar](50) NULL,
	[dateofbirth] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
	[state] [nvarchar](50) NULL,
	[pin] [nvarchar](50) NULL,
	[mobileno] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblprofile] PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblprofile] ON
INSERT [dbo].[tblprofile] ([pid], [userid], [photo], [firstname], [middlename], [lastname], [gender], [dateofbirth], [city], [state], [pin], [mobileno]) VALUES (1, N'anjusrajan@gmail.com', N'~/photo/i3.jpg', N'anju', N'r', N'rajan', N'Female', N'1994-07-14', N'1', N'1', N'682001', N'9895456923')
INSERT [dbo].[tblprofile] ([pid], [userid], [photo], [firstname], [middlename], [lastname], [gender], [dateofbirth], [city], [state], [pin], [mobileno]) VALUES (2, N'anujjthomas@gmail.com', N'~/photo/i2.jpg', N'anuj', N'j', N'thomas', N'Male', N'1994-03-10', N'4', N'4', N'682007', N'8795412333')
INSERT [dbo].[tblprofile] ([pid], [userid], [photo], [firstname], [middlename], [lastname], [gender], [dateofbirth], [city], [state], [pin], [mobileno]) VALUES (3, N'amalaantony93@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblprofile] ([pid], [userid], [photo], [firstname], [middlename], [lastname], [gender], [dateofbirth], [city], [state], [pin], [mobileno]) VALUES (4, N'sininair@gmail.com', N'~/photo/i5.jpg', N'sini', N's', N'nair', N'Female', N'1989-10-20', N'5', N'4', N'682005', N'9656842919')
INSERT [dbo].[tblprofile] ([pid], [userid], [photo], [firstname], [middlename], [lastname], [gender], [dateofbirth], [city], [state], [pin], [mobileno]) VALUES (5, N'minumd@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblprofile] ([pid], [userid], [photo], [firstname], [middlename], [lastname], [gender], [dateofbirth], [city], [state], [pin], [mobileno]) VALUES (6, N'ajithr@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblprofile] ([pid], [userid], [photo], [firstname], [middlename], [lastname], [gender], [dateofbirth], [city], [state], [pin], [mobileno]) VALUES (7, N'manugnath@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblprofile] ([pid], [userid], [photo], [firstname], [middlename], [lastname], [gender], [dateofbirth], [city], [state], [pin], [mobileno]) VALUES (8, N'rajr45@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblprofile] ([pid], [userid], [photo], [firstname], [middlename], [lastname], [gender], [dateofbirth], [city], [state], [pin], [mobileno]) VALUES (9, N'rajumd@gmail.com', N'~/photo/3.jpg', N'raju', N'm', N'd', N'Male', N'1994-07-16', N'5', N'4', N'682011', N'7789652318')
INSERT [dbo].[tblprofile] ([pid], [userid], [photo], [firstname], [middlename], [lastname], [gender], [dateofbirth], [city], [state], [pin], [mobileno]) VALUES (10, N'harithagh@gmail.com', N'~/photo/i1.jpg', N'haritha', N'g', N'h', N'Female', N'1999-07-16', N'4', N'4', N'682007', N'7789682317')
INSERT [dbo].[tblprofile] ([pid], [userid], [photo], [firstname], [middlename], [lastname], [gender], [dateofbirth], [city], [state], [pin], [mobileno]) VALUES (11, N'abyjohnk@gmail.com', N'~/photo/i6.jpg', N'aby', N'john', N'k', N'Male', N'1989-07-16', N'3', N'1', N'682003', N'9895647123')
SET IDENTITY_INSERT [dbo].[tblprofile] OFF
/****** Object:  Table [dbo].[tblphoto]    Script Date: 07/20/2017 03:22:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblphoto](
	[photoid] [int] IDENTITY(1,1) NOT NULL,
	[userid] [nvarchar](50) NULL,
	[photopath] [nvarchar](50) NULL,
	[comment] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblphoto] PRIMARY KEY CLUSTERED 
(
	[photoid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblphoto] ON
INSERT [dbo].[tblphoto] ([photoid], [userid], [photopath], [comment]) VALUES (1, N'sininair@gmail.com', N'~/photo/tumblr_n73pjzExpP1s7tgz7o1_500.png', N'cats')
INSERT [dbo].[tblphoto] ([photoid], [userid], [photopath], [comment]) VALUES (2, N'sininair@gmail.com', N'~/photo/1.jpg', N'bluestone')
INSERT [dbo].[tblphoto] ([photoid], [userid], [photopath], [comment]) VALUES (3, N'anjusrajan@gmail.com', N'~/photo/1.jpg', N'bluestone')
INSERT [dbo].[tblphoto] ([photoid], [userid], [photopath], [comment]) VALUES (4, N'anjusrajan@gmail.com', N'~/photo/68263589-beautiful-nature-wallpapers.jpg', N'wallpaper')
INSERT [dbo].[tblphoto] ([photoid], [userid], [photopath], [comment]) VALUES (5, N'anjusrajan@gmail.com', N'~/photo/system.jpg', N'lap')
INSERT [dbo].[tblphoto] ([photoid], [userid], [photopath], [comment]) VALUES (6, N'anjusrajan@gmail.com', N'~/photo/m1.jpg', N'mobile')
INSERT [dbo].[tblphoto] ([photoid], [userid], [photopath], [comment]) VALUES (7, N'minumd@gmail.com', N'~/photo/SAQEL4.jpg', N'places')
INSERT [dbo].[tblphoto] ([photoid], [userid], [photopath], [comment]) VALUES (8, N'manugnath@gmail.com', NULL, NULL)
INSERT [dbo].[tblphoto] ([photoid], [userid], [photopath], [comment]) VALUES (9, N'rajr45@gmail.com', NULL, NULL)
INSERT [dbo].[tblphoto] ([photoid], [userid], [photopath], [comment]) VALUES (10, N'rajumd@gmail.com', NULL, NULL)
INSERT [dbo].[tblphoto] ([photoid], [userid], [photopath], [comment]) VALUES (11, N'harithagh@gmail.com', NULL, NULL)
INSERT [dbo].[tblphoto] ([photoid], [userid], [photopath], [comment]) VALUES (12, N'sininair@gmail.com', N'~/photo/5.jpg', N'pjct')
INSERT [dbo].[tblphoto] ([photoid], [userid], [photopath], [comment]) VALUES (13, N'abyjohnk@gmail.com', NULL, NULL)
INSERT [dbo].[tblphoto] ([photoid], [userid], [photopath], [comment]) VALUES (14, N'sininair@gmail.com', N'~/photo/2.jpeg', N'eg')
SET IDENTITY_INSERT [dbo].[tblphoto] OFF
/****** Object:  Table [dbo].[tblnews]    Script Date: 07/20/2017 03:22:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblnews](
	[anid] [int] IDENTITY(1,1) NOT NULL,
	[news] [nvarchar](50) NULL,
	[newsdate] [nvarchar](50) NULL,
	[newsdetails] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblnews] PRIMARY KEY CLUSTERED 
(
	[anid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblnews] ON
INSERT [dbo].[tblnews] ([anid], [news], [newsdate], [newsdetails]) VALUES (1, N'ind v/s zim', N'2017-07-02', N'india win by 6 wickets against zim')
INSERT [dbo].[tblnews] ([anid], [news], [newsdate], [newsdetails]) VALUES (5, N'lopii', N'2017-09-04', N'bhhytrre njju')
SET IDENTITY_INSERT [dbo].[tblnews] OFF
/****** Object:  Table [dbo].[tbllogin]    Script Date: 07/20/2017 03:22:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbllogin](
	[userid] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
	[firstname] [nvarchar](50) NULL,
	[middlename] [nvarchar](50) NULL,
	[lastname] [nvarchar](50) NULL,
	[state] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
	[pin] [nvarchar](50) NULL,
	[mobileno] [nvarchar](50) NULL,
	[sequrityquestion] [nvarchar](50) NULL,
	[sequrityans] [nvarchar](50) NULL,
	[status] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbllogin] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tbllogin] ([userid], [password], [firstname], [middlename], [lastname], [state], [city], [pin], [mobileno], [sequrityquestion], [sequrityans], [status]) VALUES (N'abyjohnk@gmail.com', N'aby999', N'aby', N'john', N'k', N'1', N'3', N'682003', N'9895647123', N'what is ur fav place?', N'china', N'y')
INSERT [dbo].[tbllogin] ([userid], [password], [firstname], [middlename], [lastname], [state], [city], [pin], [mobileno], [sequrityquestion], [sequrityans], [status]) VALUES (N'ajithr@gmail.com', N'ajith555', N'ajith', N'', N'r', N'5', N'5', N'682006', N'8089632477', N'what is ur fav color?', N'black', N'n')
INSERT [dbo].[tbllogin] ([userid], [password], [firstname], [middlename], [lastname], [state], [city], [pin], [mobileno], [sequrityquestion], [sequrityans], [status]) VALUES (N'amalaantony93@gmail.com', N'amala', N'Amala', N'hjbj', N'Antony', N'1', N'1', N'683550', N'9961609927', N'what is ur fav color?', N'Green', N'y')
INSERT [dbo].[tbllogin] ([userid], [password], [firstname], [middlename], [lastname], [state], [city], [pin], [mobileno], [sequrityquestion], [sequrityans], [status]) VALUES (N'anjusrajan@gmail.com', N'anju111', N'anju', N's', N'rajan', N'1', N'1', N'682001', N'9895456923', N'what is ur fav color?', N'red', N'y')
INSERT [dbo].[tbllogin] ([userid], [password], [firstname], [middlename], [lastname], [state], [city], [pin], [mobileno], [sequrityquestion], [sequrityans], [status]) VALUES (N'anujjthomas@gmail.com', N'anuj222', N'anuj', N'j', N'thomas', N'4', N'4', N'682002', N'8795412333', N'what is ur fav subject?', N'maths', N'y')
INSERT [dbo].[tbllogin] ([userid], [password], [firstname], [middlename], [lastname], [state], [city], [pin], [mobileno], [sequrityquestion], [sequrityans], [status]) VALUES (N'harithagh@gmail.com', N'haritha888', N'haritha', N'g', N'h', N'4', N'4', N'682007', N'7789682317', N'what is ur fav color?', N'black', N'y')
INSERT [dbo].[tbllogin] ([userid], [password], [firstname], [middlename], [lastname], [state], [city], [pin], [mobileno], [sequrityquestion], [sequrityans], [status]) VALUES (N'manugnath@gmail.com', N'manu666', N'manu', N'g', N'nath', N'tamilnadu', N'chennai', N'682005', N'8606047894', N'what is ur fav color?', N'white', N'y')
INSERT [dbo].[tbllogin] ([userid], [password], [firstname], [middlename], [lastname], [state], [city], [pin], [mobileno], [sequrityquestion], [sequrityans], [status]) VALUES (N'minumd@gmail.com', N'minu444', N'minu', N'm', N'd', N'4', N'6', N'682004', N'9656874523', N'what is ur fav subject?', N'english', N'y')
INSERT [dbo].[tbllogin] ([userid], [password], [firstname], [middlename], [lastname], [state], [city], [pin], [mobileno], [sequrityquestion], [sequrityans], [status]) VALUES (N'rajr45@gmail.com', N'raj777', N'raj', N'', N'r', N'kerala', N'kottayam', N'682009', N'7736488259', N'what is ur fav place?', N'kerala', N'y')
INSERT [dbo].[tbllogin] ([userid], [password], [firstname], [middlename], [lastname], [state], [city], [pin], [mobileno], [sequrityquestion], [sequrityans], [status]) VALUES (N'rajumd@gmail.com', N'raju888', N'raju', N'm', N'd', N'4', N'5', N'682011', N'7789652318', N'what is ur fav color?', N'red', N'y')
INSERT [dbo].[tbllogin] ([userid], [password], [firstname], [middlename], [lastname], [state], [city], [pin], [mobileno], [sequrityquestion], [sequrityans], [status]) VALUES (N'sininair@gmail.com', N'sini333', N'sini', N'', N'nair', N'1', N'1', N'682003', N'9656842919', N'what is ur fav place?', N'agra', N'y')
/****** Object:  Table [dbo].[tblfeedback]    Script Date: 07/20/2017 03:22:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblfeedback](
	[fid] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
	[state] [nvarchar](50) NULL,
	[mobile] [nvarchar](50) NULL,
	[fdate] [datetime] NULL,
	[feedback] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblfeedback] PRIMARY KEY CLUSTERED 
(
	[fid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblfeedback] ON
INSERT [dbo].[tblfeedback] ([fid], [name], [address], [city], [state], [mobile], [fdate], [feedback]) VALUES (10, N'sini', N'sini,kochi', N'ernakulam', N'kerala', N'9656842919', CAST(0x0000A7B200000000 AS DateTime), N'nce app')
INSERT [dbo].[tblfeedback] ([fid], [name], [address], [city], [state], [mobile], [fdate], [feedback]) VALUES (11, N'anju', N'anju villa', N'trivandrum', N'kerala', N'9895456923', CAST(0x0000A7B200000000 AS DateTime), N'good one')
INSERT [dbo].[tblfeedback] ([fid], [name], [address], [city], [state], [mobile], [fdate], [feedback]) VALUES (13, N'anuj', N'anuj,hydrabad', N'hydrabad', N'andrapradesh', N'8795412333', CAST(0x0000A7B200000000 AS DateTime), N'excellet app')
INSERT [dbo].[tblfeedback] ([fid], [name], [address], [city], [state], [mobile], [fdate], [feedback]) VALUES (14, N'sini', N'sini,123', N'madurai', N'tamilnadu', N'9656842919', CAST(0x0000A7B200000000 AS DateTime), N'gud app')
SET IDENTITY_INSERT [dbo].[tblfeedback] OFF
/****** Object:  Table [dbo].[tblcity]    Script Date: 07/20/2017 03:22:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblcity](
	[cityid] [int] IDENTITY(1,1) NOT NULL,
	[cityname] [nvarchar](50) NULL,
	[stateid] [int] NULL,
	[statename] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblcity] PRIMARY KEY CLUSTERED 
(
	[cityid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblcity] ON
INSERT [dbo].[tblcity] ([cityid], [cityname], [stateid], [statename]) VALUES (1, N'ernakulam', 1, N'kerala')
INSERT [dbo].[tblcity] ([cityid], [cityname], [stateid], [statename]) VALUES (2, N'trivandrum', 1, N'kerala')
INSERT [dbo].[tblcity] ([cityid], [cityname], [stateid], [statename]) VALUES (3, N'kottayam', 1, N'kerala')
INSERT [dbo].[tblcity] ([cityid], [cityname], [stateid], [statename]) VALUES (4, N'chennai', 4, N'tamilnadu')
INSERT [dbo].[tblcity] ([cityid], [cityname], [stateid], [statename]) VALUES (5, N'madurai', 4, N'tamilnadu')
INSERT [dbo].[tblcity] ([cityid], [cityname], [stateid], [statename]) VALUES (6, N'hydrabad', 5, N'andrapradesh')
SET IDENTITY_INSERT [dbo].[tblcity] OFF
/****** Object:  Table [dbo].[tbladvertisement]    Script Date: 07/20/2017 03:22:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbladvertisement](
	[aid] [int] IDENTITY(1,1) NOT NULL,
	[advertisement] [nvarchar](50) NULL,
	[adec] [nvarchar](50) NULL,
	[type] [nvarchar](50) NULL,
	[photos] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbladvertisement] PRIMARY KEY CLUSTERED 
(
	[aid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbladvertisement] ON
INSERT [dbo].[tbladvertisement] ([aid], [advertisement], [adec], [type], [photos]) VALUES (4, N'laptops', N'models', N'sales', N'~/photo/6.jpg')
INSERT [dbo].[tbladvertisement] ([aid], [advertisement], [adec], [type], [photos]) VALUES (5, N'mobile', N'models', N'sales', N'~/photo/1.jpg')
SET IDENTITY_INSERT [dbo].[tbladvertisement] OFF
/****** Object:  Table [dbo].[tbladmin]    Script Date: 07/20/2017 03:22:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbladmin](
	[userid] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbladmin] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tbladmin] ([userid], [password]) VALUES (N'admin', N'password')
/****** Object:  StoredProcedure [dbo].[proc_spcialnetwork_tbllogin_updatechangepassword]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_spcialnetwork_tbllogin_updatechangepassword]
(@userid nvarchar(50),
@password nvarchar(50)
)
as
begin
UPDATE [socialnetwork].[dbo].[tbllogin]
   SET 
      [password] = @password
       WHERE (userid=@userid)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_spcialnetwork_tbladmin_updatechangepassword]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_spcialnetwork_tbladmin_updatechangepassword]
(@userid nvarchar(50),
@password nvarchar(50)
)
as
begin
UPDATE [socialnetwork].[dbo].[tbladmin]
   SET [password] = @password
 WHERE (userid=@userid)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tbluprofile_selectuserid]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_socialnetwork_tbluprofile_selectuserid]
(@userid nvarchar(50))
as
begin
SELECT [upid]
      ,[userid]
      ,[photo]
      ,[firstname]
      ,[middlename]
      ,[lastname]
      ,[gender]
      ,[dateofbirth]
      ,[city]
      ,[state]
      ,[pin]
      ,[mobileno]
  FROM [socialnetwork].[dbo].[tbluprofile]
where(userid=@userid)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tblstate_update]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_socialnetwork_tblstate_update]

(@stateid int,
@statename nvarchar(50))
as
begin
UPDATE [socialnetwork].[dbo].[tblstate]
   SET [statename] =@statename
 WHERE (stateid=@stateid)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tblstate_select]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_socialnetwork_tblstate_select]
(@stateid int=0)
as
begin
SELECT [stateid]
      ,[statename]
  FROM [socialnetwork].[dbo].[tblstate]
  where(@stateid=0 or stateid=@stateid)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tblstate_insert]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_socialnetwork_tblstate_insert]
(
@statename nvarchar(50))
as
begin
INSERT INTO [socialnetwork].[dbo].[tblstate]
           ([statename])
     VALUES
           (@statename)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tblstate_delete]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_socialnetwork_tblstate_delete]
(@stateid int)
as
begin
DELETE FROM [socialnetwork].[dbo].[tblstate]
      WHERE(stateid=@stateid)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tblscrap_selectscrapin]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_socialnetwork_tblscrap_selectscrapin]
(@smsgto nvarchar(50)
)
as
begin

SELECT [sid]
      ,[smsgfrom]
      ,[smsgto]
      ,[sdetails]
  FROM [socialnetwork].[dbo].[tblscrap]
where(smsgto=@smsgto)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tblscrap_select]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_socialnetwork_tblscrap_select]
(@smsgfrom nvarchar(50)
)
as
begin
SELECT [sid]
      ,[smsgfrom]
      ,[smsgto]
      ,[sdetails]
  FROM [socialnetwork].[dbo].[tblscrap]
where( smsgfrom=@smsgfrom)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tblscrap_insert]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_socialnetwork_tblscrap_insert]
(
@smsgfrom nvarchar(50),
@smsgto nvarchar(50),
@sdetails nvarchar(50)
)

as
begin

INSERT INTO [socialnetwork].[dbo].[tblscrap]
           ([smsgfrom]
           ,[smsgto]
           ,[sdetails])
     VALUES
           (@smsgfrom
           ,@smsgto
           ,@sdetails)
           end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tblscrap_delete]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_socialnetwork_tblscrap_delete]
(@sid int
)
as
begin

DELETE FROM [socialnetwork].[dbo].[tblscrap]
      WHERE(sid=@sid)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tblrequest_updatestatuschange]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_socialnetwork_tblrequest_updatestatuschange]
(
@reqfrom nvarchar(50))
as
begin
UPDATE [socialnetwork].[dbo].[tblrequest]
   SET 
      [status] ='f'
 WHERE (reqfrom=@reqfrom)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tblrequest_updatestatusacceptfriend]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_socialnetwork_tblrequest_updatestatusacceptfriend]
(
@reqfrom nvarchar(50))
as
begin


UPDATE [socialnetwork].[dbo].[tblrequest]
   SET [status] ='y'
 WHERE (reqfrom=@reqfrom)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tblrequest_selectreqto]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_socialnetwork_tblrequest_selectreqto]
(@reqto nvarchar(50)
)
as
begin
SELECT [rid]
      ,[reqfrom]
      ,[reqto]
      ,[status]
  FROM [socialnetwork].[dbo].[tblrequest]
where(@reqto=reqto)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tblrequest_selectjoin]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_socialnetwork_tblrequest_selectjoin]
(@reqto nvarchar(50)
)
as
begin
SELECT d.[rid]
      ,d.[reqfrom]
      ,d.[reqto]
      ,d.[status]
      ,s.[firstname]
      ,s.[userid]
  FROM [socialnetwork].[dbo].[tblrequest] d left join tblprofile s on d.reqfrom=s.userid
where(@reqto=reqto and status='n')
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tblrequest_selectfriends]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc[dbo].[proc_socialnetwork_tblrequest_selectfriends]
(@reqto nvarchar(50)
)
as
begin
SELECT  d.[rid]
      ,d.[reqfrom]
      ,d.[reqto]
      ,d.[status]
      ,s.[firstname]
      ,s.[userid]
  FROM [socialnetwork].[dbo].[tblrequest] d left join tblprofile s on d.reqfrom=s.userid
  where(reqto=@reqto and status='y')
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tblrequest_insert]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_socialnetwork_tblrequest_insert]
(
@reqfrom nvarchar(50),
@reqto nvarchar(50),
@status nvarchar(50)
)
as
begin
INSERT INTO [socialnetwork].[dbo].[tblrequest]
           ([reqfrom]
           ,[reqto]
           ,[status])
     VALUES
           (@reqfrom
           ,@reqto
           ,@status)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tblrequest_delete]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_socialnetwork_tblrequest_delete]
(@reqfrom nvarchar(50)

)
as
begin
DELETE FROM [socialnetwork].[dbo].[tblrequest]
      WHERE(reqfrom=@reqfrom)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tblprofile_update]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_socialnetwork_tblprofile_update]
(@userid nvarchar(50),
@photo nvarchar(50),
@firstname nvarchar(50),
@middlename  nvarchar(50),
@lastname nvarchar(50),
@gender nvarchar(50),
@dateofbirth nvarchar(50),
@city nvarchar(50),
@state nvarchar(50),
@pin nvarchar(50),
@mobileno nvarchar(50)
)
as
begin
UPDATE [socialnetwork].[dbo].[tblprofile]
   SET [userid] =@userid
      ,[firstname] = @firstname
      ,[middlename] =@middlename
      ,[lastname] = @lastname
      ,[gender] = @gender
      ,[dateofbirth] =@dateofbirth
      ,[city] = @city
      ,[state] = @state
      ,[pin] = @pin
      ,[mobileno] = @mobileno
     , [photo] = @photo
 WHERE (userid=@userid)
 insert into tbluprofile
 ([userid],
          [firstname],
          [middlename],
          [lastname],
          [gender],
          [dateofbirth],
          [city],
          [state],
          [pin],
          [mobileno],
         [photo] )
          values
          (@userid,
          @firstname,
          @middlename,
          @lastname,
          @gender,
          @dateofbirth,
          @city,
          @state,
          @pin,
          @mobileno,
          @photo)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tblprofile_selectuserid]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_socialnetwork_tblprofile_selectuserid]--'kiran141@gmail.com'
(@userid nvarchar(50))
as
begin
SELECT 
[pid],
[userid],
      [photo]
      ,[firstname]
      ,[middlename]
      ,[lastname]
      ,[gender]
      ,[dateofbirth]
      ,[city]
      ,[state]
      ,[pin]
      ,[mobileno]
  FROM [socialnetwork].[dbo].[tblprofile]
  where(userid=@userid)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tblprofile_selectscrap]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_socialnetwork_tblprofile_selectscrap]
(@userid nvarchar(50))
as
begin
SELECT [pid]
      ,[userid]
      ,[photo]
      ,[firstname]
      ,[middlename]
      ,[lastname]
      ,[gender]
      ,[dateofbirth]
      ,[city]
      ,[state]
      ,[pin]
      ,[mobileno]
  FROM [socialnetwork].[dbo].[tblprofile]
where(userid!=@userid)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tblprofile_selectmobileno]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_socialnetwork_tblprofile_selectmobileno]
(@mobileno nvarchar(50))
as
begin
SELECT [pid]
      ,[userid]
      ,[photo]
      ,[firstname]
      ,[middlename]
      ,[lastname]
      ,[gender]
      ,[dateofbirth]
      ,[city]
      ,[state]
      ,[pin]
      ,[mobileno]
  FROM [socialnetwork].[dbo].[tblprofile]
where(mobileno=@mobileno)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tblprofile_selectbyname]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_socialnetwork_tblprofile_selectbyname]
(@firstname nvarchar(50),
@middlename nvarchar(50),
@lastname nvarchar(50)
)
as
begin
SELECT [pid]
      ,[userid]
      ,[photo]
      ,[firstname]
      ,[middlename]
      ,[lastname]
      ,[gender]
      ,[dateofbirth]
      ,[city]
      ,[state]
      ,[pin]
      ,[mobileno]
  FROM [socialnetwork].[dbo].[tblprofile]
  where(firstname=@firstname or middlename=@middlename or lastname=@lastname)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tblphoto_selectuserid]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc[dbo].[proc_socialnetwork_tblphoto_selectuserid]
(@userid nvarchar(50)
)
as
begin
SELECT [photoid]
      ,[userid]
      ,[photopath]
      ,[comment]
  FROM [socialnetwork].[dbo].[tblphoto]
where(userid=@userid)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tblphoto_insert]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_socialnetwork_tblphoto_insert]
(
@userid nvarchar(50),
@photopath nvarchar(50),
@comment nvarchar(50)
)
as
begin
INSERT INTO [socialnetwork].[dbo].[tblphoto]
           ([userid]
           ,[photopath]
           ,[comment])
     VALUES
           (@userid
           ,@photopath
           ,@comment)

end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tblnews_select]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_socialnetwork_tblnews_select]
(@anid int=0
)
as
begin

SELECT [anid]
      ,[news]
      ,[newsdate]
      ,[newsdetails]
  FROM [socialnetwork].[dbo].[tblnews]
where(@anid=0 or anid=@anid)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tblnews_insert]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_socialnetwork_tblnews_insert]
(@news nvarchar(50),
@newsdate nvarchar(50),
@newsdetails nvarchar(50)
)
as
begin

INSERT INTO [socialnetwork].[dbo].[tblnews]
           ([news]
           ,[newsdate]
           ,[newsdetails])
     VALUES
           (@news
           ,@newsdate
           ,@newsdetails)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tblnews_delete]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_socialnetwork_tblnews_delete]
(@anid int)
as
begin

DELETE FROM [socialnetwork].[dbo].[tblnews]
      WHERE (anid=@anid)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tbllogin_updatebyadmin]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_socialnetwork_tbllogin_updatebyadmin]
(@userid nvarchar(50),
@status nvarchar(50))
as
begin
UPDATE [socialnetwork].[dbo].[tbllogin]
   SET 
      [status] = @status
 WHERE (userid=@userid)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tbllogin_selectforpassword]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_socialnetwork_tbllogin_selectforpassword]
(@userid nvarchar(50)
)
as
begin
SELECT [userid]
      ,[password]
      ,[firstname]
      ,[middlename]
      ,[lastname]
      ,[state]
      ,[city]
      ,[pin]
    ,[mobileno]
      ,[sequrityquestion]
      ,[sequrityans]
      ,[status]
  FROM [socialnetwork].[dbo].[tbllogin]
where(userid=@userid)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tbllogin_selectbyadmin]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_socialnetwork_tbllogin_selectbyadmin]
(@userid nvarchar(50)


)
as
begin


SELECT [userid]
      ,[password]
      ,[firstname]
      ,[middlename]
      ,[lastname]
      ,[state]
      ,[city]
      ,[pin]
      ,[mobileno]
      ,[sequrityquestion]
      ,[sequrityans]
      ,[status]
  FROM [socialnetwork].[dbo].[tbllogin]
where(@userid=''or userid=@userid)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tbllogin_select]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_socialnetwork_tbllogin_select]
(@userid nvarchar(50),
@password nvarchar(50)

)
as
begin
SELECT [userid]
      ,[password]
      ,[firstname]
      ,[middlename]
      ,[lastname]
      ,[state]
      ,[city]
      ,[pin]
     ,[mobileno]
      ,[sequrityquestion]
      ,[sequrityans]
      ,[status]
  FROM [socialnetwork].[dbo].[tbllogin]
 where(userid=@userid and password=@password and status='y')
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tbllogin_passworddisplay]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_socialnetwork_tbllogin_passworddisplay]
(@userid nvarchar(50),
@sequrityans nvarchar(50)
)
as
begin


SELECT [userid]
      ,[password]
      ,[firstname]
      ,[middlename]
      ,[lastname]
      ,[state]
      ,[city]
      ,[pin]
      ,[sequrityquestion]
      ,[sequrityans]
      ,[status]
  FROM [socialnetwork].[dbo].[tbllogin]
where(userid=@userid and sequrityans=@sequrityans)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tbllogin_insert]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_socialnetwork_tbllogin_insert]
(
             @userid nvarchar(50)
            ,@password nvarchar(50)
           ,@firstname nvarchar(50)
           ,@middlename nvarchar(50) 
           ,@lastname nvarchar(50)
           ,@state nvarchar(50)
           ,@city nvarchar(50)
           ,@pin nvarchar(50)
           ,@mobileno nvarchar(50)
           ,@sequrityquestion nvarchar(50)
           ,@sequrityans nvarchar(50)
           ,@status nvarchar(50)
)

as
begin
INSERT INTO [socialnetwork].[dbo].[tbllogin]
           ([userid]
           ,[password]
           ,[firstname]
           ,[middlename]
           ,[lastname]
           ,[state]
           ,[city]
           ,[pin]
           ,[mobileno]
           ,[sequrityquestion]
           ,[sequrityans]
           ,[status])
    VALUES
           (@userid
           ,@password
           ,@firstname
           ,@middlename
           ,@lastname
           ,@state
           ,@city
           ,@pin
           ,@mobileno
           ,@sequrityquestion
           ,@sequrityans
           ,@status)
          insert into tblprofile
          (
          [userid])
          values
          (@userid)
           insert into tblphoto
          (
          [userid])
          values
          (@userid)
          end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tbllogin_forget]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_socialnetwork_tbllogin_forget]
(@userid nvarchar(50)

)
as
begin
SELECT [userid]
      ,[password]
      ,[firstname]
      ,[middlename]
      ,[lastname]
      ,[state]
      ,[city]
      ,[pin]
      ,[sequrityquestion]
      ,[sequrityans]
      ,[status]
  FROM [socialnetwork].[dbo].[tbllogin]
where(userid=@userid)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tbllogin_delete]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_socialnetwork_tbllogin_delete]
(@stateid int
)
as
begin
DELETE FROM [socialnetwork].[dbo].[tblstate]
      WHERE(stateid=@stateid)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tblfeedback_select]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_socialnetwork_tblfeedback_select]
(@fid int=0
)
as
begin

SELECT [fid]
      ,[name]
      ,[address]
      ,[city]
      ,[state]
      ,[mobile]
      ,[fdate]
      ,[feedback]
  FROM [socialnetwork].[dbo].[tblfeedback]
  where(@fid=0 or fid=@fid)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tblfeedback_insert]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_socialnetwork_tblfeedback_insert]
(
@name nvarchar(50),
@address nvarchar(50),
@city nvarchar(50),
@state nvarchar(50),
@mobile nvarchar(50),
@fdate nvarchar(50),
@feedback nvarchar(50)

)
as
begin
INSERT INTO [socialnetwork].[dbo].[tblfeedback]
           ([name]
           ,[address]
           ,[city]
           ,[state]
           ,[mobile]
           ,[fdate]
           ,[feedback])
     VALUES
           (@name
           ,@address
           ,@city
           ,@state
           ,@mobile
           ,@fdate
           ,@feedback)
           end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tblfeedback_delete]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_socialnetwork_tblfeedback_delete]
(@fid int)
as
begin


DELETE FROM [socialnetwork].[dbo].[tblfeedback]
      WHERE (fid=@fid)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tblcity_update]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_socialnetwork_tblcity_update]
(
@cityid int,
@cityname nvarchar(50),
@stateid int)
as
begin
UPDATE [socialnetwork].[dbo].[tblcity]
   SET [cityname]=@cityname
 WHERE(cityid=@cityid)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tblcity_selectjoin]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_socialnetwork_tblcity_selectjoin]

(
@cityid int

)
as
begin
SELECT d.[cityid]
      ,d.[cityname]
      ,d.[stateid]
      ,s.[statename]
  FROM [socialnetwork].[dbo].[tblcity] d left join tblstate s on d.stateid=s.stateid
where( @cityid=0 or cityid=@cityid)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tblcity_selectform]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_socialnetwork_tblcity_selectform]
(@cityid int=0,
@stateid int)
as
begin
SELECT [cityid]
      ,[cityname]
      ,[stateid]
  FROM [socialnetwork].[dbo].[tblcity]
where ((@stateid=0 or stateid=@stateid)and(@cityid=0 or cityid=@cityid))

end
GO
/****** Object:  StoredProcedure [dbo].[Proc_socialnetwork_tblcity_selectcityid]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Proc_socialnetwork_tblcity_selectcityid]
(
@cityid int
)
As
BEGIN
SELECT [cityid]
      ,[cityname]
      ,[stateid]
  FROM [socialnetwork].[dbo].[tblcity]
where(cityid=@cityid OR @cityid=0)
END
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tblcity_insert]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_socialnetwork_tblcity_insert]
(
@cityname nvarchar(50),
@stateid int,
@statename nvarchar(50)
)
as
begin
INSERT INTO [socialnetwork].[dbo].[tblcity]
           ([cityname]
           ,[stateid]
           ,[statename])
     VALUES
           (@cityname
           ,@stateid
           ,@statename)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tblcity_delete]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_socialnetwork_tblcity_delete]
(@cityid int
)
as
begin
DELETE FROM [socialnetwork].[dbo].[tblcity]
      WHERE(cityid=@cityid)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tbladvertisement_select]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_socialnetwork_tbladvertisement_select]
(@aid int=0
)
as
begin
SELECT [aid]
      ,[advertisement]
      ,[adec]
      ,[type]
      ,[photos]
  FROM [socialnetwork].[dbo].[tbladvertisement]
where(@aid=0 or aid=@aid)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tbladvertisement_insert]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_socialnetwork_tbladvertisement_insert]
(
@advertisement nvarchar(50),
@adec nvarchar(50),
@type nvarchar(50),
@photos nvarchar(50)

)
as
begin


INSERT INTO [socialnetwork].[dbo].[tbladvertisement]
           ([advertisement]
           ,[adec]
           ,[type]
           ,[photos])
     VALUES
           (@advertisement
           ,@adec
           ,@type
           ,@photos)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tbladvertisement_delete]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_socialnetwork_tbladvertisement_delete]
(@aid int)
as
begin
DELETE FROM [socialnetwork].[dbo].[tbladvertisement]
      WHERE(aid=@aid)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tbladmin_select]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_socialnetwork_tbladmin_select]
(@userid nvarchar(50),
@password nvarchar(50)
)
as
begin
SELECT [userid]
      ,[password]
  FROM [socialnetwork].[dbo].[tbladmin]
  where(userid=@userid and password=@password)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_socialnetwork_tbladmin_insert]    Script Date: 07/20/2017 03:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_socialnetwork_tbladmin_insert]
(@userid nvarchar(50),
@password nvarchar(50)
)
as
begin

INSERT INTO [socialnetwork].[dbo].[tbladmin]
           ([userid]
           ,[password])
     VALUES
           (@userid
           ,@password)
end
GO
