
/****** Object:  Table [dbo].[User]    Script Date: 29-08-2022 02:49:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](128) NULL,
	[Username] [nvarchar](128) NULL,
	[Email] [nvarchar](128) NULL,
	[Phone] [nvarchar](128) NULL,
	[Website] [nvarchar](128) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 29-08-2022 02:49:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[UserId] [int] NOT NULL,
	[Street] [nvarchar](512) NULL,
	[Suite] [nvarchar](128) NULL,
	[City] [nvarchar](64) NULL,
	[Zipcode] [nvarchar](16) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_User]
GO
/****** Object:  Table [dbo].[Todo]    Script Date: 29-08-2022 02:49:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Todo](
	[Id] [int] NOT NULL,
	[Title] [nvarchar](128) NULL,
	[Completed] [bit] NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_Todo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Todo]  WITH CHECK ADD  CONSTRAINT [FK_Todo_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Todo] CHECK CONSTRAINT [FK_Todo_User]
GO
