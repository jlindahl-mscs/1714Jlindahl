USE [master]
GO
/****** Object:  Database [NeighborhoodBookShare]    Script Date: 9/27/2018 7:47:11 PM ******/
CREATE DATABASE [NeighborhoodBookShare]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NeighborhoodBookShare', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\NeighborhoodBookShare.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NeighborhoodBookShare_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\NeighborhoodBookShare_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [NeighborhoodBookShare] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NeighborhoodBookShare].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NeighborhoodBookShare] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NeighborhoodBookShare] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NeighborhoodBookShare] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NeighborhoodBookShare] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NeighborhoodBookShare] SET ARITHABORT OFF 
GO
ALTER DATABASE [NeighborhoodBookShare] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NeighborhoodBookShare] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NeighborhoodBookShare] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NeighborhoodBookShare] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NeighborhoodBookShare] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NeighborhoodBookShare] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NeighborhoodBookShare] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NeighborhoodBookShare] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NeighborhoodBookShare] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NeighborhoodBookShare] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NeighborhoodBookShare] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NeighborhoodBookShare] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NeighborhoodBookShare] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NeighborhoodBookShare] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NeighborhoodBookShare] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NeighborhoodBookShare] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NeighborhoodBookShare] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NeighborhoodBookShare] SET RECOVERY FULL 
GO
ALTER DATABASE [NeighborhoodBookShare] SET  MULTI_USER 
GO
ALTER DATABASE [NeighborhoodBookShare] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NeighborhoodBookShare] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NeighborhoodBookShare] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NeighborhoodBookShare] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NeighborhoodBookShare] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'NeighborhoodBookShare', N'ON'
GO
ALTER DATABASE [NeighborhoodBookShare] SET QUERY_STORE = OFF
GO
USE [NeighborhoodBookShare]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [NeighborhoodBookShare]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 9/27/2018 7:47:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[BookId] [int] IDENTITY(1,1) NOT NULL,
	[GenreId] [int] NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Author] [nvarchar](50) NOT NULL,
	[ISBN] [text] NOT NULL,
	[Lender] [int] NOT NULL,
	[Borrower] [int] NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[BookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genre]    Script Date: 9/27/2018 7:47:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[GenreId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Genre] PRIMARY KEY CLUSTERED 
(
	[GenreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 9/27/2018 7:47:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[PersonId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[State] [nvarchar](2) NOT NULL,
	[Zip] [nvarchar](5) NOT NULL,
	[ContactMethod] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([BookId], [GenreId], [Title], [Author], [ISBN], [Lender], [Borrower]) VALUES (1, 1, N'Lord of the Rings The Return of the King', N'JRR Tolkien', N'345-33973-8', 1, NULL)
INSERT [dbo].[Book] ([BookId], [GenreId], [Title], [Author], [ISBN], [Lender], [Borrower]) VALUES (2, 1, N'Lord of the Rings The Two Towers', N'JRR Tolkien', N'345-33971-1', 1, 8)
INSERT [dbo].[Book] ([BookId], [GenreId], [Title], [Author], [ISBN], [Lender], [Borrower]) VALUES (3, 6, N'Wuthering Heights', N'Emily Bronte', N'553-21258-3', 2, 4)
INSERT [dbo].[Book] ([BookId], [GenreId], [Title], [Author], [ISBN], [Lender], [Borrower]) VALUES (4, 1, N'Harry Potter and the Sorcerer''s Stone', N'JK Rowling', N'590-35342-X', 4, NULL)
INSERT [dbo].[Book] ([BookId], [GenreId], [Title], [Author], [ISBN], [Lender], [Borrower]) VALUES (5, 6, N'September', N'Rosamunde Pilcher', N'312-92480-1', 2, NULL)
INSERT [dbo].[Book] ([BookId], [GenreId], [Title], [Author], [ISBN], [Lender], [Borrower]) VALUES (6, 7, N'Atlas Shrugged', N'Ayn Rand', N'978-0-451-19114-4', 3, 6)
SET IDENTITY_INSERT [dbo].[Book] OFF
SET IDENTITY_INSERT [dbo].[Genre] ON 

INSERT [dbo].[Genre] ([GenreId], [Description]) VALUES (1, N'Fantasy')
INSERT [dbo].[Genre] ([GenreId], [Description]) VALUES (2, N'Non-Fiction')
INSERT [dbo].[Genre] ([GenreId], [Description]) VALUES (3, N'Biography/Auto-Biography')
INSERT [dbo].[Genre] ([GenreId], [Description]) VALUES (4, N'Children''s')
INSERT [dbo].[Genre] ([GenreId], [Description]) VALUES (5, N'Young Adult')
INSERT [dbo].[Genre] ([GenreId], [Description]) VALUES (6, N'Romance')
INSERT [dbo].[Genre] ([GenreId], [Description]) VALUES (7, N'Fiction')
SET IDENTITY_INSERT [dbo].[Genre] OFF
SET IDENTITY_INSERT [dbo].[Person] ON 

INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Address], [City], [State], [Zip], [ContactMethod]) VALUES (1, N'Jimmy', N'Buffett', N'111 120th Lane', N'Coon Rapids', N'MN', N'55448', N'jimmyisawesome@email.com')
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Address], [City], [State], [Zip], [ContactMethod]) VALUES (2, N'Tanya', N'Tucker', N'112 120th Lane', N'Coon Rapids', N'MN', N'55448', N'763-555-5555')
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Address], [City], [State], [Zip], [ContactMethod]) VALUES (3, N'Jason', N'Bateman', N'113 120th Lane', N'Coon Rapids', N'MN', N'55488', N'ozarks17@email.com')
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Address], [City], [State], [Zip], [ContactMethod]) VALUES (4, N'Joslyn', N'Lindahl', N'114 120th Lane', N'Coon Rapids', N'MN', N'55448', N'763-280-0501')
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Address], [City], [State], [Zip], [ContactMethod]) VALUES (6, N'Alan', N'Jackson', N'115 120th Lane', N'Coon Rapids', N'MN', N'55448', N'countrymusic4life@email.com')
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Address], [City], [State], [Zip], [ContactMethod]) VALUES (7, N'Loretta', N'Lynn', N'116 120th Lane', N'Coon Rapids', N'MN', N'55448', N'952-555-5555')
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Address], [City], [State], [Zip], [ContactMethod]) VALUES (8, N'Billy', N'Madison', N'117 120th Lane', N'Coon Rapids', N'MN', N'55448', N'763-444-4444')
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Address], [City], [State], [Zip], [ContactMethod]) VALUES (9, N'Laura', N'Linney', N'120 Sparrow Street', N'Coon Rapids', N'MN', N'55448', N'llinney@email.com')
SET IDENTITY_INSERT [dbo].[Person] OFF
USE [master]
GO
ALTER DATABASE [NeighborhoodBookShare] SET  READ_WRITE 
GO
