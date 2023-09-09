/****** Object:  Table [dbo].[DimAccount]    Script Date: 09/09/2023 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimAccount](
	[AccountKey] [int] IDENTITY(1,1) NOT NULL,
	[ParentAccountKey] [int] NULL,
	[AccountCodeAlternateKey] [int] NULL,
	[ParentAccountCodeAlternateKey] [int] NULL,
	[AccountDescription] [nvarchar](50) NULL,
	[AccountType] [nvarchar](50) NULL,
	[Operator] [nvarchar](50) NULL,
	[CustomMemberExpression] [nvarchar](1000) NULL,
	[EmployeeKey_FinancialController] [int] NULL,
 CONSTRAINT [PK_DimAccount] PRIMARY KEY CLUSTERED 
(
	[AccountKey] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimAccount]  WITH CHECK ADD  CONSTRAINT [FK_DimAccount_DimAccount] FOREIGN KEY([ParentAccountKey])
REFERENCES [dbo].[DimAccount] ([AccountKey])
GO
ALTER TABLE [dbo].[DimAccount] CHECK CONSTRAINT [FK_DimAccount_DimAccount]
GO
ALTER TABLE [dbo].[DimAccount]  WITH CHECK ADD  CONSTRAINT [FK_DimAccount_EmployeeKey_FinancialController] FOREIGN KEY([EmployeeKey_FinancialController])
REFERENCES [dbo].[DimEmployee] ([EmployeeKey])
GO
ALTER TABLE [dbo].[DimAccount] CHECK CONSTRAINT [FK_DimAccount_EmployeeKey_FinancialController]
GO
