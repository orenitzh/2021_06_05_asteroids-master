USE [master]
GO
/****** Object:  Database [asteroids]    Script Date: 6/5/2021 7:08:17 AM ******/
CREATE DATABASE [asteroids]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'asteroids', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\asteroids.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'asteroids_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\asteroids_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [asteroids] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [asteroids].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [asteroids] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [asteroids] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [asteroids] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [asteroids] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [asteroids] SET ARITHABORT OFF 
GO
ALTER DATABASE [asteroids] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [asteroids] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [asteroids] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [asteroids] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [asteroids] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [asteroids] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [asteroids] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [asteroids] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [asteroids] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [asteroids] SET  DISABLE_BROKER 
GO
ALTER DATABASE [asteroids] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [asteroids] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [asteroids] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [asteroids] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [asteroids] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [asteroids] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [asteroids] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [asteroids] SET RECOVERY FULL 
GO
ALTER DATABASE [asteroids] SET  MULTI_USER 
GO
ALTER DATABASE [asteroids] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [asteroids] SET DB_CHAINING OFF 
GO
ALTER DATABASE [asteroids] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [asteroids] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [asteroids] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [asteroids] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'asteroids', N'ON'
GO
ALTER DATABASE [asteroids] SET QUERY_STORE = OFF
GO
USE [asteroids]
GO
/****** Object:  Table [dbo].[History]    Script Date: 6/5/2021 7:08:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[History](
	[HistoryID] [int] IDENTITY(1,1) NOT NULL,
	[PlayerID] [int] NOT NULL,
	[Score] [int] NOT NULL,
	[DateTime] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Players]    Script Date: 6/5/2021 7:08:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Players](
	[PlayerId] [int] IDENTITY(1,1) NOT NULL,
	[PlayerName] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[History] ON 

INSERT [dbo].[History] ([HistoryID], [PlayerID], [Score], [DateTime]) VALUES (2, 3, 0, CAST(N'2021-06-05T05:55:00.170' AS DateTime))
INSERT [dbo].[History] ([HistoryID], [PlayerID], [Score], [DateTime]) VALUES (3, 3, 17, CAST(N'2021-06-05T06:07:47.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[History] OFF
GO
SET IDENTITY_INSERT [dbo].[Players] ON 

INSERT [dbo].[Players] ([PlayerId], [PlayerName]) VALUES (1, N'player1')
INSERT [dbo].[Players] ([PlayerId], [PlayerName]) VALUES (2, N'player2')
INSERT [dbo].[Players] ([PlayerId], [PlayerName]) VALUES (4, N'player3')
INSERT [dbo].[Players] ([PlayerId], [PlayerName]) VALUES (5, N'plyaer4')
SET IDENTITY_INSERT [dbo].[Players] OFF
GO
ALTER TABLE [dbo].[History] ADD  CONSTRAINT [DF_History_Score]  DEFAULT ((0)) FOR [Score]
GO
USE [master]
GO
ALTER DATABASE [asteroids] SET  READ_WRITE 
GO
