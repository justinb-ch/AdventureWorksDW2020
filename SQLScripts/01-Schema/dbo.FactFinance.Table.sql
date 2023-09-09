/****** Object:  Table [dbo].[FactFinance]    Script Date: 09/09/2023 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactFinance](
	[FinanceKey] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NOT NULL,
	[ScenarioKey] [int] NOT NULL,
	[AccountKey] [int] NOT NULL,
	[Amount] [decimal](12, 2) NOT NULL,
 CONSTRAINT [PK_Finance] PRIMARY KEY CLUSTERED 
(
	[FinanceKey] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FactFinance]  WITH CHECK ADD  CONSTRAINT [FK_Finance_AccountKey] FOREIGN KEY([AccountKey])
REFERENCES [dbo].[DimAccount] ([AccountKey])
GO
ALTER TABLE [dbo].[FactFinance] CHECK CONSTRAINT [FK_Finance_AccountKey]
GO
ALTER TABLE [dbo].[FactFinance]  WITH CHECK ADD  CONSTRAINT [FK_Finance_DateKey] FOREIGN KEY([Date])
REFERENCES [dbo].[DimDate] ([FullDateAlternateKey])
GO
ALTER TABLE [dbo].[FactFinance] CHECK CONSTRAINT [FK_Finance_DateKey]
GO
ALTER TABLE [dbo].[FactFinance]  WITH CHECK ADD  CONSTRAINT [FK_Finance_ScenarioKey] FOREIGN KEY([ScenarioKey])
REFERENCES [dbo].[DimScenario] ([ScenarioKey])
GO
ALTER TABLE [dbo].[FactFinance] CHECK CONSTRAINT [FK_Finance_ScenarioKey]
GO
