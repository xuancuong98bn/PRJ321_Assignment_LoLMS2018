USE [master]
GO
/****** Object:  Database [PRJ321_Assignment]    Script Date: 11/12/2018 4:37:59 PM ******/
CREATE DATABASE [PRJ321_Assignment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRJ321.E-B5', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\PRJ321.E-B5.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PRJ321.E-B5_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\PRJ321.E-B5_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PRJ321_Assignment] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRJ321_Assignment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRJ321_Assignment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJ321_Assignment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJ321_Assignment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJ321_Assignment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJ321_Assignment] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJ321_Assignment] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PRJ321_Assignment] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [PRJ321_Assignment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJ321_Assignment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJ321_Assignment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJ321_Assignment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJ321_Assignment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJ321_Assignment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJ321_Assignment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJ321_Assignment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJ321_Assignment] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PRJ321_Assignment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJ321_Assignment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJ321_Assignment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJ321_Assignment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJ321_Assignment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJ321_Assignment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJ321_Assignment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJ321_Assignment] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PRJ321_Assignment] SET  MULTI_USER 
GO
ALTER DATABASE [PRJ321_Assignment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJ321_Assignment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJ321_Assignment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJ321_Assignment] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [PRJ321_Assignment]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 11/12/2018 4:38:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[ID] [int] NOT NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[dateCreated] [datetime] NULL,
	[dateModified] [datetime] NULL,
	[userID] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Coach]    Script Date: 11/12/2018 4:38:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coach](
	[ID] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[linkImg] [nvarchar](500) NULL,
 CONSTRAINT [PK_Coach] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Match]    Script Date: 11/12/2018 4:38:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Match](
	[ID] [int] NOT NULL,
	[battleDate] [datetime] NULL,
	[protocol] [int] NULL,
	[roundID] [int] NULL,
	[note] [text] NULL,
 CONSTRAINT [PK_Match] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Match_Team_rf]    Script Date: 11/12/2018 4:38:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Match_Team_rf](
	[MatchID] [int] NOT NULL,
	[TeamID] [int] NOT NULL,
	[OrderBo] [int] NULL,
	[result] [bit] NULL,
 CONSTRAINT [PK_Match_Team_rf] PRIMARY KEY CLUSTERED 
(
	[MatchID] ASC,
	[TeamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Player]    Script Date: 11/12/2018 4:38:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Player](
	[ID] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Player] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Position]    Script Date: 11/12/2018 4:38:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[ID] [int] NOT NULL,
	[position] [nvarchar](50) NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Region]    Script Date: 11/12/2018 4:38:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[ID] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 11/12/2018 4:38:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] NOT NULL,
	[role] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role_RoleDetail_rf]    Script Date: 11/12/2018 4:38:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_RoleDetail_rf](
	[roleID] [int] NOT NULL,
	[roleDetailID] [int] NOT NULL,
 CONSTRAINT [PK_Role_RoleDetail_rf] PRIMARY KEY CLUSTERED 
(
	[roleID] ASC,
	[roleDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RoleDetail]    Script Date: 11/12/2018 4:38:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleDetail](
	[ID] [int] NOT NULL,
	[action] [nvarchar](50) NULL,
	[link] [nvarchar](250) NULL,
 CONSTRAINT [PK_RoleDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Round]    Script Date: 11/12/2018 4:38:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Round](
	[ID] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Round] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SubDetail]    Script Date: 11/12/2018 4:38:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubDetail](
	[playerID] [int] NULL,
	[linkImg] [nvarchar](500) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Team]    Script Date: 11/12/2018 4:38:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Team](
	[ID] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[coachID] [int] NULL,
	[regionID] [int] NULL,
	[description] [ntext] NULL,
	[linkImg] [nvarchar](500) NULL,
	[linkLogo] [nvarchar](500) NULL,
 CONSTRAINT [PK_Team] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Team_Player_Position_rf]    Script Date: 11/12/2018 4:38:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Team_Player_Position_rf](
	[teamID] [int] NOT NULL,
	[playerID] [int] NOT NULL,
	[positionID] [int] NOT NULL,
 CONSTRAINT [PK_Team_Player_Position_rf] PRIMARY KEY CLUSTERED 
(
	[teamID] ASC,
	[playerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 11/12/2018 4:38:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[dob] [date] NULL,
	[gender] [bit] NULL,
	[address] [nvarchar](250) NULL,
	[roleID] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Account] ([ID], [username], [password], [email], [dateCreated], [dateModified], [userID]) VALUES (1, N'cuongnx', N'123456789', N'cuongnxse05392@fpt.edu.vn', CAST(N'2018-11-04 00:00:00.000' AS DateTime), CAST(N'2018-11-04 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Account] ([ID], [username], [password], [email], [dateCreated], [dateModified], [userID]) VALUES (2, N'hieuvm', N'987654321', N'hieuvmse05321@fpt.edu.vn', CAST(N'2018-11-04 00:00:00.000' AS DateTime), CAST(N'2018-11-04 00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Coach] ([ID], [name], [linkImg]) VALUES (1, N'Noexcuse', N'./assetss/coach-kt.jpg')
INSERT [dbo].[Coach] ([ID], [name], [linkImg]) VALUES (2, N'Comet', N'./assetss/coach-afs.jpg')
INSERT [dbo].[Coach] ([ID], [name], [linkImg]) VALUES (3, N'Edgar', N'./assetss/coach-geng.jpg')
INSERT [dbo].[Coach] ([ID], [name], [linkImg]) VALUES (4, N'Heart', N'./assetss/coach-rng.jpg')
INSERT [dbo].[Coach] ([ID], [name], [linkImg]) VALUES (5, N'Kim', N'./assetss/coach-ig.jpg')
INSERT [dbo].[Coach] ([ID], [name], [linkImg]) VALUES (6, N'Nofe', N'./assetss/coach-edg.jpg')
INSERT [dbo].[Coach] ([ID], [name], [linkImg]) VALUES (7, N'Dylan Falco', N'./assetss/coach-fnc.jpg')
INSERT [dbo].[Coach] ([ID], [name], [linkImg]) VALUES (8, N'Yamatocannon', N'./assetss/coach-vit.jpg')
INSERT [dbo].[Coach] ([ID], [name], [linkImg]) VALUES (9, N'Grabbz', N'./assetss/coach-g2.jpg')
INSERT [dbo].[Coach] ([ID], [name], [linkImg]) VALUES (10, N'Cain', N'./assetss/coach-tl.jpg')
INSERT [dbo].[Coach] ([ID], [name], [linkImg]) VALUES (11, N'Prollu', N'./assetss/coach-100.jpg')
INSERT [dbo].[Coach] ([ID], [name], [linkImg]) VALUES (12, N'Reapered', N'./assetss/coach-c9.jpg')
INSERT [dbo].[Coach] ([ID], [name], [linkImg]) VALUES (13, N'Warhorse', N'./assetss/coach-fw.jpg')
INSERT [dbo].[Coach] ([ID], [name], [linkImg]) VALUES (14, N'GreenTea', N'./assetss/coach-mad.jpg')
INSERT [dbo].[Coach] ([ID], [name], [linkImg]) VALUES (15, N'Wei', N'./assetss/coach-grex.jpg')
INSERT [dbo].[Coach] ([ID], [name], [linkImg]) VALUES (16, N'Hiro', N'./assetss/blank.jpg')
INSERT [dbo].[Coach] ([ID], [name], [linkImg]) VALUES (17, N'Atremains', N'./assetss/coach-gmb.jpg')
INSERT [dbo].[Coach] ([ID], [name], [linkImg]) VALUES (18, N'Kazu', N'./assetss/blank.jpg')
INSERT [dbo].[Coach] ([ID], [name], [linkImg]) VALUES (19, N'Soren', N'./assetss/coach-ie.jpg')
INSERT [dbo].[Coach] ([ID], [name], [linkImg]) VALUES (20, N'Pierre', N'./assetss/coach-kaos.jpg')
INSERT [dbo].[Coach] ([ID], [name], [linkImg]) VALUES (21, N'Sharp', N'./assetss/coach-dw.jpg')
INSERT [dbo].[Coach] ([ID], [name], [linkImg]) VALUES (22, N'Irean', N'./assetss/blank.jpg')
INSERT [dbo].[Coach] ([ID], [name], [linkImg]) VALUES (23, N'Chainarin', N'./assetss/blank.jpg')
INSERT [dbo].[Coach] ([ID], [name], [linkImg]) VALUES (24, N'Ren', N'./assetss/coach-pvb.jpg')
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (1, CAST(N'2018-10-01 15:00:00.000' AS DateTime), 1, 1, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (2, CAST(N'2018-10-01 16:00:00.000' AS DateTime), 1, 1, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (3, CAST(N'2018-10-01 17:00:00.000' AS DateTime), 1, 1, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (4, CAST(N'2018-10-01 18:00:00.000' AS DateTime), 1, 1, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (5, CAST(N'2018-10-01 19:00:00.000' AS DateTime), 1, 1, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (6, CAST(N'2018-10-01 20:00:00.000' AS DateTime), 1, 1, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (7, CAST(N'2018-10-02 15:00:00.000' AS DateTime), 1, 1, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (8, CAST(N'2018-10-02 16:00:00.000' AS DateTime), 1, 1, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (9, CAST(N'2018-10-02 17:00:00.000' AS DateTime), 1, 1, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (10, CAST(N'2018-10-02 18:00:00.000' AS DateTime), 1, 1, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (11, CAST(N'2018-10-02 19:00:00.000' AS DateTime), 1, 1, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (12, CAST(N'2018-10-02 20:00:00.000' AS DateTime), 1, 1, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (13, CAST(N'2018-10-03 15:00:00.000' AS DateTime), 1, 1, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (14, CAST(N'2018-10-03 16:00:00.000' AS DateTime), 1, 1, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (15, CAST(N'2018-10-03 17:00:00.000' AS DateTime), 1, 1, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (16, CAST(N'2018-10-03 18:00:00.000' AS DateTime), 1, 1, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (17, CAST(N'2018-10-03 19:00:00.000' AS DateTime), 1, 1, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (18, CAST(N'2018-10-03 20:00:00.000' AS DateTime), 1, 1, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (19, CAST(N'2018-10-03 20:45:00.000' AS DateTime), 1, 1, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (20, CAST(N'2018-10-04 15:00:00.000' AS DateTime), 1, 1, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (21, CAST(N'2018-10-04 16:00:00.000' AS DateTime), 1, 1, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (22, CAST(N'2018-10-04 17:00:00.000' AS DateTime), 1, 1, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (23, CAST(N'2018-10-04 18:00:00.000' AS DateTime), 1, 1, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (24, CAST(N'2018-10-04 19:00:00.000' AS DateTime), 1, 1, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (25, CAST(N'2018-10-04 20:00:00.000' AS DateTime), 1, 1, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (26, CAST(N'2018-10-04 20:45:00.000' AS DateTime), 1, 1, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (27, CAST(N'2018-10-06 11:00:00.000' AS DateTime), 5, 2, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (28, CAST(N'2018-10-06 15:00:00.000' AS DateTime), 5, 2, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (29, CAST(N'2018-10-07 11:00:00.000' AS DateTime), 5, 2, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (30, CAST(N'2018-10-07 15:00:00.000' AS DateTime), 5, 2, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (31, CAST(N'2018-10-10 15:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (32, CAST(N'2018-10-10 16:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (33, CAST(N'2018-10-10 17:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (34, CAST(N'2018-10-10 18:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (35, CAST(N'2018-10-10 19:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (36, CAST(N'2018-10-10 20:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (37, CAST(N'2018-10-11 15:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (38, CAST(N'2018-10-11 16:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (39, CAST(N'2018-10-11 17:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (40, CAST(N'2018-10-11 18:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (41, CAST(N'2018-10-11 19:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (42, CAST(N'2018-10-11 20:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (43, CAST(N'2018-10-12 15:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (44, CAST(N'2018-10-12 16:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (45, CAST(N'2018-10-12 17:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (46, CAST(N'2018-10-12 18:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (47, CAST(N'2018-10-12 19:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (48, CAST(N'2018-10-12 20:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (49, CAST(N'2018-10-13 15:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (50, CAST(N'2018-10-13 16:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (51, CAST(N'2018-10-13 17:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (52, CAST(N'2018-10-13 18:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (53, CAST(N'2018-10-13 19:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (54, CAST(N'2018-10-13 20:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (55, CAST(N'2018-10-14 15:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (56, CAST(N'2018-10-14 16:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (57, CAST(N'2018-10-14 17:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (58, CAST(N'2018-10-14 18:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (59, CAST(N'2018-10-14 19:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (60, CAST(N'2018-10-14 20:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (61, CAST(N'2018-10-14 21:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (62, CAST(N'2018-10-15 15:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (63, CAST(N'2018-10-15 16:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (64, CAST(N'2018-10-15 17:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (65, CAST(N'2018-10-15 18:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (66, CAST(N'2018-10-15 19:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (67, CAST(N'2018-10-15 20:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (68, CAST(N'2018-10-15 21:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (69, CAST(N'2018-10-16 15:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (70, CAST(N'2018-10-16 16:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (71, CAST(N'2018-10-16 17:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (72, CAST(N'2018-10-16 18:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (73, CAST(N'2018-10-16 19:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (74, CAST(N'2018-10-16 20:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (75, CAST(N'2018-10-17 15:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (76, CAST(N'2018-10-17 16:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (77, CAST(N'2018-10-17 17:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (78, CAST(N'2018-10-17 18:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (79, CAST(N'2018-10-17 19:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (80, CAST(N'2018-10-17 20:00:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (81, CAST(N'2018-10-17 20:45:00.000' AS DateTime), 1, 3, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (82, CAST(N'2018-10-20 11:00:00.000' AS DateTime), 5, 4, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (83, CAST(N'2018-10-20 15:00:00.000' AS DateTime), 5, 4, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (84, CAST(N'2018-10-21 11:00:00.000' AS DateTime), 5, 4, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (85, CAST(N'2018-10-21 15:00:00.000' AS DateTime), 5, 4, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (86, CAST(N'2018-10-27 15:00:00.000' AS DateTime), 5, 5, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (87, CAST(N'2018-10-28 15:00:00.000' AS DateTime), 5, 5, NULL)
INSERT [dbo].[Match] ([ID], [battleDate], [protocol], [roundID], [note]) VALUES (88, CAST(N'2018-11-03 14:30:00.000' AS DateTime), 5, 6, NULL)
INSERT [dbo].[Player] ([ID], [name]) VALUES (1, N'SMEB')
INSERT [dbo].[Player] ([ID], [name]) VALUES (2, N'SCORE')
INSERT [dbo].[Player] ([ID], [name]) VALUES (3, N'UCAL')
INSERT [dbo].[Player] ([ID], [name]) VALUES (4, N'DEFT')
INSERT [dbo].[Player] ([ID], [name]) VALUES (5, N'MATA')
INSERT [dbo].[Player] ([ID], [name]) VALUES (6, N'KINGEN')
INSERT [dbo].[Player] ([ID], [name]) VALUES (7, N'KIIN')
INSERT [dbo].[Player] ([ID], [name]) VALUES (8, N'SPIRIT')
INSERT [dbo].[Player] ([ID], [name]) VALUES (9, N'KURO')
INSERT [dbo].[Player] ([ID], [name]) VALUES (10, N'KRAMER')
INSERT [dbo].[Player] ([ID], [name]) VALUES (11, N'TUSIN')
INSERT [dbo].[Player] ([ID], [name]) VALUES (12, N'MOWGLI')
INSERT [dbo].[Player] ([ID], [name]) VALUES (13, N'CUVEE')
INSERT [dbo].[Player] ([ID], [name]) VALUES (14, N'AMBITION')
INSERT [dbo].[Player] ([ID], [name]) VALUES (15, N'CROWN')
INSERT [dbo].[Player] ([ID], [name]) VALUES (16, N'RULER')
INSERT [dbo].[Player] ([ID], [name]) VALUES (17, N'COREJJ')
INSERT [dbo].[Player] ([ID], [name]) VALUES (18, N'HARU')
INSERT [dbo].[Player] ([ID], [name]) VALUES (19, N'LETME')
INSERT [dbo].[Player] ([ID], [name]) VALUES (20, N'MLXG')
INSERT [dbo].[Player] ([ID], [name]) VALUES (21, N'XIAOHU')
INSERT [dbo].[Player] ([ID], [name]) VALUES (22, N'UZI')
INSERT [dbo].[Player] ([ID], [name]) VALUES (23, N'MING')
INSERT [dbo].[Player] ([ID], [name]) VALUES (24, N'KARSA')
INSERT [dbo].[Player] ([ID], [name]) VALUES (25, N'THESHY')
INSERT [dbo].[Player] ([ID], [name]) VALUES (26, N'MING')
INSERT [dbo].[Player] ([ID], [name]) VALUES (27, N'ROOKIE')
INSERT [dbo].[Player] ([ID], [name]) VALUES (28, N'JACKEYLOVE')
INSERT [dbo].[Player] ([ID], [name]) VALUES (29, N'BAOLAN')
INSERT [dbo].[Player] ([ID], [name]) VALUES (30, N'DUKE')
INSERT [dbo].[Player] ([ID], [name]) VALUES (31, N'RAY')
INSERT [dbo].[Player] ([ID], [name]) VALUES (32, N'CLEARLOVE')
INSERT [dbo].[Player] ([ID], [name]) VALUES (33, N'SCOUT')
INSERT [dbo].[Player] ([ID], [name]) VALUES (34, N'IBOY')
INSERT [dbo].[Player] ([ID], [name]) VALUES (35, N'MEIKO')
INSERT [dbo].[Player] ([ID], [name]) VALUES (36, N'HARO')
INSERT [dbo].[Player] ([ID], [name]) VALUES (37, N'BWIPO')
INSERT [dbo].[Player] ([ID], [name]) VALUES (38, N'BROXAH')
INSERT [dbo].[Player] ([ID], [name]) VALUES (39, N'CAPS')
INSERT [dbo].[Player] ([ID], [name]) VALUES (40, N'REKKLES')
INSERT [dbo].[Player] ([ID], [name]) VALUES (41, N'HYLISSANG')
INSERT [dbo].[Player] ([ID], [name]) VALUES (42, N'SOAZ')
INSERT [dbo].[Player] ([ID], [name]) VALUES (43, N'CABOCHARD')
INSERT [dbo].[Player] ([ID], [name]) VALUES (44, N'KIKIS')
INSERT [dbo].[Player] ([ID], [name]) VALUES (45, N'JIIZUKE')
INSERT [dbo].[Player] ([ID], [name]) VALUES (46, N'ATTILA')
INSERT [dbo].[Player] ([ID], [name]) VALUES (47, N'JACTROLL')
INSERT [dbo].[Player] ([ID], [name]) VALUES (48, N'DREAMS')
INSERT [dbo].[Player] ([ID], [name]) VALUES (49, N'WUNDER')
INSERT [dbo].[Player] ([ID], [name]) VALUES (50, N'JANKOS')
INSERT [dbo].[Player] ([ID], [name]) VALUES (51, N'PERKZ')
INSERT [dbo].[Player] ([ID], [name]) VALUES (52, N'HJARNAN')
INSERT [dbo].[Player] ([ID], [name]) VALUES (53, N'WADID')
INSERT [dbo].[Player] ([ID], [name]) VALUES (54, N'SACRE')
INSERT [dbo].[Player] ([ID], [name]) VALUES (55, N'IMPACT')
INSERT [dbo].[Player] ([ID], [name]) VALUES (56, N'XMITHIE')
INSERT [dbo].[Player] ([ID], [name]) VALUES (57, N'POBELTER')
INSERT [dbo].[Player] ([ID], [name]) VALUES (58, N'DOUBLELIFT')
INSERT [dbo].[Player] ([ID], [name]) VALUES (59, N'OLLEH')
INSERT [dbo].[Player] ([ID], [name]) VALUES (60, N'V1PER')
INSERT [dbo].[Player] ([ID], [name]) VALUES (61, N'SSUMDAY')
INSERT [dbo].[Player] ([ID], [name]) VALUES (62, N'ANDA')
INSERT [dbo].[Player] ([ID], [name]) VALUES (63, N'RYU')
INSERT [dbo].[Player] ([ID], [name]) VALUES (64, N'CODY SUN')
INSERT [dbo].[Player] ([ID], [name]) VALUES (65, N'APHROMOO')
INSERT [dbo].[Player] ([ID], [name]) VALUES (66, N'RIKARA')
INSERT [dbo].[Player] ([ID], [name]) VALUES (67, N'LICORICE')
INSERT [dbo].[Player] ([ID], [name]) VALUES (68, N'BLABER')
INSERT [dbo].[Player] ([ID], [name]) VALUES (69, N'JENSEN')
INSERT [dbo].[Player] ([ID], [name]) VALUES (70, N'SNEAKY')
INSERT [dbo].[Player] ([ID], [name]) VALUES (71, N'ZEYZAL')
INSERT [dbo].[Player] ([ID], [name]) VALUES (72, N'SVENSKEREN')
INSERT [dbo].[Player] ([ID], [name]) VALUES (73, N'HANABI')
INSERT [dbo].[Player] ([ID], [name]) VALUES (74, N'MOOJIN')
INSERT [dbo].[Player] ([ID], [name]) VALUES (75, N'MAPLE')
INSERT [dbo].[Player] ([ID], [name]) VALUES (76, N'BETTY')
INSERT [dbo].[Player] ([ID], [name]) VALUES (77, N'SWORDART')
INSERT [dbo].[Player] ([ID], [name]) VALUES (78, N'MMD')
INSERT [dbo].[Player] ([ID], [name]) VALUES (79, N'LIANG')
INSERT [dbo].[Player] ([ID], [name]) VALUES (80, N'KONGYUE')
INSERT [dbo].[Player] ([ID], [name]) VALUES (81, N'UNIBOY')
INSERT [dbo].[Player] ([ID], [name]) VALUES (82, N'BREEZE')
INSERT [dbo].[Player] ([ID], [name]) VALUES (83, N'K')
INSERT [dbo].[Player] ([ID], [name]) VALUES (84, N'BENNY')
INSERT [dbo].[Player] ([ID], [name]) VALUES (85, N'PK')
INSERT [dbo].[Player] ([ID], [name]) VALUES (86, N'EMPT2Y')
INSERT [dbo].[Player] ([ID], [name]) VALUES (87, N'CANDY')
INSERT [dbo].[Player] ([ID], [name]) VALUES (88, N'STITCH')
INSERT [dbo].[Player] ([ID], [name]) VALUES (89, N'KOALA')
INSERT [dbo].[Player] ([ID], [name]) VALUES (90, N'BAYBAY')
INSERT [dbo].[Player] ([ID], [name]) VALUES (91, N'ZANTINS')
INSERT [dbo].[Player] ([ID], [name]) VALUES (92, N'RANGER')
INSERT [dbo].[Player] ([ID], [name]) VALUES (93, N'DYNQUEDO')
INSERT [dbo].[Player] ([ID], [name]) VALUES (94, N'TITAN')
INSERT [dbo].[Player] ([ID], [name]) VALUES (95, N'RIYEV')
INSERT [dbo].[Player] ([ID], [name]) VALUES (96, N'WOS')
INSERT [dbo].[Player] ([ID], [name]) VALUES (97, N'PVPSTEJOS')
INSERT [dbo].[Player] ([ID], [name]) VALUES (98, N'DIAMONDOROX')
INSERT [dbo].[Player] ([ID], [name]) VALUES (99, N'KIRA')
INSERT [dbo].[Player] ([ID], [name]) VALUES (100, N'LODIK')
GO
INSERT [dbo].[Player] ([ID], [name]) VALUES (101, N'EDWARD')
INSERT [dbo].[Player] ([ID], [name]) VALUES (102, N'SEIGIMITSU')
INSERT [dbo].[Player] ([ID], [name]) VALUES (103, N'EVI')
INSERT [dbo].[Player] ([ID], [name]) VALUES (104, N'STEAL')
INSERT [dbo].[Player] ([ID], [name]) VALUES (105, N'CEROS')
INSERT [dbo].[Player] ([ID], [name]) VALUES (106, N'YURAPON')
INSERT [dbo].[Player] ([ID], [name]) VALUES (107, N'VIVID')
INSERT [dbo].[Player] ([ID], [name]) VALUES (108, N'PINK BEAN')
INSERT [dbo].[Player] ([ID], [name]) VALUES (109, N'RELIC')
INSERT [dbo].[Player] ([ID], [name]) VALUES (110, N'SOLIDSNAKE')
INSERT [dbo].[Player] ([ID], [name]) VALUES (111, N'COTOPACO')
INSERT [dbo].[Player] ([ID], [name]) VALUES (112, N'RENYU')
INSERT [dbo].[Player] ([ID], [name]) VALUES (113, N'ARCE')
INSERT [dbo].[Player] ([ID], [name]) VALUES (114, N'OTTOVAG')
INSERT [dbo].[Player] ([ID], [name]) VALUES (115, N'NATE')
INSERT [dbo].[Player] ([ID], [name]) VALUES (116, N'TIERWULF')
INSERT [dbo].[Player] ([ID], [name]) VALUES (117, N'PLUGO')
INSERT [dbo].[Player] ([ID], [name]) VALUES (118, N'FIX')
INSERT [dbo].[Player] ([ID], [name]) VALUES (119, N'SLOW')
INSERT [dbo].[Player] ([ID], [name]) VALUES (120, N'ZEALOT')
INSERT [dbo].[Player] ([ID], [name]) VALUES (121, N'BIOPANTHER')
INSERT [dbo].[Player] ([ID], [name]) VALUES (122, N'SHERNFIRE')
INSERT [dbo].[Player] ([ID], [name]) VALUES (123, N'TRIPLE')
INSERT [dbo].[Player] ([ID], [name]) VALUES (124, N'K1NG')
INSERT [dbo].[Player] ([ID], [name]) VALUES (125, N'CUPCAKE')
INSERT [dbo].[Player] ([ID], [name]) VALUES (126, N'RIPPII')
INSERT [dbo].[Player] ([ID], [name]) VALUES (127, N'FABFABULOUS')
INSERT [dbo].[Player] ([ID], [name]) VALUES (128, N'STOMAGED')
INSERT [dbo].[Player] ([ID], [name]) VALUES (129, N'GBM')
INSERT [dbo].[Player] ([ID], [name]) VALUES (130, N'ZEITNOT')
INSERT [dbo].[Player] ([ID], [name]) VALUES (131, N'SNOWFLOWER')
INSERT [dbo].[Player] ([ID], [name]) VALUES (132, N'SECAF REIS')
INSERT [dbo].[Player] ([ID], [name]) VALUES (133, N'ROCKKY')
INSERT [dbo].[Player] ([ID], [name]) VALUES (134, N'LLOYD')
INSERT [dbo].[Player] ([ID], [name]) VALUES (135, N'G4')
INSERT [dbo].[Player] ([ID], [name]) VALUES (136, N'NIKSAR')
INSERT [dbo].[Player] ([ID], [name]) VALUES (137, N'RICH')
INSERT [dbo].[Player] ([ID], [name]) VALUES (138, N'SUNSUNSUN')
INSERT [dbo].[Player] ([ID], [name]) VALUES (139, N'ZEROS')
INSERT [dbo].[Player] ([ID], [name]) VALUES (140, N'MELIODAS')
INSERT [dbo].[Player] ([ID], [name]) VALUES (141, N'NAUL')
INSERT [dbo].[Player] ([ID], [name]) VALUES (142, N'BIGKORO')
INSERT [dbo].[Player] ([ID], [name]) VALUES (143, N'PALETTE')
INSERT [dbo].[Player] ([ID], [name]) VALUES (144, N'XUHAO')
INSERT [dbo].[Position] ([ID], [position]) VALUES (1, N'Top Lane')
INSERT [dbo].[Position] ([ID], [position]) VALUES (2, N'Jungle')
INSERT [dbo].[Position] ([ID], [position]) VALUES (3, N'Mid Lane')
INSERT [dbo].[Position] ([ID], [position]) VALUES (4, N'AD Carry')
INSERT [dbo].[Position] ([ID], [position]) VALUES (5, N'Support')
INSERT [dbo].[Position] ([ID], [position]) VALUES (6, N'Sub')
INSERT [dbo].[Region] ([ID], [name]) VALUES (1, N'LCK')
INSERT [dbo].[Region] ([ID], [name]) VALUES (2, N'LPL')
INSERT [dbo].[Region] ([ID], [name]) VALUES (3, N'EU LCS')
INSERT [dbo].[Region] ([ID], [name]) VALUES (4, N'NA LCS')
INSERT [dbo].[Region] ([ID], [name]) VALUES (5, N'LMS')
INSERT [dbo].[Region] ([ID], [name]) VALUES (6, N'CBLOL')
INSERT [dbo].[Region] ([ID], [name]) VALUES (7, N'LCL')
INSERT [dbo].[Region] ([ID], [name]) VALUES (8, N'LJL')
INSERT [dbo].[Region] ([ID], [name]) VALUES (9, N'LLN')
INSERT [dbo].[Region] ([ID], [name]) VALUES (10, N'CLS')
INSERT [dbo].[Region] ([ID], [name]) VALUES (11, N'OPL')
INSERT [dbo].[Region] ([ID], [name]) VALUES (12, N'TCL')
INSERT [dbo].[Region] ([ID], [name]) VALUES (13, N'SEA')
INSERT [dbo].[Region] ([ID], [name]) VALUES (14, N'VCS')
INSERT [dbo].[Role] ([ID], [role]) VALUES (1, N'admin')
INSERT [dbo].[Role] ([ID], [role]) VALUES (2, N'user')
INSERT [dbo].[Role_RoleDetail_rf] ([roleID], [roleDetailID]) VALUES (1, 1)
INSERT [dbo].[Role_RoleDetail_rf] ([roleID], [roleDetailID]) VALUES (1, 3)
INSERT [dbo].[Role_RoleDetail_rf] ([roleID], [roleDetailID]) VALUES (1, 4)
INSERT [dbo].[Role_RoleDetail_rf] ([roleID], [roleDetailID]) VALUES (1, 5)
INSERT [dbo].[Role_RoleDetail_rf] ([roleID], [roleDetailID]) VALUES (1, 6)
INSERT [dbo].[Role_RoleDetail_rf] ([roleID], [roleDetailID]) VALUES (1, 7)
INSERT [dbo].[Role_RoleDetail_rf] ([roleID], [roleDetailID]) VALUES (1, 8)
INSERT [dbo].[Role_RoleDetail_rf] ([roleID], [roleDetailID]) VALUES (1, 9)
INSERT [dbo].[Role_RoleDetail_rf] ([roleID], [roleDetailID]) VALUES (1, 10)
INSERT [dbo].[Role_RoleDetail_rf] ([roleID], [roleDetailID]) VALUES (1, 11)
INSERT [dbo].[Role_RoleDetail_rf] ([roleID], [roleDetailID]) VALUES (1, 12)
INSERT [dbo].[Role_RoleDetail_rf] ([roleID], [roleDetailID]) VALUES (1, 13)
INSERT [dbo].[Role_RoleDetail_rf] ([roleID], [roleDetailID]) VALUES (2, 2)
INSERT [dbo].[RoleDetail] ([ID], [action], [link]) VALUES (1, N'manage', N'/manage/HomePage')
INSERT [dbo].[RoleDetail] ([ID], [action], [link]) VALUES (2, N'view', N'/user/HomePage')
INSERT [dbo].[RoleDetail] ([ID], [action], [link]) VALUES (3, N'addPlayer', N'/manage/player/add')
INSERT [dbo].[RoleDetail] ([ID], [action], [link]) VALUES (4, N'editPlayer', N'/manage/player/edit')
INSERT [dbo].[RoleDetail] ([ID], [action], [link]) VALUES (5, N'deletePlayer', N'/manage/player/delete')
INSERT [dbo].[RoleDetail] ([ID], [action], [link]) VALUES (6, N'addTeam', N'/manage/team/add')
INSERT [dbo].[RoleDetail] ([ID], [action], [link]) VALUES (7, N'editTeam', N'/manage/team/edit')
INSERT [dbo].[RoleDetail] ([ID], [action], [link]) VALUES (8, N'deleteTeam', N'/manage/team/delete')
INSERT [dbo].[RoleDetail] ([ID], [action], [link]) VALUES (9, N'addMatch', N'/manage/match/add')
INSERT [dbo].[RoleDetail] ([ID], [action], [link]) VALUES (10, N'editMatch', N'/manage/match/edit')
INSERT [dbo].[RoleDetail] ([ID], [action], [link]) VALUES (11, N'deleteMatch', N'/manage/match/delete')
INSERT [dbo].[RoleDetail] ([ID], [action], [link]) VALUES (12, N'addTable', N'/manage/table/add')
INSERT [dbo].[RoleDetail] ([ID], [action], [link]) VALUES (13, N'removeTable', N'/manage/table/remove')
INSERT [dbo].[Round] ([ID], [name]) VALUES (1, N'Play-In_Double Round Robin')
INSERT [dbo].[Round] ([ID], [name]) VALUES (2, N'Play-In_Knockout')
INSERT [dbo].[Round] ([ID], [name]) VALUES (3, N'Main_Double Round Robin')
INSERT [dbo].[Round] ([ID], [name]) VALUES (4, N'Quarterfinals')
INSERT [dbo].[Round] ([ID], [name]) VALUES (5, N'Semifinals')
INSERT [dbo].[Round] ([ID], [name]) VALUES (6, N'Finals ')
INSERT [dbo].[SubDetail] ([playerID], [linkImg]) VALUES (6, N'./assetss/blank.jpg')
INSERT [dbo].[SubDetail] ([playerID], [linkImg]) VALUES (12, N'./assetss/sub-afs.jpg')
INSERT [dbo].[SubDetail] ([playerID], [linkImg]) VALUES (18, N'./assetss/sub-geng.jpg')
INSERT [dbo].[SubDetail] ([playerID], [linkImg]) VALUES (24, N'./assetss/sub-rng.jpg')
INSERT [dbo].[SubDetail] ([playerID], [linkImg]) VALUES (30, N'./assetss/sub-ig.jpg')
INSERT [dbo].[SubDetail] ([playerID], [linkImg]) VALUES (36, N'./assetss/sub-edg.jpg')
INSERT [dbo].[SubDetail] ([playerID], [linkImg]) VALUES (42, N'./assetss/sub-fnc.jpg')
INSERT [dbo].[SubDetail] ([playerID], [linkImg]) VALUES (48, N'./assetss/sub-vit.jpg')
INSERT [dbo].[SubDetail] ([playerID], [linkImg]) VALUES (54, N'./assetss/blank.jpg')
INSERT [dbo].[SubDetail] ([playerID], [linkImg]) VALUES (60, N'./assetss/sub-tl.jpg')
INSERT [dbo].[SubDetail] ([playerID], [linkImg]) VALUES (66, N'./assetss/sub-100.jpg')
INSERT [dbo].[SubDetail] ([playerID], [linkImg]) VALUES (72, N'./assetss/sub-c9.jpg')
INSERT [dbo].[SubDetail] ([playerID], [linkImg]) VALUES (78, N'./assetss/sub-fw.jpg')
INSERT [dbo].[SubDetail] ([playerID], [linkImg]) VALUES (84, N'./assetss/sub-mad.jpg')
INSERT [dbo].[SubDetail] ([playerID], [linkImg]) VALUES (90, N'./assetss/sub-grex.jpg')
INSERT [dbo].[SubDetail] ([playerID], [linkImg]) VALUES (96, N'./assetss/sub-kab.jpg')
INSERT [dbo].[SubDetail] ([playerID], [linkImg]) VALUES (102, N'./assetss/sub-gam.jpg')
INSERT [dbo].[SubDetail] ([playerID], [linkImg]) VALUES (108, N'./assetss/sub-det.jpg')
INSERT [dbo].[SubDetail] ([playerID], [linkImg]) VALUES (114, N'./assetss/sub-ie.jpg')
INSERT [dbo].[SubDetail] ([playerID], [linkImg]) VALUES (120, N'./assetss/sub-kaos.jpg')
INSERT [dbo].[SubDetail] ([playerID], [linkImg]) VALUES (126, N'./assetss/sub-dw.jpg')
INSERT [dbo].[SubDetail] ([playerID], [linkImg]) VALUES (132, N'./assetss/sub-sm.jpg')
INSERT [dbo].[SubDetail] ([playerID], [linkImg]) VALUES (138, N'./assetss/blank.jpg')
INSERT [dbo].[SubDetail] ([playerID], [linkImg]) VALUES (144, N'./assetss/sub-pvb.jpg')
INSERT [dbo].[Team] ([ID], [name], [coachID], [regionID], [description], [linkImg], [linkLogo]) VALUES (1, N'KT Rolster', 1, 1, N'KT Rolster finally quelled their demons and silenced the critics by winning the 2018 LCK Summer Split and qualifying for Worlds 2018 as Korea’s first seed. Hailed as a Korean superteam, KT Rolster is packed with some of the best talent on the planet. Lead by longtime, veteran jungler Score, KT Rolster’s potent mix of veteran legends and young playmakers has turned them into arguably the deadliest team heading into Worlds. With their wait for Korean dominance over, KT Rolster is now turning their sights to international competition where they’ll look to prove they’re not a one-hit wonder while adding another piece to their recently updated trophy case.', N'./assetss/team-kt.png', N'./assetss/logo-kt.png')
INSERT [dbo].[Team] ([ID], [name], [coachID], [regionID], [description], [linkImg], [linkLogo]) VALUES (2, N'Afreeca Freecs', 2, 1, N'Afreeca Freecs rebranded from Rebels Anarchy at the tail end of 2015 and have spent the last couple of years building up a menace of a roster. The puzzle pieces came together this year, when the squad earned themselves a pair of top three finishes in both the Spring and Summer LCK Splits. After KT Rolster did them the favor of capturing their first LCK crown, the Freecs were locked in as Korea’s second seed heading into Worlds 2018. They’re well known as one of the most explosive teams in Korea, favoring carry-heavy lineups that allow them to play through their superstar top laner Kiin. If they can reach their sky high potential, the Freecs have the firepower to take down any opponent, any time.', N'./assetss/team-afs.png', N'./assetss/logo-afs.png')
INSERT [dbo].[Team] ([ID], [name], [coachID], [regionID], [description], [linkImg], [linkLogo]) VALUES (3, N'Gen.G Esports', 3, 1, N'Gen.G eSports, formerly known as Samsung Galaxy and KSV, are back in action at Worlds to defend their title. This roster quelled their demons and dethroned SK Telecom T1 last year in the World Championship Finals. Yet their pair of 5th Place finishes in both the LCK Spring and Summer Split Playoffs weren’t exactly becoming for a squad that had just reached the pinnacle of competitive League of Legends months earlier. With the odds stacked against them, and a trio of teams standing in their way, Gen.G departed on what was sure to be an arduous journey through the Korean Gauntlet. In a run eerily reminiscent of their 2017 Gauntlet run that got them to Worlds—and their championship crown—Gen.G knocked off SK Telecom T1, Griffin, and finally Kingzone DragonX to secure Korea''s third seed at Worlds. Now the defending champs have momentum heading into the World Championship.', N'./assetss/team-geng.png', N'./assetss/logo-geng.png')
INSERT [dbo].[Team] ([ID], [name], [coachID], [regionID], [description], [linkImg], [linkLogo]) VALUES (4, N'Royal Never Give Up', 4, 2, N'Royal Never Give Up has shown astounding dominance this year. They have won all the tournaments they entered in 2018, including the LPL Spring and Summer Splits, Rift Rivals, and the 2018 Mid-Season Invitational. Since establishing the team in 2015, RNG have represented LPL at Worlds all three years, with the best result of top four. Now there is nothing but only one final target remains – the championship of Worlds 2018.', N'./assetss/team-rng.png', N'./assetss/logo-rng.png')
INSERT [dbo].[Team] ([ID], [name], [coachID], [regionID], [description], [linkImg], [linkLogo]) VALUES (5, N'Invictus Gaming', 5, 2, N'nvictus Gaming was established in August 2011 and the team was one of the initial contenders in the first LPL Spring Split that took place in 2013. While the team''s roster underwent various changes in the past five years, iG have never stopped moving forward. The current roster has several iconic players, including Rookie and Jackeylove. Mid laner Rookie is currently the most experienced active Korean player in the LPL region, winning MVP for both the Spring and Summer 2018 LPL Splits. Jackeylove is currently the icon of Chinese ADCs and his growth this year has helped him become one of the most stable damage outputs on the team. While iG haven''t been to Worlds since 2015, their strong roster and new head coach, Coach Kim Jungsu, will look for significant results this time around.', N'./assetss/team-ig.png', N'./assetss/logo-ig.png')
INSERT [dbo].[Team] ([ID], [name], [coachID], [regionID], [description], [linkImg], [linkLogo]) VALUES (6, N'Edward Gaming', 6, 2, N'Edward Gaming debuted in the 2014 LPL Spring Split. The one and only goal of EDG ever since the beginning was to become champions. They won the 2014 LPL Spring and Summer Splits, the 2015 LPL Spring Split, the 2016 and 2017’s Summer Split, and on top of all that, they have yet to miss a single World Championship. Apart from participating in four Worlds, they were also the winner of the first Mid-Season Invitational in 2015, achieving the first international victory for China. As one of the veteran teams in the LPL, their top tier competitiveness has never declined despite changes in their roster. This year, the performance of EDG in the LPL has experienced ups and downs, as they did not choose to hire any superstars. However, against all odds, they defeated both JD Gaming and Rogue Warriors in the LPL Regional Qualifier to ultimately punch yet another ticket to Worlds. This young team is fierce and EDG is ready to make history once again.', N'./assetss/team-edg.png', N'./assetss/logo-edg.png')
INSERT [dbo].[Team] ([ID], [name], [coachID], [regionID], [description], [linkImg], [linkLogo]) VALUES (7, N'Fnatic', 7, 3, N'Fnatic is one of Europe’s oldest organizations and one of its most successful. This year they started off hot, taking home the 2018 EU LCS Spring Split crown. But that wasn’t enough. They demolished FC Schalke 04 in the 2018 Summer Split Finals to secure the organization’s seventh EU LCS title. The difference with this roster is their fluid six-man rotation that features top laners Bwipo and sOAZ sharing time based on the tactics Fnatic have in mind. When you add this type of flexibility to the already star-studded Fnatic squad, you get a recipe for wins—lots and lots of wins. With their dominance of the EU LCS already in the rearview mirror, Fnatic now have set their sights on the World Championship. It’ll be a long and arduous road, but if there’s a European team that knows what it takes to hoist the Summoner''s Cup—it’s Fnatic.', N'./assetss/team-fnc.png', N'./assetss/logo-fnc.png')
INSERT [dbo].[Team] ([ID], [name], [coachID], [regionID], [description], [linkImg], [linkLogo]) VALUES (8, N'Team Vitality', 8, 3, N'Team Vitality only experienced moderate success in the EU LCS throughout 2017. Not ones to settle for mediocrity, Vitality completely overhauled their roster in 2018 with a trio of new rookies who mixed in well with veteran leaders Gilius and Cabochard. The squad quickly picked up a notorious reputation for their high octane, all-or-nothing style of play. Their brazen tactics landed them a 4th Place finish in the 2018 EU LCS Spring Split. When it looked like they were losing competitive fire in the middle of the 2018 EU LCS Summer Split, they swapped in the scarf aficionado himself, Kikis, to man the jungle. His addition breathed life back into Vitality who finished the Summer Split strong and picked up a respectable 3rd Place finish. While this may be Vitality''s first trip to the World Championship, they make up for their inexperience with tons of style and brash bravado.', N'./assetss/team-vit.png', N'./assetss/logo-vit.png')
INSERT [dbo].[Team] ([ID], [name], [coachID], [regionID], [description], [linkImg], [linkLogo]) VALUES (9, N'G2 Esport', 9, 3, N'G2 Esports have racked up four EU LCS titles and two trips to Worlds since their inception in late 2015. Dominance is the name of the game for G2, so it was a surprise when they went titleless this year and were forced to fight through the European Gauntlet in order to lock in a spot at Worlds. In a rare moment as underdogs, G2 fought off a pesky Splyce squad, then shredded FC Schalke 04 for a 3-1 in the Regional Qualifier Finals to punch their ticket to Korea. G2''s power has always come from their perennial all-pro mid laner, Perkz. His versatility coupled with a sky-high mechanical ceiling makes him a terror to deal with. On top of that, Perkz’s growing rapport with jungler Jankos has created a potent one-two punch that’s only gotten stronger with time. G2 may not be the kings of Europe they once were, but this Worlds could be the perfect time to stage a coup and take back their place as Europe’s best.', N'./assetss/team-g2.png', N'./assetss/logo-g2.png')
INSERT [dbo].[Team] ([ID], [name], [coachID], [regionID], [description], [linkImg], [linkLogo]) VALUES (10, N'Team Liquid', 10, 4, N'Team Liquid went back to the drawing board after a tumultuous 2016 and nearly disastrous 2017 to build a powerhouse roster in 2018. With their newly-stacked squad, Team Liquid wasted no time dispelling the “Forever Fourth” meme by picking up the organization’s first-ever NA LCS crown in the 2018 Spring Split. Fast forward a few months to the end of the Summer Split and Team Liquid easily locked in back-to-back NA LCS titles with their 3-0 demolition of Cloud9 in the Finals. While Liquid is absolutely stacked with talent, NA LCS MVP Doublelift stands head and shoulders above them all. The bot laner is already one of the most recognizable faces in professional League of Legends, and with the support of his team, Doublelift’s latest campaign left no doubt that he’s the greatest talent North America has ever produced.', N'./assetss/team-tl.png', N'./assetss/logo-tl.png')
INSERT [dbo].[Team] ([ID], [name], [coachID], [regionID], [description], [linkImg], [linkLogo]) VALUES (11, N'100 Thieves', 11, 4, N'100 Thieves is one of the newest teams in the NA LCS, but that didn’t stop them from quickly assembling a squad that could throw punches with the best of them. They wasted no time proving themselves, styling on opponents all the way to the 2018 NA LCS Spring Split Finals in the organization''s rookie split. While they endured a bit of a sophomore slump with a 4th place finish in the Summer Split, they racked up enough Championship Points to qualify for Worlds. The team may look unassuming at first, but they’ve got a sneaky amount of international experience spread across their roster. Add in their pair of All-Pro superstars, aphromoo and Ssumday, and this band of thieves has a chance in just about any matchup. Even though they look like long shots to make a splash at Worlds, the Thieves will take on any odds if it means they’ve got a chance to pull off the heist of a lifetime.', N'./assetss/team-100.png', N'./assetss/logo-100.png')
INSERT [dbo].[Team] ([ID], [name], [coachID], [regionID], [description], [linkImg], [linkLogo]) VALUES (12, N'Cloud9', 12, 4, N'Cloud9 sat in last place in the NA LCS after a roster shake up at the start of the season. The team that had captured so many fans around the globe seemed to finally be running out of magic. Then things started to change, and a victory against TSM quickly snowballed into an eight-game win streak that catapulted Cloud9 from 10th to 2nd. Not only were they on fire, but they looked like one of the best teams in North America. The key? A rotating seven-man roster that could adapt on the fly and create the mismatches they were looking for. And even though Cloud9 fell against Team Liquid in the Summer Split Finals, they knew they had one more shot at Worlds through the Gauntlet. Cloud9 capped off their comeback season in dominant fashion with an emotional and historic 3-0 sweep of TSM in the Regional Qualifier Finals. Sporting a renewed swagger, Cloud9 touch down in Korea as one of the tournament’s true wild cards.', N'./assetss/team-c9.png', N'./assetss/logo-c9.png')
INSERT [dbo].[Team] ([ID], [name], [coachID], [regionID], [description], [linkImg], [linkLogo]) VALUES (13, N'Flash Wolwes', 13, 5, N'Flash Wolves is the top team in the LMS. Although they faced coach and roster changes this year, it didn''t affect their domination. In the Summer Split, they went 14-0 and quickly routed Mad Team 3-0 in the Finals to secure the first seed for the LMS. This was the sixth consecutive Finals win for Flash Wolves. This roster is good at getting advantages in lane through confrontations and grouping up to attack bot lane in advance. Calculated map control and rapid rotations allow them to take objectives fast. This lightning-paced strategy gets the Flash Wolves rolling early, forcing opponents to react too late to win the game. Flash Wolves had the shortest average game time and highest first turret rate in 2018 LMS. Now heading to Worlds for the fourth time, Flash Wolves are sharpening their fangs to fearlessly fight every opponent and chase higher glory.', N'./assetss/team-fw.png', N'./assetss/logo-fw.png')
INSERT [dbo].[Team] ([ID], [name], [coachID], [regionID], [description], [linkImg], [linkLogo]) VALUES (14, N'Mad Team', 14, 5, N'Mad Team has not even been around for a year but their strong play and masterful coaching earned them the most Championship Points in the LMS. This is the first trip to the World Championship for every member of MAD. In the Spring Split, MAD usually used a split push line-up, with fighter champions in the side lanes pulling opponents into position, then finding the timing to engage to win team fights with a numbers advantage. But in the Summer Split, they changed. Using a more mature playstyle, they drove the pace of the game with calculated jungle macro and took advantages early. The changes are credited to Coach GreenTea, who has rapidly progressed MAD''s overall team communication and performance. He will expect them to continue their growth and prove their strength among the best at Worlds.', N'./assetss/team-mad.png', N'./assetss/logo-mad.png')
INSERT [dbo].[Team] ([ID], [name], [coachID], [regionID], [description], [linkImg], [linkLogo]) VALUES (15, N'G-Rex', 15, 5, N'G-Rex is led by Season 2 World Champion Toyz. The team debuted in Spring 2018 and made it all the way to 2nd Place in the LMS. However, due to the meta changes in summer, GRX stumbled in the beginning. They even lost to J Team and failed to qualify to Playoffs. But these beasts waited for an opportunity to ambush their opponents. They seized the moment during the LMS Regional Qualifiers, defeating Hong Kong Attitude and J Team for revenge. GRX now heads to Worlds ready to sink their claws into international opponents.', N'./assetss/team-grex.png', N'./assetss/logo-grex.png')
INSERT [dbo].[Team] ([ID], [name], [coachID], [regionID], [description], [linkImg], [linkLogo]) VALUES (16, N'Kabum! E-Sports', 16, 6, N'KaBuM made history in Brazil in 2018: by winning CBLoL’s Winter Split, they became the first Brazilian that will represent the country twice in the World Championship. KaBuM also won the Summer Split and represented Brazil at this year''s Mid-Season Invitational. The team’s playstyle values organized and disciplined games over individual greatness, but that''s not say they don''t have stars like TitaN and dyNquedo. KaBuM is going to Korea three weeks in advance to get the most out of the World Championship -- will that training be enough to get them to achieve something as epic as the victory against Alliance in 2014 (remember “;This is for KaBuM!”;)?', N'./assetss/team-kab.png', N'./assetss/logo-kabum.png')
INSERT [dbo].[Team] ([ID], [name], [coachID], [regionID], [description], [linkImg], [linkLogo]) VALUES (17, N'Gambit Esports', 17, 7, N'Gambit Esports, once the scariest team in the West, blew up the LCL by building the most star-studded lineup in the history of the league. Trying to make a splash at the World Championship, this will be the fourth trip to Worlds for Diamondprox, third for PvPStejos, Kira and EDward, and even Lodik debuted internationally at this year''s Mid-Season Invitational. Calculated and able to perform under pressure, Gambit Esports will be prepared to face off against nearly any opponent.', N'./assetss/team-gam.png', N'./assetss/logo-gam.png')
INSERT [dbo].[Team] ([ID], [name], [coachID], [regionID], [description], [linkImg], [linkLogo]) VALUES (18, N'Detonation FocusMe', 18, 8, N'DetonatioN FocusMe is notorious for earning 1st place in the LJL regular season but coming up short in the Playoffs. In their fourth successive Finals appearance, Detonation FocusMe finally earned their first LJL Championship, and a trip to Worlds, by defeating Unsold Stuff Gaming 3-1. This will be the first World Championship for each player on DFM aside from Evi who attended with Rampage in 2017. The team is excited to make it this far and represent Japan on the international stage.', N'./assetss/team-det.png', N'./assetss/logo-det.png')
INSERT [dbo].[Team] ([ID], [name], [coachID], [regionID], [description], [linkImg], [linkLogo]) VALUES (19, N'Infinity Esport', 19, 9, N'Infinity Esports has proven to be an exemplary organization. The team has been to three straight Finals in their region, losing the first two against Rainbow7, the iconic representative in the Latin America North. Now, for the first time in the region’s history, there''s a new champion to represent LLN at Worlds. Coming off their historic win, Infinity will look to leverage their momentum at Worlds for the first time ever. Led by their experienced Peruvian star Arce in the support role, the team has a calculated style and is also likely to shine in the jungle with SolidSnake, as well as in the bot lane with their ADC, Renyu, who quickly became the LLN''s Rookie of the Year.', N'./assetss/team-ie.png', N'./assetss/logo-ie.png')
INSERT [dbo].[Team] ([ID], [name], [coachID], [regionID], [description], [linkImg], [linkLogo]) VALUES (20, N'Kaos Latin Gamers', 20, 10, N'Kaos Latin Gamers have dominated the South American scene for the past year. They achieved their third championship in a row and are now returning to Worlds. The red rhinos showed strong play at the Mid-Season Invitational, and their current roster has been together for a long time, further cementing their synergy. Kaos Latin Gamers'' passionate spirit runs through their aggressive jungler, Tierwulf, and much of their success will rest on his shoulders. But other teams shouldn''t take any of KLG lightly. Mid laner Plugo also has vast international experience and can carry his team with his versatile playstyle.', N'./assetss/team-kaos.png', N'./assetss/logo-kaos.png')
INSERT [dbo].[Team] ([ID], [name], [coachID], [regionID], [description], [linkImg], [linkLogo]) VALUES (21, N'Dire Wolves', 21, 11, N'The Dire Wolves are a ferocious bunch. Coming off their second 10-0 regular split, the wolfpack have now won 4 OPL Finals in a row. The OPL is a league characterised by big personalities. These players aren’t afraid to speak their mind and even less afraid to laugh at themselves. But don’t be fooled by their lighthearted bravado; this is a fiercely competitive league, and the only thing that matters is victory. This is especially true of the Dire Wolves. For this incredibly ambitious team, the OPL is just a means to an end; the ultimate goal is to make their mark on the international stage and bring pride to Oceania.', N'./assetss/team-dw.png', N'./assetss/logo-dw.png')
INSERT [dbo].[Team] ([ID], [name], [coachID], [regionID], [description], [linkImg], [linkLogo]) VALUES (22, N'Bahcesehir Supermassive', 22, 12, N'Bahçeşehir SuperMassive is one of the TCL’s most successful teams in recent years. Since 2016 when the team was founded, they’ve managed to make it to every single Finals in the Turkish Championship League. Despite their consistent performance, they had never won the Turkish Grand Finals. This year, Korean players GBM and SnowFlower helped SuperMassive break this curse. Beating Royal Bandits with a score of 3-1 in Finals, SUP earned the right to compete in the Worlds for the first time in the team’s history.', N'./assetss/team-sm.png', N'./assetss/logo-sm.png')
INSERT [dbo].[Team] ([ID], [name], [coachID], [regionID], [description], [linkImg], [linkLogo]) VALUES (23, N'Ascension Gaming', 23, 13, N'Ascension Gaming showed strong performances in Southeast Asia''s new competitive format this year. They went 6-0 in the Group Stage and sealed a trip to Worlds with a 3-0 against MEGA Esports in the Finals. Despite changes in the region’s competitive landscape, Ascension Gaming continues their dominance by making small changes to their roster. With the addition of Russian AD Carry, Niksar, the team was able to move Lloyd to the jungle and cover their weaknesses in bot lane. The team is now stronger than ever, with stable players in all lanes, and a more aggressive playstyle. If a game against Ascension is prolonged, expect a fearsome team fight!', N'./assetss/team-ag.png', N'./assetss/logo-ag.png')
INSERT [dbo].[Team] ([ID], [name], [coachID], [regionID], [description], [linkImg], [linkLogo]) VALUES (24, N'Phong Vu Buffalo', 24, 14, N'Phong Vũ Buffalo ascended to the top in the inaugural season of the Vietnam Championship Series. With the core of old Young Generation, in mid laner Naul and bot laner BigKoro, and the help of star top laner Zeros, PVB became tournament favorites early on. PVB lead the league in kills per game and second least deaths per game. Not just gaining advantage through kills, their vision control is also impeccable thanks to Palette, the best vision centric support the league has ever seen. In the VCS Summer Finals, they took down Cube Adonis who went from last place in Spring to first place in Summer. As the team representing Vietnam, Phong Vũ Buffalo is hungry to prove they’re a threat with their eyes fixed on a deep Worlds run.', N'./assetss/team-pvb.png', NULL)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (1, 1, 1)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (1, 2, 2)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (1, 3, 3)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (1, 4, 4)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (1, 5, 5)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (1, 6, 6)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (2, 7, 1)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (2, 8, 2)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (2, 9, 3)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (2, 10, 4)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (2, 11, 5)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (2, 12, 6)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (3, 13, 1)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (3, 14, 2)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (3, 15, 3)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (3, 16, 4)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (3, 17, 5)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (3, 18, 6)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (4, 19, 1)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (4, 20, 2)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (4, 21, 3)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (4, 22, 4)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (4, 23, 5)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (4, 24, 6)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (5, 25, 1)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (5, 26, 2)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (5, 27, 3)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (5, 28, 4)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (5, 29, 5)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (5, 30, 6)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (6, 31, 1)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (6, 32, 2)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (6, 33, 3)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (6, 34, 4)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (6, 35, 5)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (6, 36, 6)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (7, 37, 1)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (7, 38, 2)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (7, 39, 3)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (7, 40, 4)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (7, 41, 5)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (7, 42, 6)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (8, 43, 1)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (8, 44, 2)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (8, 45, 3)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (8, 46, 4)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (8, 47, 5)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (8, 48, 6)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (9, 49, 1)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (9, 50, 2)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (9, 51, 3)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (9, 52, 4)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (9, 53, 5)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (9, 54, 6)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (10, 55, 1)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (10, 56, 2)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (10, 57, 3)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (10, 58, 4)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (10, 59, 5)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (10, 60, 6)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (11, 61, 1)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (11, 62, 2)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (11, 63, 3)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (11, 64, 4)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (11, 65, 5)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (11, 66, 6)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (12, 67, 1)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (12, 68, 2)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (12, 69, 3)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (12, 70, 4)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (12, 71, 5)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (12, 72, 6)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (13, 73, 1)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (13, 74, 2)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (13, 75, 3)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (13, 76, 4)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (13, 77, 5)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (13, 78, 6)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (14, 79, 1)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (14, 80, 2)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (14, 81, 3)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (14, 82, 4)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (14, 83, 5)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (14, 84, 6)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (15, 85, 1)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (15, 86, 2)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (15, 87, 3)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (15, 88, 4)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (15, 89, 5)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (15, 90, 6)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (16, 91, 1)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (16, 92, 2)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (16, 93, 3)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (16, 94, 4)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (16, 95, 5)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (16, 96, 6)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (17, 97, 1)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (17, 98, 2)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (17, 99, 3)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (17, 100, 4)
GO
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (17, 101, 5)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (17, 102, 6)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (18, 103, 1)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (18, 104, 2)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (18, 105, 3)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (18, 106, 4)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (18, 107, 5)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (18, 108, 6)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (19, 109, 1)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (19, 110, 2)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (19, 111, 3)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (19, 112, 4)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (19, 113, 5)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (19, 114, 6)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (20, 115, 1)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (20, 116, 2)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (20, 117, 3)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (20, 118, 4)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (20, 119, 5)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (20, 120, 6)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (21, 121, 1)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (21, 122, 2)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (21, 123, 3)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (21, 124, 4)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (21, 125, 5)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (21, 126, 6)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (22, 127, 1)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (22, 128, 2)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (22, 129, 3)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (22, 130, 4)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (22, 131, 5)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (22, 132, 6)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (23, 133, 1)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (23, 134, 2)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (23, 135, 3)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (23, 136, 4)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (23, 137, 5)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (23, 138, 6)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (24, 139, 1)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (24, 140, 2)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (24, 141, 3)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (24, 142, 4)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (24, 143, 5)
INSERT [dbo].[Team_Player_Position_rf] ([teamID], [playerID], [positionID]) VALUES (24, 144, 6)
INSERT [dbo].[User] ([ID], [name], [dob], [gender], [address], [roleID]) VALUES (1, N'cuong', CAST(N'1998-10-11' AS Date), 1, N'VN', 1)
INSERT [dbo].[User] ([ID], [name], [dob], [gender], [address], [roleID]) VALUES (2, N'hieu', CAST(N'1998-03-15' AS Date), 1, N'VN', 2)
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_User] FOREIGN KEY([ID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_User]
GO
ALTER TABLE [dbo].[Match]  WITH CHECK ADD  CONSTRAINT [FK_Match_Round] FOREIGN KEY([roundID])
REFERENCES [dbo].[Round] ([ID])
GO
ALTER TABLE [dbo].[Match] CHECK CONSTRAINT [FK_Match_Round]
GO
ALTER TABLE [dbo].[Match_Team_rf]  WITH CHECK ADD  CONSTRAINT [FK_Match_Team_rf_Match] FOREIGN KEY([MatchID])
REFERENCES [dbo].[Match] ([ID])
GO
ALTER TABLE [dbo].[Match_Team_rf] CHECK CONSTRAINT [FK_Match_Team_rf_Match]
GO
ALTER TABLE [dbo].[Match_Team_rf]  WITH CHECK ADD  CONSTRAINT [FK_Match_Team_rf_Team] FOREIGN KEY([TeamID])
REFERENCES [dbo].[Team] ([ID])
GO
ALTER TABLE [dbo].[Match_Team_rf] CHECK CONSTRAINT [FK_Match_Team_rf_Team]
GO
ALTER TABLE [dbo].[Role_RoleDetail_rf]  WITH CHECK ADD  CONSTRAINT [FK_Role_RoleDetail_rf_Role] FOREIGN KEY([roleID])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[Role_RoleDetail_rf] CHECK CONSTRAINT [FK_Role_RoleDetail_rf_Role]
GO
ALTER TABLE [dbo].[Role_RoleDetail_rf]  WITH CHECK ADD  CONSTRAINT [FK_Role_RoleDetail_rf_RoleDetail] FOREIGN KEY([roleDetailID])
REFERENCES [dbo].[RoleDetail] ([ID])
GO
ALTER TABLE [dbo].[Role_RoleDetail_rf] CHECK CONSTRAINT [FK_Role_RoleDetail_rf_RoleDetail]
GO
ALTER TABLE [dbo].[SubDetail]  WITH CHECK ADD  CONSTRAINT [FK_SubDetail_Player] FOREIGN KEY([playerID])
REFERENCES [dbo].[Player] ([ID])
GO
ALTER TABLE [dbo].[SubDetail] CHECK CONSTRAINT [FK_SubDetail_Player]
GO
ALTER TABLE [dbo].[Team]  WITH CHECK ADD  CONSTRAINT [FK_Team_Coach] FOREIGN KEY([coachID])
REFERENCES [dbo].[Coach] ([ID])
GO
ALTER TABLE [dbo].[Team] CHECK CONSTRAINT [FK_Team_Coach]
GO
ALTER TABLE [dbo].[Team]  WITH CHECK ADD  CONSTRAINT [FK_Team_Region] FOREIGN KEY([regionID])
REFERENCES [dbo].[Region] ([ID])
GO
ALTER TABLE [dbo].[Team] CHECK CONSTRAINT [FK_Team_Region]
GO
ALTER TABLE [dbo].[Team_Player_Position_rf]  WITH CHECK ADD  CONSTRAINT [FK_Team_Player_Position_rf_Player] FOREIGN KEY([playerID])
REFERENCES [dbo].[Player] ([ID])
GO
ALTER TABLE [dbo].[Team_Player_Position_rf] CHECK CONSTRAINT [FK_Team_Player_Position_rf_Player]
GO
ALTER TABLE [dbo].[Team_Player_Position_rf]  WITH CHECK ADD  CONSTRAINT [FK_Team_Player_Position_rf_Position] FOREIGN KEY([positionID])
REFERENCES [dbo].[Position] ([ID])
GO
ALTER TABLE [dbo].[Team_Player_Position_rf] CHECK CONSTRAINT [FK_Team_Player_Position_rf_Position]
GO
ALTER TABLE [dbo].[Team_Player_Position_rf]  WITH CHECK ADD  CONSTRAINT [FK_Team_Player_Position_rf_Team] FOREIGN KEY([teamID])
REFERENCES [dbo].[Team] ([ID])
GO
ALTER TABLE [dbo].[Team_Player_Position_rf] CHECK CONSTRAINT [FK_Team_Player_Position_rf_Team]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([ID])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [PRJ321_Assignment] SET  READ_WRITE 
GO
