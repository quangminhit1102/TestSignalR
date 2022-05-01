USE [Test]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/1/2022 3:36:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/1/2022 3:36:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/1/2022 3:36:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/1/2022 3:36:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[RoleId] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/1/2022 3:36:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 5/1/2022 3:36:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [int] NULL,
	[Details] [nvarchar](500) NULL,
	[Title] [nvarchar](50) NULL,
	[DetailsURL] [nvarchar](500) NULL,
	[SentTo] [nvarchar](50) NULL,
	[Date] [date] NULL,
	[IsRead] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[IsReminder] [bit] NULL,
	[Code] [nvarchar](100) NULL,
	[NotificationType] [nvarchar](100) NULL,
 CONSTRAINT [PK_Notification] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 5/1/2022 3:36:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notifications](
	[Id] [int] NOT NULL,
	[Type] [int] NULL,
	[Details] [nvarchar](500) NULL,
	[Title] [nvarchar](50) NULL,
	[DetailsURL] [nvarchar](500) NULL,
	[SentTo] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
	[IsRead] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[IsReminder] [bit] NULL,
	[Code] [nvarchar](100) NULL,
	[NotificationType] [nvarchar](100) NULL,
 CONSTRAINT [PK_Notifications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'38c2f2a1-9cc7-4d88-aecd-8d8578898ae0', N'a@gmail.com', 0, N'AEfjbEBxC/11kGSw2NipzRdCdbpxfiqcZXjSi9CJWnpo6T+8Wb5C6u90OUuhoPCpmw==', N'b1bf2276-e005-46f4-b8d7-71e33bed5f1f', NULL, 0, 0, NULL, 1, 0, N'a@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[Notification] ON 

INSERT [dbo].[Notification] ([Id], [Type], [Details], [Title], [DetailsURL], [SentTo], [Date], [IsRead], [IsDeleted], [IsReminder], [Code], [NotificationType]) VALUES (1, NULL, NULL, NULL, NULL, N'a@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notification] ([Id], [Type], [Details], [Title], [DetailsURL], [SentTo], [Date], [IsRead], [IsDeleted], [IsReminder], [Code], [NotificationType]) VALUES (2, NULL, NULL, NULL, NULL, N'a@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notification] ([Id], [Type], [Details], [Title], [DetailsURL], [SentTo], [Date], [IsRead], [IsDeleted], [IsReminder], [Code], [NotificationType]) VALUES (3, NULL, NULL, NULL, NULL, N'a@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notification] ([Id], [Type], [Details], [Title], [DetailsURL], [SentTo], [Date], [IsRead], [IsDeleted], [IsReminder], [Code], [NotificationType]) VALUES (4, NULL, NULL, NULL, NULL, N'a@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notification] ([Id], [Type], [Details], [Title], [DetailsURL], [SentTo], [Date], [IsRead], [IsDeleted], [IsReminder], [Code], [NotificationType]) VALUES (5, NULL, NULL, NULL, NULL, N'a@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notification] ([Id], [Type], [Details], [Title], [DetailsURL], [SentTo], [Date], [IsRead], [IsDeleted], [IsReminder], [Code], [NotificationType]) VALUES (6, NULL, NULL, NULL, NULL, N'ab@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notification] ([Id], [Type], [Details], [Title], [DetailsURL], [SentTo], [Date], [IsRead], [IsDeleted], [IsReminder], [Code], [NotificationType]) VALUES (7, NULL, NULL, NULL, NULL, N'ab@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notification] ([Id], [Type], [Details], [Title], [DetailsURL], [SentTo], [Date], [IsRead], [IsDeleted], [IsReminder], [Code], [NotificationType]) VALUES (8, NULL, NULL, NULL, NULL, N'a@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notification] ([Id], [Type], [Details], [Title], [DetailsURL], [SentTo], [Date], [IsRead], [IsDeleted], [IsReminder], [Code], [NotificationType]) VALUES (9, NULL, NULL, NULL, NULL, N'a@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notification] ([Id], [Type], [Details], [Title], [DetailsURL], [SentTo], [Date], [IsRead], [IsDeleted], [IsReminder], [Code], [NotificationType]) VALUES (10, NULL, NULL, NULL, NULL, N'a@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notification] ([Id], [Type], [Details], [Title], [DetailsURL], [SentTo], [Date], [IsRead], [IsDeleted], [IsReminder], [Code], [NotificationType]) VALUES (11, NULL, NULL, NULL, NULL, N'a@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notification] ([Id], [Type], [Details], [Title], [DetailsURL], [SentTo], [Date], [IsRead], [IsDeleted], [IsReminder], [Code], [NotificationType]) VALUES (12, NULL, NULL, NULL, NULL, N'a@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notification] ([Id], [Type], [Details], [Title], [DetailsURL], [SentTo], [Date], [IsRead], [IsDeleted], [IsReminder], [Code], [NotificationType]) VALUES (13, NULL, NULL, NULL, NULL, N'a@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notification] ([Id], [Type], [Details], [Title], [DetailsURL], [SentTo], [Date], [IsRead], [IsDeleted], [IsReminder], [Code], [NotificationType]) VALUES (14, NULL, NULL, NULL, NULL, N'a@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Notification] ([Id], [Type], [Details], [Title], [DetailsURL], [SentTo], [Date], [IsRead], [IsDeleted], [IsReminder], [Code], [NotificationType]) VALUES (15, NULL, NULL, NULL, NULL, N'a@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Notification] OFF
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers]
GO
