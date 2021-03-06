USE [master]
GO
/****** Object:  Database [Task1]    Script Date: 7/18/2022 12:36:50 AM ******/
CREATE DATABASE [Task1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Task1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Task1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Task1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Task1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Task1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Task1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Task1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Task1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Task1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Task1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Task1] SET ARITHABORT OFF 
GO
ALTER DATABASE [Task1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Task1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Task1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Task1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Task1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Task1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Task1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Task1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Task1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Task1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Task1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Task1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Task1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Task1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Task1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Task1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Task1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Task1] SET RECOVERY FULL 
GO
ALTER DATABASE [Task1] SET  MULTI_USER 
GO
ALTER DATABASE [Task1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Task1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Task1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Task1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Task1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Task1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Task1', N'ON'
GO
ALTER DATABASE [Task1] SET QUERY_STORE = OFF
GO
USE [Task1]
GO
/****** Object:  Table [dbo].[ss]    Script Date: 7/18/2022 12:36:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ss](
	[studentID] [int] NULL,
	[subjectID] [int] NULL,
	[grade] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student]    Script Date: 7/18/2022 12:36:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fname] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subjects]    Script Date: 7/18/2022 12:36:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subjects](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sname] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ss] ([studentID], [subjectID], [grade]) VALUES (1, 1, 50)
INSERT [dbo].[ss] ([studentID], [subjectID], [grade]) VALUES (1, 2, 60)
INSERT [dbo].[ss] ([studentID], [subjectID], [grade]) VALUES (1, 3, 70)
INSERT [dbo].[ss] ([studentID], [subjectID], [grade]) VALUES (1, 4, 80)
INSERT [dbo].[ss] ([studentID], [subjectID], [grade]) VALUES (1, 5, 90)
INSERT [dbo].[ss] ([studentID], [subjectID], [grade]) VALUES (2, 1, 50)
INSERT [dbo].[ss] ([studentID], [subjectID], [grade]) VALUES (2, 2, 60)
INSERT [dbo].[ss] ([studentID], [subjectID], [grade]) VALUES (2, 3, 70)
INSERT [dbo].[ss] ([studentID], [subjectID], [grade]) VALUES (2, 4, 80)
INSERT [dbo].[ss] ([studentID], [subjectID], [grade]) VALUES (2, 5, 90)
INSERT [dbo].[ss] ([studentID], [subjectID], [grade]) VALUES (3, 1, 50)
INSERT [dbo].[ss] ([studentID], [subjectID], [grade]) VALUES (3, 2, 60)
INSERT [dbo].[ss] ([studentID], [subjectID], [grade]) VALUES (3, 3, 70)
INSERT [dbo].[ss] ([studentID], [subjectID], [grade]) VALUES (3, 4, 80)
INSERT [dbo].[ss] ([studentID], [subjectID], [grade]) VALUES (3, 5, 90)
INSERT [dbo].[ss] ([studentID], [subjectID], [grade]) VALUES (4, 1, 50)
INSERT [dbo].[ss] ([studentID], [subjectID], [grade]) VALUES (4, 2, 60)
INSERT [dbo].[ss] ([studentID], [subjectID], [grade]) VALUES (4, 3, 70)
INSERT [dbo].[ss] ([studentID], [subjectID], [grade]) VALUES (4, 4, 80)
INSERT [dbo].[ss] ([studentID], [subjectID], [grade]) VALUES (4, 5, 90)
GO
SET IDENTITY_INSERT [dbo].[student] ON 

INSERT [dbo].[student] ([id], [fname]) VALUES (1, N'ahmad')
INSERT [dbo].[student] ([id], [fname]) VALUES (2, N'anas')
INSERT [dbo].[student] ([id], [fname]) VALUES (3, N'ameerah')
INSERT [dbo].[student] ([id], [fname]) VALUES (4, N'ameer')
INSERT [dbo].[student] ([id], [fname]) VALUES (5, N'osama')
INSERT [dbo].[student] ([id], [fname]) VALUES (6, N'aseel')
SET IDENTITY_INSERT [dbo].[student] OFF
GO
SET IDENTITY_INSERT [dbo].[subjects] ON 

INSERT [dbo].[subjects] ([id], [sname]) VALUES (1, N'math')
INSERT [dbo].[subjects] ([id], [sname]) VALUES (2, N'arabic')
INSERT [dbo].[subjects] ([id], [sname]) VALUES (3, N'english')
INSERT [dbo].[subjects] ([id], [sname]) VALUES (4, N'art')
INSERT [dbo].[subjects] ([id], [sname]) VALUES (5, N'sport')
SET IDENTITY_INSERT [dbo].[subjects] OFF
GO
ALTER TABLE [dbo].[ss]  WITH CHECK ADD FOREIGN KEY([studentID])
REFERENCES [dbo].[student] ([id])
GO
ALTER TABLE [dbo].[ss]  WITH CHECK ADD FOREIGN KEY([subjectID])
REFERENCES [dbo].[subjects] ([id])
GO
USE [master]
GO
ALTER DATABASE [Task1] SET  READ_WRITE 
GO
