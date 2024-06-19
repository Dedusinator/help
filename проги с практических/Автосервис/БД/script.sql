USE [master]
GO
/****** Object:  Database [20.102k-14-Avtoservice]    Script Date: 05.02.2024 11:27:55 ******/
CREATE DATABASE [20.102k-14-Avtoservice]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'20.102k-14-Avtoservice', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\20.102k-14-Avtoservice.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'20.102k-14-Avtoservice_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\20.102k-14-Avtoservice_log.ldf' , SIZE = 1280KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [20.102k-14-Avtoservice] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [20.102k-14-Avtoservice].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [20.102k-14-Avtoservice] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [20.102k-14-Avtoservice] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [20.102k-14-Avtoservice] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [20.102k-14-Avtoservice] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [20.102k-14-Avtoservice] SET ARITHABORT OFF 
GO
ALTER DATABASE [20.102k-14-Avtoservice] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [20.102k-14-Avtoservice] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [20.102k-14-Avtoservice] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [20.102k-14-Avtoservice] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [20.102k-14-Avtoservice] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [20.102k-14-Avtoservice] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [20.102k-14-Avtoservice] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [20.102k-14-Avtoservice] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [20.102k-14-Avtoservice] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [20.102k-14-Avtoservice] SET  DISABLE_BROKER 
GO
ALTER DATABASE [20.102k-14-Avtoservice] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [20.102k-14-Avtoservice] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [20.102k-14-Avtoservice] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [20.102k-14-Avtoservice] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [20.102k-14-Avtoservice] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [20.102k-14-Avtoservice] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [20.102k-14-Avtoservice] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [20.102k-14-Avtoservice] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [20.102k-14-Avtoservice] SET  MULTI_USER 
GO
ALTER DATABASE [20.102k-14-Avtoservice] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [20.102k-14-Avtoservice] SET DB_CHAINING OFF 
GO
ALTER DATABASE [20.102k-14-Avtoservice] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [20.102k-14-Avtoservice] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [20.102k-14-Avtoservice] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [20.102k-14-Avtoservice] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [20.102k-14-Avtoservice] SET QUERY_STORE = OFF
GO
USE [20.102k-14-Avtoservice]
GO
/****** Object:  Table [dbo].[AttachedProduct]    Script Date: 05.02.2024 11:27:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttachedProduct](
	[MainProductID] [int] NOT NULL,
	[AttachedProductID] [int] NOT NULL,
 CONSTRAINT [PK_AttachedProduct] PRIMARY KEY CLUSTERED 
(
	[MainProductID] ASC,
	[AttachedProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 05.02.2024 11:27:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](255) NOT NULL,
	[FirstName] [nvarchar](255) NOT NULL,
	[Patronymic] [nvarchar](255) NULL,
	[GenderCode] [nchar](1) NULL,
	[Phone] [nvarchar](255) NOT NULL,
	[PhotoPath] [nvarchar](255) NOT NULL,
	[Birthday] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[RegistrationDate] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientService]    Script Date: 05.02.2024 11:27:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientService](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClientID] [int] NOT NULL,
	[ServiceID] [int] NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_ClientService] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentByService]    Script Date: 05.02.2024 11:27:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentByService](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClientServiceID] [int] NOT NULL,
	[DocumentPath] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_DocumentByService] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 05.02.2024 11:27:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nchar](1) NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_gender] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 05.02.2024 11:27:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[StartDate] [date] NULL,
 CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 05.02.2024 11:27:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Cost] [money] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[MainImagePath] [nvarchar](1000) NULL,
	[IsActive] [bit] NOT NULL,
	[ManufacturerID] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductPhoto]    Script Date: 05.02.2024 11:27:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductPhoto](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[PhotoPath] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_ProductPhoto] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSale]    Script Date: 05.02.2024 11:27:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSale](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SaleDate] [datetime] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ClientServiceID] [int] NULL,
 CONSTRAINT [PK_ProductSale] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 05.02.2024 11:27:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Cost] [money] NOT NULL,
	[DurationInSeconds] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Discount] [float] NULL,
	[MainImagePath] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServicePhoto]    Script Date: 05.02.2024 11:27:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServicePhoto](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceID] [int] NOT NULL,
	[PhotoPath] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_ServicePhoto] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 05.02.2024 11:27:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](30) NOT NULL,
	[Color] [nchar](6) NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TagOfClient]    Script Date: 05.02.2024 11:27:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TagOfClient](
	[ClientID] [int] NOT NULL,
	[TagID] [int] NOT NULL,
 CONSTRAINT [PK_TagOfClient] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC,
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (1, N'Голубев', N'Иосиф', N'Тимофеевич', N'ж', N'+7-123-123-1234', N'\Клиенты\m18.jpg', N'06.05.1982', N'smcnabb@att.net', N'18.12.2023 11:12:54')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (2, N'Ермакова', N'Алла', N'Мироновна', N'ж', N' 7(06)437-13-73 ', N'\Клиенты\48.jpg', N' 1976-01-22', N' whimsy@aol.com', N' 2017-02-09')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (3, N'Селиверстов', N'Глеб', N'Максимович', N'м', N' 7(20)554-28-68 ', N'\Клиенты\m37.jpg', N' 1999-06-20', N' jigsaw@sbcglobal.net', N' 2016-01-07')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (4, N'Агафонов', N' Юстиниан', N' Олегович', N'м', N' 7(303)810-28-78 ', N'\Клиенты\m1.jpg', N' 1997-02-02', N' staffelb@sbcglobal.net', N' 2016-06-08')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (5, N'Колобова', N' Злата', N' Романовна', N'ж', N' 7(50)884-07-35 ', N'\Клиенты\18.jpg', N' 1994-08-25', N' sinkou@aol.com', N' 2016-12-03')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (6, N'Сысоева', N'Дарина', N'Ярославовна', N'ж', N' 7(0698)387-96-04 ', N'\Клиенты\32.jpg', N' 1982-02-03', N' treit@verizon.net', N' 2016-05-13')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (7, N'Некрасов', N'Варлам', N'Михайлович', N'м', N'+7-123-123-1234', N'\Клиенты\m42.jpg', N'12.11.2001', N'dogdude@verizon.da', N'13.11.2023 12:17:43')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (8, N'Крюков', N' Наум', N' Ильяович', N'м', N' 7(81)657-88-92 ', N'\Клиенты\m30.jpg', N' 1993-11-17', N' floxy@hotmail.com', N' 2017-02-01')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (9, N'Сидорова', N'Татьяна', N'Михайловна', N'ж', N' 7(51)732-91-79 ', N'\Клиенты\42.jpg', N' 1974-04-24', N' tbeck@mac.com', N' 2018-10-03')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (10, N'Трофимова', N'Альжбета', N'Якововна', N'ж', N' 7(1084)658-92-95 ', N'\Клиенты\25.jpg', N' 1988-10-22', N' gbacon@mac.com', N' 2017-09-21')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (11, N'Новиков', N'Адриан', N'Аркадьевич', N'м', N' 7(70)572-33-62 ', N'\Клиенты\m40.jpg', N' 1974-01-15', N' multiplx@verizon.net', N' 2018-11-23')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (12, N'Мишина', N'Иветта', N'Андреевна', N'ж', N' 7(3926)244-81-96 ', N'\Клиенты\30.jpg', N' 2002-10-05', N' aukjan@yahoo.com', N' 2016-01-24')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (13, N'Шестаков', N'Геннадий', N'Рубенович', N'м', N' 7(2066)037-11-60 ', N'\Клиенты\m41.jpg', N' 2001-07-01', N' tokuhirom@live.com', N' 2018-12-08')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (14, N'Зуев', N'Матвей', N'Иванович', N'м', N' 7(5383)893-04-66 ', N'\Клиенты\m38.jpg', N' 1981-03-28', N' brickbat@verizon.net', N' 2018-12-18')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (15, N'Турова', N'Георгина', N'Семёновна', N'ж', N' 7(555)321-42-99 ', N'\Клиенты\27.jpg', N' 1974-05-28', N' yruan@optonline.net', N' 2018-02-22')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (16, N'Анисимов', N'Валентин', N'Пантелеймонович', N'м', N' 7(700)326-70-24 ', N'\Клиенты\m99.jpg', N' 2000-12-10', N' aaribaud@hotmail.com', N' 2018-01-20')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (17, N'Анисимова', N' Тамара', N' Витальевна', N'ж', N' 7(66)128-04-10 ', N'\Клиенты\2.jpg', N' 1988-06-16', N' schwaang@mac.com', N' 2016-02-25')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (18, N'Колобов', N' Орест', N' Юлианович', N'м', N' 7(1680)508-58-26 ', N'\Клиенты\m27.jpg', N' 2001-07-14', N' parkes@verizon.net', N' 2017-01-01')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (19, N'Филатов', N'Аристарх', N'Дмитриевич', N'м', N' 7(696)235-29-24 ', N'\Клиенты\m43.jpg', N' 1989-05-29', N' hampton@att.net', N' 2017-01-11')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (20, N'Орлова', N'Влада', N'Мартыновна', N'ж', N' 7(2506)433-38-35 ', N'\Клиенты\22.jpg', N' 1990-06-26', N' rnelson@yahoo.ca', N' 2016-03-21')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (21, N'Алексеева', N' Элина', N' Матвеевна', N'ж', N' 7(8086)245-64-81 ', N'\Клиенты\1.jpg', N' 2002-05-07', N' pthomsen@verizon.net', N' 2018-03-28')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (22, N'Бобров', N'Агафон', N'Лаврентьевич', N'м', N' 7(2159)507-39-57 ', N'\Клиенты\m35.jpg', N' 1995-07-29', N' petersen@comcast.net', N' 2017-05-09')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (23, N'Бирюкова', N' Инара', N' Улебовна', N'ж', N' 7(098)346-50-58 ', N'\Клиенты\5.jpg', N' 1978-07-21', N' smpeters@hotmail.com', N' 2017-10-01')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (24, N'Панфилов', N'Марк', N'Рудольфович', N'м', N' 7(764)282-55-22 ', N'\Клиенты\m45.jpg', N' 1991-04-13', N' cremonini@optonline.net', N' 2016-02-23')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (25, N'Колесникова', N'Алина', N'Еремеевна', N'ж', N' 7(74)977-39-71 ', N'\Клиенты\40.jpg', N' 2001-04-19', N' gfxguy@outlook.com', N' 2017-01-18')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (26, N'Морозов', N'Наум', N'Валерьянович', N'м', N' 7(636)050-96-13 ', N'\Клиенты\m49.jpg', N' 1985-07-04', N' salesgeek@mac.com', N' 2016-05-02')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (27, N'Горбачёв', N'Давид', N'Тимурович', N'м', N' 7(53)602-85-41 ', N'\Клиенты\m36.jpg', N' 1983-05-22', N' hedwig@att.net', N' 2018-12-17')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (28, N'Васильев', N' Оскар', N' Богданович', N'м', N' 7(585)801-94-29 ', N'\Клиенты\m15.jpg', N' 1971-01-30', N' miturria@verizon.net', N' 2017-05-28')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (29, N'Ершова', N' Номи', N' Андреевна', N'ж', N' 7(7757)315-90-99 ', N'\Клиенты\14.jpg', N' 2001-09-13', N' miltchev@mac.com', N' 2016-06-30')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (30, N'Медведев', N' Святослав', N' Юлианович', N'м', N' 7(3520)435-21-20 ', N'\Клиенты\m13.jpg', N' 1972-10-04', N' hllam@comcast.net', N' 2018-10-13')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (31, N'Баранова', N' Эльмира', N' Дмитриевна', N'ж', N' 7(9240)643-15-50 ', N'\Клиенты\4.jpg', N' 1977-01-15', N' jgmyers@comcast.net', N' 2016-07-08')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (32, N'Попова', N'Харита', N'Якуновна', N'ж', N' 7(335)386-81-06 ', N'\Клиенты\36.jpg', N' 1997-12-16', N' firstpr@verizon.net', N' 2016-07-05')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (33, N'Кудряшов', N'Аверкий', N'Константинович', N'м', N' 7(88)732-96-30 ', N'\Клиенты\m33.jpg', N' 1991-07-26', N' nanop@msn.com', N' 2018-03-08')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (34, N'Горшкова', N' Марта', N' Иосифовна', N'ж', N' 7(544)650-59-03 ', N'\Клиенты\9.jpg', N' 2001-02-13', N' gbacon@mac.com', N' 2016-08-04')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (35, N'Кудрявцев', N' Богдан', N' Христофорович', N'ж', N' 7(20)131-84-09 ', N'\Клиенты\m31.jpg', N' 1988-02-27', N' lukka@hotmail.com', N' 2016-10-07')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (36, N'Гусев', N' Яков', N' Авксентьевич', N'м', N' 7(0972)781-11-37 ', N'\Клиенты\m20.jpg', N' 1995-12-10', N' jdhedden@icloud.com', N' 2017-11-20')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (37, N'Крюкова', N' Авигея', N' Святославовна', N'ж', N' 7(499)318-88-53 ', N'\Клиенты\19.jpg', N' 2000-08-10', N' simone@gmail.com', N' 2018-01-03')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (38, N'Степанова', N' Амелия', N' Робертовна', N'ж', N' 7(1217)441-28-42 ', N'\Клиенты\15.jpg', N' 1970-06-06', N' rasca@hotmail.com', N' 2017-09-27')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (39, N'Суворова', N'Божена', N'Анатольевна', N'ж', N' 7(347)895-86-57 ', N'\Клиенты\34.jpg', N' 1981-03-09', N' attwood@aol.com', N' 2016-01-28')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (40, N'Борисов', N' Аввакум', N' Артемович', N'м', N' 7(2296)930-08-88 ', N'\Клиенты\m12.jpg', N' 1974-04-25', N' chlim@live.com', N' 2017-03-11')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (41, N'Бобылёв', N' Георгий', N' Витальевич', N'м', N' 7(88)685-13-51 ', N'\Клиенты\m11.jpg', N' 1983-12-19', N' csilvers@mac.com', N' 2018-04-06')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (42, N'Дроздов', N' Вольдемар', N' Артемович', N'м', N' 7(307)456-99-05 ', N'\Клиенты\m21.jpg', N' 1976-02-07', N' smpeters@me.com', N' 2017-07-18')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (43, N'Беляева', N'Сабрина', N'Федосеевна', N'ж', N' 7(6580)534-32-58 ', N'\Клиенты\47.jpg', N' 1972-07-26', N' agapow@gmail.com', N' 2017-06-14')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (44, N'Блохин', N' Пантелеймон', N' Феликсович', N'м', N' 7(9524)556-48-98 ', N'\Клиенты\m8.jpg', N' 1978-03-06', N' balchen@comcast.net', N' 2018-02-14')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (45, N'Шашкова', N'Гелла', N'Эдуардовна', N'ж', N' 7(57)446-21-04 ', N'\Клиенты\43.jpg', N' 1979-02-24', N' jadavis@mac.com', N' 2016-11-16')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (46, N'Калашников', N' Артур', N' Юрьевич', N'ж', N' 7(147)947-47-21 ', N'\Клиенты\m10.jpg', N' 1972-12-13', N' oevans@aol.com', N' 2017-08-20')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (47, N'Корнилова', N'Анэля', N'Михайловна', N'ж', N' 7(20)980-01-60 ', N'\Клиенты\26.jpg', N' 1973-04-02', N' jonathan@aol.com', N' 2016-05-22')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (48, N'Гущина', N' Янита', N' Федоровна', N'ж', N' 7(4544)716-68-96 ', N'\Клиенты\11.jpg', N' 1999-03-02', N' lishoy@att.net', N' 2018-02-01')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (49, N'Волков', N'Людвиг', N'Витальевич', N'м', N' 7(8459)592-05-58 ', N'\Клиенты\m50.jpg', N' 1977-12-27', N' jrkorson@msn.com', N' 2016-04-27')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (50, N'Князев', N' Терентий', N' Валерьевич', N'м', N' 7(98)397-23-23 ', N'\Клиенты\m26.jpg', N' 1991-06-19', N' rjones@aol.com', N' 2018-06-25')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (51, N'Силин', N'Гаянэ', N'Анатольевич', N'м', N' 7(4547)615-22-69 ', N'\Клиенты\m46.jpg', N' 1976-05-27', N' multiplx@comcast.net', N' 2017-05-05')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (52, N'Казаков', N'Дмитрий', N'Русланович', N'м', N' 7(51)682-19-40 ', N'\Клиенты\m44.jpg', N' 1978-12-15', N' ozawa@verizon.net', N' 2016-05-21')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (53, N'Гусева', N' Роза', N' Дмитриевна', N'м', N' 7(23)064-51-84 ', N'\Клиенты\10.jpg', N' 1999-02-13', N' martyloo@live.com', N' 2017-12-12')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (54, N'Мамонтова', N'Марфа', N'Мироновна', N'ж', N' 7(38)095-64-18 ', N'\Клиенты\29.jpg', N' 1984-10-19', N' rfoley@verizon.net', N' 2018-02-27')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (55, N'Галкин', N' Эрик', N' Онисимович', N'м', N' 7(759)873-77-39 ', N'\Клиенты\m16.jpg', N' 1975-01-18', N' snunez@verizon.net', N' 2016-07-19')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (56, N'Архипова', N'Прасковья', N'Валерьевна', N'ж', N' 7(86)540-10-21 ', N'\Клиенты\33.jpg', N' 1979-01-09', N' cgcra@live.com', N' 2018-07-23')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (57, N'Овчинникова', N'Лаура', N'Еремеевна', N'ж', N' 7(85)829-33-79 ', N'\Клиенты\35.jpg', N' 1992-04-03', N' carcus@yahoo.ca', N' 2018-11-24')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (58, N'Андреева', N'Патрисия', N'Валерьевна', N'ж', N' 7(9648)953-81-26 ', N'\Клиенты\37.jpg', N' 1993-11-18', N' jigsaw@aol.com', N' 2016-07-17')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (59, N'Авдеев', N'Самуил', N'Улебович', N'м', N' 7(3168)043-63-31 ', N'\Клиенты\m96.jpg', N' 1996-07-04', N' cliffordj@mac.com', N' 2016-02-11')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (60, N'Бурова', N'Светлана', N'Лукьевна', N'ж', N' 7(358)173-82-21 ', N'\Клиенты\39.jpg', N' 1979-01-04', N' wsnyder@aol.com', N' 2016-10-13')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (61, N'Ершов', N' Глеб', N' Федорович', N'м', N' 7(2608)298-40-82 ', N'\Клиенты\m23.jpg', N' 1970-06-14', N' sjava@aol.com', N' 2016-09-14')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (62, N'Игнатов', N'Захар', N'Павлович', N'м', N' 7(578)574-73-36 ', N'\Клиенты\m98.jpg', N' 1998-10-07', N' dieman@icloud.com', N' 2017-11-10')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (63, N'Комиссарова', N' Амалия', N' Робертовна', N'ж', N' 7(22)647-46-32 ', N'\Клиенты\17.jpg', N' 1971-08-18', N' jorgb@msn.com', N' 2017-08-04')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (64, N'Быков', N' Трофим', N' Константинович', N'м', N' 7(3414)460-12-05 ', N'\Клиенты\m14.jpg', N' 1994-12-20', N' jguyer@aol.com', N' 2016-04-17')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (65, N'Кузьмин', N' Леонтий', N' Валерьянович', N'м', N' 7(1340)148-90-68 ', N'\Клиенты\m17.jpg', N' 2000-05-05', N' msloan@hotmail.com', N' 2017-10-12')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (66, N'Белозёрова', N' Диана', N' Антоновна', N'ж', N' 7(9900)174-59-87 ', N'\Клиенты\7.jpg', N' 1989-02-27', N' dialworld@aol.com', N' 2017-01-30')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (67, N'Блинов', N' Евгений', N' Мэлсович', N'м', N' 7(0852)321-82-64 ', N'\Клиенты\m7.jpg', N' 1994-01-05', N' moxfulder@outlook.com', N' 2017-05-07')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (68, N'Лазарев', N'Алексей', N'Богданович', N'м', N' 7(0055)737-37-48 ', N'\Клиенты\m48.jpg', N' 1977-03-10', N' claesjac@me.com', N' 2017-01-02')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (69, N'Афанасьева', N'Розалия', N'Макаровна', N'ж', N' 7(0661)413-23-32 ', N'\Клиенты\31.jpg', N' 1977-05-01', N' malattia@hotmail.com', N' 2017-09-06')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (70, N'Дементьева', N'Эдита', N'Онисимовна', N'ж', N' 7(198)922-28-76 ', N'\Клиенты\38.jpg', N' 1975-09-17', N' frosal@hotmail.com', N' 2018-11-24')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (71, N'Калинин', N'Петр', N'Иванович', N'м', N' 7(90)316-07-17 ', N'\Клиенты\m47.jpg', N' 1993-09-08', N' aschmitz@hotmail.com', N' 2016-05-26')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (72, N'Андреев', N' Станислав', N' Максович', N'м', N' 7(02)993-91-28 ', N'\Клиенты\m3.jpg', N' 1975-10-10', N' budinger@mac.com', N' 2017-12-26')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (73, N'Киселёв', N' Устин', N' Яковлевич', N'м', N' 7(83)334-52-76 ', N'\Клиенты\m25.jpg', N' 1985-01-08', N' dalamb@verizon.net', N' 2018-06-21')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (74, N'Гордеев', N' Павел', N' Семенович', N'м', N' 7(5243)599-66-72 ', N'\Клиенты\m19.jpg', N' 1984-09-06', N' dawnsong@verizon.net', N' 2016-07-19')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (75, N'Горбачёва', N' Никки', N' Еремеевна', N'ж', N' 7(94)789-69-20 ', N'\Клиенты\8.jpg', N' 1987-04-21', N' chinthaka@att.net', N' 2018-08-16')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (76, N'Копылов', N' Касьян', N' Робертович', N'м', N' 7(5774)679-82-06 ', N'\Клиенты\m29.jpg', N' 1983-08-04', N' crobles@sbcglobal.net', N' 2018-03-18')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (77, N'Ефремов', N' Витольд', N' Авксентьевич', N'м', N' 7(93)922-14-03 ', N'\Клиенты\m28.jpg', N' 1975-12-02', N' kwilliams@yahoo.ca', N' 2018-04-09')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (78, N'Баранов', N' Михаил', N' Романович', N'м', N' 7(750)985-94-13 ', N'\Клиенты\m5.jpg', N' 1997-07-12', N' bigmauler@outlook.com', N' 2018-10-07')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (79, N'Дмитриева', N' Элина', N' Даниловна', N'ж', N' 7(787)140-48-84 ', N'\Клиенты\12.jpg', N' 1988-12-10', N' vmalik@live.com', N' 2017-02-11')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (80, N'Федотов', N' Осип', N' Анатольевич', N'м', N' 7(590)702-33-06 ', N'\Клиенты\m9.jpg', N' 1971-04-13', N' breegster@hotmail.com', N' 2018-07-23')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (81, N'Быкова', N' Тала', N' Георгьевна', N'ж', N' 7(13)915-53-53 ', N'\Клиенты\6.jpg', N' 2000-02-22', N' ganter@optonline.net', N' 2016-08-13')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (82, N'Дементьев', N'Вадим', N'Ростиславович', N'м', N' 7(79)330-46-15 ', N'\Клиенты\m39.jpg', N' 1993-07-10', N' jacks@aol.com', N' 2018-03-05')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (83, N'Евсеев', N' Макар', N' Васильевич', N'м', N' 7(2141)077-85-70 ', N'\Клиенты\m22.jpg', N' 1977-09-13', N' parsimony@sbcglobal.net', N' 2018-12-05')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (84, N'Абрамов', N'Станислав', N'Филатович', N'м', N' 7(6545)478-87-79 ', N'\Клиенты\m32.jpg', N' 1989-05-18', N' solomon@att.net', N' 2016-12-08')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (85, N'Артемьева', N' Лиза', N' Максимовна', N'ж', N' 7(696)972-70-21 ', N'\Клиенты\3.jpg', N' 1996-05-17', N' snunez@yahoo.ca', N' 2018-10-07')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (86, N'Кузьмина', N'Дэнна', N'Витальевна', N'ж', N' 7(9940)977-45-73 ', N'\Клиенты\20.jpg', N' 1993-08-24', N' nichoj@mac.com', N' 2016-03-27')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (87, N'Ефимова', N' Магда', N' Платоновна', N'ж', N' 7(9261)386-15-92 ', N'\Клиенты\16.jpg', N' 1995-08-16', N' rbarreira@me.com', N' 2017-08-01')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (88, N'Ефимов', N' Альберт', N' Проклович', N'м', N' 7(416)375-97-19 ', N'\Клиенты\m6.jpg', N' 1997-10-29', N' houle@live.com', N' 2018-06-21')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (89, N'Лазарева', N'Эльвина', N'Робертовна', N'ж', N' 7(5564)609-81-37 ', N'\Клиенты\28.jpg', N' 1996-02-16', N' ahuillet@comcast.net', N' 2018-04-11')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (90, N'Воронова', N'Изабелла', N'Вячеславовна', N'ж', N' 7(17)433-44-98 ', N'\Клиенты\21.jpg', N' 1999-09-24', N' kildjean@sbcglobal.net', N' 2017-12-21')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (91, N'Куликова', N'Эвелина', N'Вячеславовна', N'ж', N' 7(0236)682-42-78 ', N'\Клиенты\23.jpg', N' 1997-11-14', N' ilikered@hotmail.com', N' 2018-02-01')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (92, N'Егорова', N' Амалия', N' Дамировна', N'ж', N' 7(7486)408-12-26 ', N'\Клиенты\13.jpg', N' 1999-09-28', N' drezet@yahoo.com', N' 2016-06-30')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (93, N'Александров', N' Станислав', N' Эдуардович', N'м', N' 7(18)164-05-12 ', N'\Клиенты\m2.jpg', N' 1981-07-04', N' bigmauler@aol.com', N' 2018-11-08')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (94, N'Цветков', N' Демьян', N' Львович', N'м', N' 7(93)546-43-73 ', N'\Клиенты\m4.jpg', N' 1996-03-29', N' hauma@icloud.com', N' 2016-02-12')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (95, N'Устинова', N'Юнона', N'Валентиновна', N'ж', N' 7(33)367-13-07', N'\Клиенты\44.jpg', N' 1982-08-08', N' kempsonc@live.com', N' 2017-05-28')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (96, N'Костина', N'Любава', N'Авксентьевна', N'ж', N' 7(6419)959-21-87 ', N'\Клиенты\41.jpg', N' 1972-07-13', N' gordonjcp@hotmail.com', N' 2016-02-26')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (97, N'Смирнов', N'Мартын', N'Арсеньевич', N'ж', N' 7(6251)589-02-43 ', N'\Клиенты\m34.jpg', N' 1996-06-25', N' haddawy@live.com', N' 2017-02-07')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (98, N'Федотова', N'Сандра', N'Владленовна', N'ж', N' 7(126)195-25-86 ', N'\Клиенты\24.jpg', N' 1985-03-29', N' penna@verizon.net', N' 2016-11-08')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (99, N'Журавлёв', N' Леонтий', N' Яковлевич', N'м', N' 7(4403)308-56-96 ', N'\Клиенты\m24.jpg', N' 2000-03-02', N' cmdrgravy@me.com', N' 2018-01-15')
GO
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (100, N'Большаков', N'Вадим', N'Данилович', N'м', N' 7(386)641-13-37 ', N'\Клиенты\m97.jpg', N' 1970-05-15', N' uncle@gmail.com', N' 2018-08-04')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [GenderCode], [Phone], [PhotoPath], [Birthday], [Email], [RegistrationDate]) VALUES (102, N'Фамилия', N'Имя', N'Отчество', N'ж', N'+7-123-123-1234', N'\Клиенты\48.jpg', N'04.12.1980', N'email@mail.ru', N'14.11.2023 16:36:29')
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[ClientService] ON 

INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (1, 57, 44, CAST(N'2019-06-10T16:40:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (2, 17, 14, CAST(N'2019-02-16T09:40:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (3, 75, 49, CAST(N'2019-06-21T14:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (4, 62, 8, CAST(N'2019-10-14T12:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (5, 46, 17, CAST(N'2019-04-22T11:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (6, 87, 22, CAST(N'2019-06-22T13:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (7, 20, 48, CAST(N'2019-04-21T12:40:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (8, 43, 27, CAST(N'2019-10-05T18:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (9, 49, 45, CAST(N'2019-12-05T18:10:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (10, 32, 45, CAST(N'2019-09-17T11:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (11, 30, 2, CAST(N'2019-07-07T09:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (12, 32, 48, CAST(N'2019-05-28T11:10:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (13, 65, 21, CAST(N'2019-05-01T10:20:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (14, 65, 13, CAST(N'2019-04-15T13:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (15, 11, 43, CAST(N'2019-10-16T18:20:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (16, 34, 8, CAST(N'2019-07-09T18:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (17, 23, 27, CAST(N'2019-03-23T16:40:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (18, 33, 4, CAST(N'2019-05-23T11:40:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (19, 39, 23, CAST(N'2019-07-30T12:10:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (20, 86, 3, CAST(N'2019-08-24T11:20:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (21, 76, 18, CAST(N'2019-12-23T15:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (22, 30, 18, CAST(N'2019-08-02T18:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (23, 56, 39, CAST(N'2019-02-15T17:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (24, 75, 32, CAST(N'2019-12-28T17:10:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (25, 18, 11, CAST(N'2019-04-14T15:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (26, 20, 9, CAST(N'2019-12-18T10:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (27, 61, 12, CAST(N'2019-07-30T10:10:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (28, 19, 32, CAST(N'2019-06-15T09:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (29, 100, 14, CAST(N'2019-07-28T12:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (30, 56, 28, CAST(N'2019-07-12T19:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (31, 44, 4, CAST(N'2019-07-02T15:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (32, 53, 48, CAST(N'2019-09-09T17:40:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (33, 55, 13, CAST(N'2019-01-29T16:10:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (34, 11, 33, CAST(N'2019-01-19T11:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (35, 72, 35, CAST(N'2019-07-05T13:40:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (36, 100, 26, CAST(N'2019-10-10T13:40:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (37, 67, 40, CAST(N'2019-12-07T17:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (38, 19, 31, CAST(N'2019-06-05T10:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (39, 84, 44, CAST(N'2019-04-05T10:10:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (40, 73, 13, CAST(N'2019-06-24T14:10:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (41, 18, 32, CAST(N'2019-09-05T19:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (42, 33, 7, CAST(N'2019-11-27T09:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (43, 17, 30, CAST(N'2019-02-21T08:20:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (44, 75, 46, CAST(N'2019-11-26T10:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (45, 86, 47, CAST(N'2019-04-26T10:20:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (47, 17, 33, CAST(N'2019-08-25T08:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (48, 46, 37, CAST(N'2019-05-09T10:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (49, 18, 29, CAST(N'2019-08-08T17:20:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (50, 68, 17, CAST(N'2019-12-30T08:10:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (51, 76, 47, CAST(N'2019-09-05T14:10:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (52, 62, 26, CAST(N'2019-12-24T09:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (53, 68, 24, CAST(N'2019-04-06T11:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (54, 12, 35, CAST(N'2019-08-12T11:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (55, 23, 21, CAST(N'2019-08-12T15:40:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (56, 55, 26, CAST(N'2019-07-29T10:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (57, 26, 38, CAST(N'2019-04-14T14:20:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (58, 53, 34, CAST(N'2019-03-19T09:40:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (59, 62, 23, CAST(N'2019-12-15T19:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (60, 75, 41, CAST(N'2019-11-30T18:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (61, 46, 1, CAST(N'2019-11-14T15:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (62, 61, 5, CAST(N'2019-06-14T18:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (63, 30, 32, CAST(N'2019-03-22T15:20:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (64, 42, 40, CAST(N'2019-10-09T18:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (65, 33, 14, CAST(N'2019-03-16T10:20:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (66, 72, 28, CAST(N'2019-12-16T19:40:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (67, 56, 12, CAST(N'2019-08-15T18:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (68, 12, 42, CAST(N'2019-09-20T08:20:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (69, 17, 27, CAST(N'2019-04-15T11:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (70, 8, 17, CAST(N'2019-08-12T08:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (71, 8, 13, CAST(N'2019-03-04T11:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (72, 17, 30, CAST(N'2019-02-24T13:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (73, 87, 41, CAST(N'2019-12-06T09:40:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (74, 20, 47, CAST(N'2019-08-05T10:10:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (75, 8, 25, CAST(N'2019-05-19T16:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (76, 34, 5, CAST(N'2019-12-30T14:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (77, 73, 17, CAST(N'2019-06-28T10:10:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (78, 26, 29, CAST(N'2019-11-05T12:10:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (79, 56, 24, CAST(N'2019-09-19T16:10:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (80, 30, 11, CAST(N'2019-02-26T17:40:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (81, 34, 49, CAST(N'2019-09-13T10:10:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (82, 11, 48, CAST(N'2019-10-14T19:40:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (83, 72, 35, CAST(N'2019-04-11T16:20:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (84, 58, 49, CAST(N'2019-03-06T12:10:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (85, 42, 12, CAST(N'2019-08-21T17:20:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (86, 49, 48, CAST(N'2019-06-29T17:20:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (87, 97, 46, CAST(N'2019-02-04T19:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (88, 34, 12, CAST(N'2019-07-09T16:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (89, 61, 48, CAST(N'2019-06-16T12:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (90, 84, 5, CAST(N'2019-11-27T13:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (92, 84, 48, CAST(N'2019-12-15T14:30:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (94, 33, 43, CAST(N'2019-11-15T15:40:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (95, 100, 2, CAST(N'2019-08-24T17:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (96, 72, 31, CAST(N'2019-05-27T14:20:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (97, 55, 11, CAST(N'2019-08-19T17:50:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (98, 87, 50, CAST(N'2019-08-08T19:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (99, 67, 4, CAST(N'2019-02-24T13:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (100, 18, 39, CAST(N'2019-12-19T15:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (101, 7, 8, CAST(N'2023-10-04T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (107, 2, 7, CAST(N'2023-10-31T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (110, 2, 3, CAST(N'2023-10-04T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (1140, 102, 4, CAST(N'2023-03-09T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (1159, 7, 4, CAST(N'2023-11-16T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (1164, 7, 6, CAST(N'2023-11-14T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (1167, 2, 1, CAST(N'2023-12-15T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (1177, 1, 2, CAST(N'2023-12-07T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (1178, 3, 4, CAST(N'2023-12-09T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[ClientService] OFF
GO
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([ID], [Code], [Title]) VALUES (1, N'ж', NULL)
INSERT [dbo].[Gender] ([ID], [Code], [Title]) VALUES (2, N'м', NULL)
SET IDENTITY_INSERT [dbo].[Gender] OFF
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (1, N'Замена сальника привода', 3826.0000, 4000, NULL, 0.15, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (2, N'Замена кулисы АКПП', 3250.0000, 21600, NULL, 0.1, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (3, N'Замена тормозной жидкости', 2200.0000, 21600, NULL, 0.1, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (4, N'Ремонт компрессора кондиционера', 4760.0000, 9000, NULL, 0.25, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (5, N'Ремонт автоэлектрики', 4230.0000, 27000, NULL, 0.1, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (6, N'Наращивание ресниц', 1430.0000, 2400, NULL, 0.05, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (7, N'Замена лямбда зонда', 770.0000, 16200, NULL, 0.05, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (8, N'Кузовной ремонт', 2750.0000, 9000, NULL, 0.05, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (9, N'Замена подшипника задней ступицы', 1860.0000, 16200, NULL, 0.25, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (10, N'Замена масла в МКПП', 4490.0000, 32400, NULL, 0.2, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (11, N'Замена заднего сальника АКПП', 1510.0000, 23400, NULL, 0.25, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (12, N'Замена охлаждающей жидкости', 1590.0000, 12600, NULL, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (13, N'Замена масла АКПП', 2430.0000, 27000, NULL, 0.25, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (14, N'Замена жидкости ГУР', 2380.0000, 32400, NULL, 0.2, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (15, N'Испанский массаж', 2190.0000, 2400, NULL, 0.25, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (16, N'Балансировка колес', 4690.0000, 23400, NULL, 0.25, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (17, N'Замена подшипника передней ступицы', 4020.0000, 19800, NULL, 0.15, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (18, N'Ремонт двигателя', 2470.0000, 14400, NULL, 0.25, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (19, N'Замена сцепления', 4320.0000, 19800, NULL, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (20, N'Интенсивный курс с преподавателем-носителем португальского языка для компаний', 1580.0000, 1800, NULL, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (21, N'Замена подшипника компрессора кондиционера', 1110.0000, 19800, NULL, 0.2, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (22, N'Диагностика рулевого редуктора', 2930.0000, 10800, NULL, 0.1, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (23, N'Замена фильтров', 530.0000, 12600, NULL, 0.15, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (24, N'Ремонт глушителя', 2100.0000, 9000, NULL, 0.25, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (25, N'Чистка форсунок ультразвуком', 3920.0000, 14400, NULL, 0.05, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (26, N'Замена масла заднего редуктора (моста)', 840.0000, 25200, NULL, 0.25, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (27, N'Ремонт бензонасоса', 500.0000, 12600, NULL, 0.15, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (28, N'Антибактериальная обработка кондиционера', 4580.0000, 27000, NULL, 0.2, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (29, N'Замена ремня кондиционера', 4650.0000, 28800, NULL, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (30, N'Ремонт и замена катализатора', 500.0000, 16200, NULL, 0.25, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (31, N'Ремонт карданного вала', 780.0000, 12600, NULL, 0.05, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (32, N'Установка сигнализации', 1760.0000, 14400, NULL, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (33, N'Ремонт кронштейна глушителя', 1410.0000, 34200, NULL, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (34, N'Замена трубки кондиционера', 2810.0000, 10800, NULL, 0.15, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (35, N'Диагностика подвески', 1460.0000, 19800, NULL, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (36, N'Замена масла в вариаторе', 4720.0000, 7200, NULL, 0.05, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (37, N'Замена тормозных колодок', 4260.0000, 28800, NULL, 0.05, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (38, N'Покраска', 2370.0000, 7200, NULL, 0.15, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (39, N'Ремонт сцепления', 3290.0000, 36000, NULL, 0.25, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (40, N'Диагностика трансмиссии', 2790.0000, 7200, NULL, 0.2, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (41, N'Диагностика выхлопной системы автомобиля', 2550.0000, 10800, NULL, 0.25, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (42, N'Диагностика инжектора', 3390.0000, 19800, NULL, 0.05, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (43, N'Замена троса сцепления', 4460.0000, 28800, NULL, 0.05, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (44, N'Замена маховика', 2400.0000, 36000, NULL, 0.25, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (45, N'Ремонт стартера', 2680.0000, 28800, NULL, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (46, N'Снятие/установка форсунок', 1470.0000, 18000, NULL, 0.25, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (47, N'Замена ремня привода ГУР', 3350.0000, 36000, NULL, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (48, N'Замена свечей', 2240.0000, 7200, NULL, 0.1, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (49, N'Развал-схождение', 3890.0000, 10800, NULL, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (50, N'Замена рулевой тяги', 570.0000, 10800, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
SET IDENTITY_INSERT [dbo].[Tag] ON 

INSERT [dbo].[Tag] ([ID], [Title], [Color]) VALUES (1, N'Тэг1', N'Black ')
INSERT [dbo].[Tag] ([ID], [Title], [Color]) VALUES (2, N'Тэг2', N'White ')
INSERT [dbo].[Tag] ([ID], [Title], [Color]) VALUES (3, N'Тэг3', N'Green ')
INSERT [dbo].[Tag] ([ID], [Title], [Color]) VALUES (4, N'Тэг4', N'Orange')
INSERT [dbo].[Tag] ([ID], [Title], [Color]) VALUES (5, N'Тэг5', N'Purple')
SET IDENTITY_INSERT [dbo].[Tag] OFF
GO
INSERT [dbo].[TagOfClient] ([ClientID], [TagID]) VALUES (1, 3)
INSERT [dbo].[TagOfClient] ([ClientID], [TagID]) VALUES (1, 4)
INSERT [dbo].[TagOfClient] ([ClientID], [TagID]) VALUES (2, 4)
INSERT [dbo].[TagOfClient] ([ClientID], [TagID]) VALUES (2, 5)
INSERT [dbo].[TagOfClient] ([ClientID], [TagID]) VALUES (3, 2)
INSERT [dbo].[TagOfClient] ([ClientID], [TagID]) VALUES (3, 3)
GO
ALTER TABLE [dbo].[AttachedProduct]  WITH CHECK ADD  CONSTRAINT [FK_AttachedProduct_Product] FOREIGN KEY([MainProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[AttachedProduct] CHECK CONSTRAINT [FK_AttachedProduct_Product]
GO
ALTER TABLE [dbo].[AttachedProduct]  WITH CHECK ADD  CONSTRAINT [FK_AttachedProduct_Product1] FOREIGN KEY([AttachedProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[AttachedProduct] CHECK CONSTRAINT [FK_AttachedProduct_Product1]
GO
ALTER TABLE [dbo].[ClientService]  WITH CHECK ADD  CONSTRAINT [FK_ClientService_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientService] CHECK CONSTRAINT [FK_ClientService_Client]
GO
ALTER TABLE [dbo].[ClientService]  WITH CHECK ADD  CONSTRAINT [FK_ClientService_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientService] CHECK CONSTRAINT [FK_ClientService_Service]
GO
ALTER TABLE [dbo].[DocumentByService]  WITH CHECK ADD  CONSTRAINT [FK_DocumentByService_ClientService] FOREIGN KEY([ClientServiceID])
REFERENCES [dbo].[ClientService] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DocumentByService] CHECK CONSTRAINT [FK_DocumentByService_ClientService]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Manufacturer] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturer] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Manufacturer]
GO
ALTER TABLE [dbo].[ProductPhoto]  WITH CHECK ADD  CONSTRAINT [FK_ProductPhoto_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductPhoto] CHECK CONSTRAINT [FK_ProductPhoto_Product]
GO
ALTER TABLE [dbo].[ProductSale]  WITH CHECK ADD  CONSTRAINT [FK_ProductSale_ClientService] FOREIGN KEY([ClientServiceID])
REFERENCES [dbo].[ClientService] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductSale] CHECK CONSTRAINT [FK_ProductSale_ClientService]
GO
ALTER TABLE [dbo].[ProductSale]  WITH CHECK ADD  CONSTRAINT [FK_ProductSale_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductSale] CHECK CONSTRAINT [FK_ProductSale_Product]
GO
ALTER TABLE [dbo].[ServicePhoto]  WITH CHECK ADD  CONSTRAINT [FK_ServicePhoto_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ID])
GO
ALTER TABLE [dbo].[ServicePhoto] CHECK CONSTRAINT [FK_ServicePhoto_Service]
GO
ALTER TABLE [dbo].[TagOfClient]  WITH CHECK ADD  CONSTRAINT [FK_TagOfClient_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ID])
GO
ALTER TABLE [dbo].[TagOfClient] CHECK CONSTRAINT [FK_TagOfClient_Client]
GO
ALTER TABLE [dbo].[TagOfClient]  WITH CHECK ADD  CONSTRAINT [FK_TagOfClient_Tag] FOREIGN KEY([TagID])
REFERENCES [dbo].[Tag] ([ID])
GO
ALTER TABLE [dbo].[TagOfClient] CHECK CONSTRAINT [FK_TagOfClient_Tag]
GO
USE [master]
GO
ALTER DATABASE [20.102k-14-Avtoservice] SET  READ_WRITE 
GO
