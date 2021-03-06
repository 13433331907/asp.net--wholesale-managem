USE [master]
GO
/****** Object:  Database [mana]    Script Date: 2018/7/11 22:11:31 ******/
CREATE DATABASE [mana]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'mana', FILENAME = N'D:\sql\mana.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'mana_log', FILENAME = N'D:\新建文件夹\新建文件夹\MSSQL14.MSSQLSERVER\MSSQL\DATA\mana_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [mana] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [mana].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [mana] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [mana] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [mana] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [mana] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [mana] SET ARITHABORT OFF 
GO
ALTER DATABASE [mana] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [mana] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [mana] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [mana] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [mana] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [mana] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [mana] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [mana] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [mana] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [mana] SET  DISABLE_BROKER 
GO
ALTER DATABASE [mana] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [mana] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [mana] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [mana] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [mana] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [mana] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [mana] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [mana] SET RECOVERY FULL 
GO
ALTER DATABASE [mana] SET  MULTI_USER 
GO
ALTER DATABASE [mana] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [mana] SET DB_CHAINING OFF 
GO
ALTER DATABASE [mana] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [mana] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [mana] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'mana', N'ON'
GO
ALTER DATABASE [mana] SET QUERY_STORE = OFF
GO
USE [mana]
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
USE [mana]
GO
/****** Object:  Table [dbo].[computer]    Script Date: 2018/7/11 22:11:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[computer](
	[No] [char](10) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Color] [varchar](50) NOT NULL,
	[Cpu] [varchar](50) NOT NULL,
	[runMenory] [char](10) NOT NULL,
	[hardMenory] [char](10) NOT NULL,
	[Number] [char](10) NOT NULL,
	[Price] [char](10) NOT NULL,
 CONSTRAINT [pk4] PRIMARY KEY CLUSTERED 
(
	[No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[earphone]    Script Date: 2018/7/11 22:11:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[earphone](
	[No] [char](10) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Color] [varchar](50) NOT NULL,
	[Quality] [varchar](50) NOT NULL,
	[Usb] [varchar](50) NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[Number] [char](10) NOT NULL,
	[Price] [char](10) NOT NULL,
 CONSTRAINT [pk2] PRIMARY KEY CLUSTERED 
(
	[No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kehu]    Script Date: 2018/7/11 22:11:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kehu](
	[No] [char](10) NOT NULL,
	[Pwd] [char](10) NOT NULL,
	[Name] [varchar](20) NOT NULL,
	[Email] [varchar](20) NOT NULL,
	[Tel] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[peijian]    Script Date: 2018/7/11 22:11:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[peijian](
	[No] [char](10) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Color] [varchar](50) NOT NULL,
	[Quality] [varchar](50) NOT NULL,
	[Number] [char](10) NOT NULL,
	[Price] [char](10) NOT NULL,
 CONSTRAINT [pk3] PRIMARY KEY CLUSTERED 
(
	[No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phoneshow]    Script Date: 2018/7/11 22:11:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phoneshow](
	[No] [char](10) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Color] [varchar](50) NOT NULL,
	[runMemory] [varchar](20) NOT NULL,
	[Memory] [varchar](20) NOT NULL,
	[Number] [char](10) NOT NULL,
	[Price] [char](10) NOT NULL,
 CONSTRAINT [pk1] PRIMARY KEY CLUSTERED 
(
	[No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 2018/7/11 22:11:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[UserNo] [char](10) NOT NULL,
	[UserPwd] [char](10) NOT NULL,
	[UserName] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yuding]    Script Date: 2018/7/11 22:11:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yuding](
	[No] [char](10) NOT NULL,
	[Number] [char](10) NOT NULL,
	[kehuName] [varchar](50) NOT NULL,
	[kehuPhone] [char](20) NOT NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [mana] SET  READ_WRITE 
GO
