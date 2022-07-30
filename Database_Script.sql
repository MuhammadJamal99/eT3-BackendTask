USE [master]
GO
/****** Object:  Database [Coffee_Shop]    Script Date: 7/30/2022 8:45:32 AM ******/
CREATE DATABASE [Coffee_Shop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Coffee_Shop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Coffee_Shop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Coffee_Shop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Coffee_Shop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Coffee_Shop] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Coffee_Shop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Coffee_Shop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Coffee_Shop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Coffee_Shop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Coffee_Shop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Coffee_Shop] SET ARITHABORT OFF 
GO
ALTER DATABASE [Coffee_Shop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Coffee_Shop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Coffee_Shop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Coffee_Shop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Coffee_Shop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Coffee_Shop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Coffee_Shop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Coffee_Shop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Coffee_Shop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Coffee_Shop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Coffee_Shop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Coffee_Shop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Coffee_Shop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Coffee_Shop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Coffee_Shop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Coffee_Shop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Coffee_Shop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Coffee_Shop] SET RECOVERY FULL 
GO
ALTER DATABASE [Coffee_Shop] SET  MULTI_USER 
GO
ALTER DATABASE [Coffee_Shop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Coffee_Shop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Coffee_Shop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Coffee_Shop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Coffee_Shop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Coffee_Shop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Coffee_Shop', N'ON'
GO
ALTER DATABASE [Coffee_Shop] SET QUERY_STORE = OFF
GO
USE [Coffee_Shop]
GO
/****** Object:  Table [dbo].[drinkMenu]    Script Date: 7/30/2022 8:45:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[drinkMenu](
	[Beverage_category] [nvarchar](50) NOT NULL,
	[Beverage] [nvarchar](100) NOT NULL,
	[Beverage_prep] [nvarchar](50) NOT NULL,
	[Calories] [smallint] NOT NULL,
	[Total_Fat_g] [nvarchar](50) NOT NULL,
	[Trans_Fat_g] [float] NOT NULL,
	[Saturated_Fat_g] [float] NOT NULL,
	[Sodium_mg] [tinyint] NOT NULL,
	[Total_Carbohydrates_g] [smallint] NOT NULL,
	[Cholesterol_mg] [tinyint] NOT NULL,
	[Dietary_Fibre_g] [tinyint] NOT NULL,
	[Sugars_g] [tinyint] NOT NULL,
	[Protein_g] [float] NOT NULL,
	[Vitamin_A_DV] [nvarchar](50) NOT NULL,
	[Vitamin_C_DV] [nvarchar](50) NOT NULL,
	[Calcium_DV] [nvarchar](50) NOT NULL,
	[Iron_DV] [nvarchar](50) NOT NULL,
	[Caffeine_mg] [smallint] NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Coffee_Shop] SET  READ_WRITE 
GO
