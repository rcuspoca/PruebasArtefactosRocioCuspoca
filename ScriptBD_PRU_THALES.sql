USE [master]
GO
/****** Object:  Database [PRU_THALES]    Script Date: 16/04/2023 2:45:31 p. m. ******/
CREATE DATABASE [PRU_THALES]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRU_THALES', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PRU_THALES.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRU_THALES_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PRU_THALES_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PRU_THALES] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRU_THALES].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRU_THALES] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRU_THALES] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRU_THALES] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRU_THALES] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRU_THALES] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRU_THALES] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PRU_THALES] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRU_THALES] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRU_THALES] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRU_THALES] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRU_THALES] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRU_THALES] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRU_THALES] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRU_THALES] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRU_THALES] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PRU_THALES] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRU_THALES] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRU_THALES] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRU_THALES] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRU_THALES] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRU_THALES] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRU_THALES] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRU_THALES] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PRU_THALES] SET  MULTI_USER 
GO
ALTER DATABASE [PRU_THALES] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRU_THALES] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRU_THALES] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRU_THALES] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRU_THALES] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRU_THALES] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PRU_THALES] SET QUERY_STORE = OFF
GO
USE [PRU_THALES]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 16/04/2023 2:45:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[SecondName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Salary] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [FirstName], [SecondName], [LastName], [Address], [Salary]) VALUES (1, N'MARIA', N'MAGADALENA', N'MORALES', N'kennedy', CAST(1000000 AS Numeric(18, 0)))
INSERT [dbo].[Employee] ([Id], [FirstName], [SecondName], [LastName], [Address], [Salary]) VALUES (2, N'MARTIN', N'EMILIO', N'GONZÁLES', N'KENNEDY', CAST(2500000 AS Numeric(18, 0)))
INSERT [dbo].[Employee] ([Id], [FirstName], [SecondName], [LastName], [Address], [Salary]) VALUES (3, N'MARTHA', N'CECILIA', N'GUTIERREZ', N'Cra 125 # 65-85', CAST(3500000 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
USE [master]
GO
ALTER DATABASE [PRU_THALES] SET  READ_WRITE 
GO
