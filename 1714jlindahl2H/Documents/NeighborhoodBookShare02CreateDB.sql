USE [master]
GO
/****** Object:  Database [NeighborhoodBookShare02]    Script Date: 11/8/2018 7:44:40 PM ******/
CREATE DATABASE [NeighborhoodBookShare02]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NeighborhoodBookShare02', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\NeighborhoodBookShare02.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NeighborhoodBookShare02_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\NeighborhoodBookShare02_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [NeighborhoodBookShare02] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NeighborhoodBookShare02].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NeighborhoodBookShare02] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NeighborhoodBookShare02] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NeighborhoodBookShare02] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NeighborhoodBookShare02] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NeighborhoodBookShare02] SET ARITHABORT OFF 
GO
ALTER DATABASE [NeighborhoodBookShare02] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NeighborhoodBookShare02] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [NeighborhoodBookShare02] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NeighborhoodBookShare02] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NeighborhoodBookShare02] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NeighborhoodBookShare02] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NeighborhoodBookShare02] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NeighborhoodBookShare02] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NeighborhoodBookShare02] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NeighborhoodBookShare02] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NeighborhoodBookShare02] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NeighborhoodBookShare02] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NeighborhoodBookShare02] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NeighborhoodBookShare02] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NeighborhoodBookShare02] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NeighborhoodBookShare02] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NeighborhoodBookShare02] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NeighborhoodBookShare02] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [NeighborhoodBookShare02] SET  MULTI_USER 
GO
ALTER DATABASE [NeighborhoodBookShare02] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NeighborhoodBookShare02] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NeighborhoodBookShare02] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NeighborhoodBookShare02] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NeighborhoodBookShare02] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'NeighborhoodBookShare02', N'ON'
GO
ALTER DATABASE [NeighborhoodBookShare02] SET QUERY_STORE = OFF
GO
USE [NeighborhoodBookShare02]
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
USE [NeighborhoodBookShare02]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 11/8/2018 7:44:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 11/8/2018 7:44:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[ISBN] [nvarchar](max) NOT NULL,
	[Genre_Id] [int] NOT NULL,
	[Author_Id] [int] NOT NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genres]    Script Date: 11/8/2018 7:44:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genres](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Genres] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[People]    Script Date: 11/8/2018 7:44:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[People](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[State] [nvarchar](max) NOT NULL,
	[Zip] [nvarchar](max) NOT NULL,
	[ContactMethod] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_People] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 11/8/2018 7:44:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DateBorrowed] [nvarchar](max) NOT NULL,
	[DateReturned] [nvarchar](max) NOT NULL,
	[Book_Id] [int] NOT NULL,
	[Lender_Id] [int] NOT NULL,
	[Borrower_Id] [int] NOT NULL,
 CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Authors] ON 
GO
INSERT [dbo].[Authors] ([Id], [FirstName], [LastName]) VALUES (1, N'JRR', N'Tolkien')
GO
INSERT [dbo].[Authors] ([Id], [FirstName], [LastName]) VALUES (2, N'Emily', N'Bronte')
GO
INSERT [dbo].[Authors] ([Id], [FirstName], [LastName]) VALUES (3, N'JK', N'Rowling')
GO
INSERT [dbo].[Authors] ([Id], [FirstName], [LastName]) VALUES (4, N'Rosamunde', N'Pilcher')
GO
INSERT [dbo].[Authors] ([Id], [FirstName], [LastName]) VALUES (5, N'Ayn', N'Rand')
GO
SET IDENTITY_INSERT [dbo].[Authors] OFF
GO
SET IDENTITY_INSERT [dbo].[Books] ON 
GO
INSERT [dbo].[Books] ([Id], [Title], [ISBN], [Genre_Id], [Author_Id]) VALUES (1, N'Lord of the Rings: The Return of the King', N'345-33973-8', 1, 1)
GO
INSERT [dbo].[Books] ([Id], [Title], [ISBN], [Genre_Id], [Author_Id]) VALUES (2, N'Lord of the Rings: The Two Towers', N'345-33971-1', 1, 1)
GO
INSERT [dbo].[Books] ([Id], [Title], [ISBN], [Genre_Id], [Author_Id]) VALUES (3, N'Wuthering Heights', N'553-21258-3', 6, 2)
GO
INSERT [dbo].[Books] ([Id], [Title], [ISBN], [Genre_Id], [Author_Id]) VALUES (4, N'Harry Potter and the Sorcerer''s Stone', N'590-35342-X', 1, 3)
GO
INSERT [dbo].[Books] ([Id], [Title], [ISBN], [Genre_Id], [Author_Id]) VALUES (5, N'September', N'312-92480-1', 6, 4)
GO
INSERT [dbo].[Books] ([Id], [Title], [ISBN], [Genre_Id], [Author_Id]) VALUES (6, N'Atlas Shrugged', N'978-0-451-19114-4', 7, 5)
GO
SET IDENTITY_INSERT [dbo].[Books] OFF
GO
SET IDENTITY_INSERT [dbo].[Genres] ON 
GO
INSERT [dbo].[Genres] ([Id], [Description]) VALUES (1, N'Fantasy')
GO
INSERT [dbo].[Genres] ([Id], [Description]) VALUES (2, N'Non-Fiction')
GO
INSERT [dbo].[Genres] ([Id], [Description]) VALUES (3, N'Biography/Auto-Biography')
GO
INSERT [dbo].[Genres] ([Id], [Description]) VALUES (4, N'Children''s')
GO
INSERT [dbo].[Genres] ([Id], [Description]) VALUES (5, N'Young Adult')
GO
INSERT [dbo].[Genres] ([Id], [Description]) VALUES (6, N'Romance')
GO
INSERT [dbo].[Genres] ([Id], [Description]) VALUES (7, N'Fiction')
GO
SET IDENTITY_INSERT [dbo].[Genres] OFF
GO
SET IDENTITY_INSERT [dbo].[People] ON 
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Address], [City], [State], [Zip], [ContactMethod]) VALUES (1, N'Jimmy', N'Buffett', N'111 120th Lane', N'Coon Rapids', N'MN', N'55448', N'jimmyisawesome@email.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Address], [City], [State], [Zip], [ContactMethod]) VALUES (2, N'Tanya', N'Tucker', N'112 120th Lane', N'Coon Rapids', N'MN', N'55448', N'763-555-5555')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Address], [City], [State], [Zip], [ContactMethod]) VALUES (3, N'Jason', N'Bateman', N'113 120th Lane', N'Coon Rapids', N'MN', N'55448', N'ozarks17@email.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Address], [City], [State], [Zip], [ContactMethod]) VALUES (4, N'Joslyn', N'Lindahl', N'114 120th Lane', N'Coon Rapids', N'MN', N'55448', N'763-280-0501')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Address], [City], [State], [Zip], [ContactMethod]) VALUES (5, N'Alan', N'Jackson', N'115 120th Lane', N'Coon Rapids', N'MN', N'55448', N'countrymusic4life@email.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Address], [City], [State], [Zip], [ContactMethod]) VALUES (6, N'Loretta', N'Lynn', N'116 120th Lane', N'Coon Rapids', N'MN', N'55448', N'952-555-5555')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Address], [City], [State], [Zip], [ContactMethod]) VALUES (7, N'Billy', N'Madison', N'117 120th Lane', N'Coon Rapids', N'MN', N'55448', N'763-444-4444')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Address], [City], [State], [Zip], [ContactMethod]) VALUES (8, N'Laura', N'Linney', N'120 Sparrow Street', N'Coon Rapids', N'MN', N'55448', N'llinney@email.com')
GO
SET IDENTITY_INSERT [dbo].[People] OFF
GO
SET IDENTITY_INSERT [dbo].[Transactions] ON 
GO
INSERT [dbo].[Transactions] ([Id], [DateBorrowed], [DateReturned], [Book_Id], [Lender_Id], [Borrower_Id]) VALUES (2, N'11-01-18', N'11-04-18', 1, 1, 3)
GO
INSERT [dbo].[Transactions] ([Id], [DateBorrowed], [DateReturned], [Book_Id], [Lender_Id], [Borrower_Id]) VALUES (3, N'10-31-18', N'11-02-18', 2, 1, 4)
GO
INSERT [dbo].[Transactions] ([Id], [DateBorrowed], [DateReturned], [Book_Id], [Lender_Id], [Borrower_Id]) VALUES (4, N'11-01-18', N'11-05-18', 3, 4, 1)
GO
INSERT [dbo].[Transactions] ([Id], [DateBorrowed], [DateReturned], [Book_Id], [Lender_Id], [Borrower_Id]) VALUES (5, N'11-02-18', N'11-05-18', 4, 5, 6)
GO
INSERT [dbo].[Transactions] ([Id], [DateBorrowed], [DateReturned], [Book_Id], [Lender_Id], [Borrower_Id]) VALUES (6, N'11-01-18', N'11-06-18', 6, 2, 1)
GO
SET IDENTITY_INSERT [dbo].[Transactions] OFF
GO
/****** Object:  Index [IX_FK_AuthorBook]    Script Date: 11/8/2018 7:44:41 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_AuthorBook] ON [dbo].[Books]
(
	[Author_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_GenreBook]    Script Date: 11/8/2018 7:44:41 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_GenreBook] ON [dbo].[Books]
(
	[Genre_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_BookTransaction]    Script Date: 11/8/2018 7:44:41 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_BookTransaction] ON [dbo].[Transactions]
(
	[Book_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_PersonTransaction]    Script Date: 11/8/2018 7:44:41 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_PersonTransaction] ON [dbo].[Transactions]
(
	[Lender_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_PersonTransaction1]    Script Date: 11/8/2018 7:44:41 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_PersonTransaction1] ON [dbo].[Transactions]
(
	[Borrower_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_AuthorBook] FOREIGN KEY([Author_Id])
REFERENCES [dbo].[Authors] ([Id])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_AuthorBook]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_GenreBook] FOREIGN KEY([Genre_Id])
REFERENCES [dbo].[Genres] ([Id])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_GenreBook]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_BookTransaction] FOREIGN KEY([Book_Id])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_BookTransaction]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_PersonTransaction] FOREIGN KEY([Lender_Id])
REFERENCES [dbo].[People] ([Id])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_PersonTransaction]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_PersonTransaction1] FOREIGN KEY([Borrower_Id])
REFERENCES [dbo].[People] ([Id])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_PersonTransaction1]
GO
USE [master]
GO
ALTER DATABASE [NeighborhoodBookShare02] SET  READ_WRITE 
GO
