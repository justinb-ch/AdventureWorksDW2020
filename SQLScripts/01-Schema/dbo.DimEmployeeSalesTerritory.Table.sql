/****** Object:  Table [dbo].[DimEmployeeSalesTerritory]    Script Date: 09/09/2023 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimEmployeeSalesTerritory](
	[EmployeeKey] [int] NOT NULL,
	[SalesTerritoryKey] [int] NOT NULL,
 CONSTRAINT [PK_DimEmployeeSalesTerritory_EmployeeKey_SalesTerritoryKey] PRIMARY KEY CLUSTERED 
(
	[EmployeeKey] ASC,
	[SalesTerritoryKey] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimEmployeeSalesTerritory]  WITH CHECK ADD  CONSTRAINT [FK_DimEmployeeSalesTerritory_EmployeeKey] FOREIGN KEY([EmployeeKey])
REFERENCES [dbo].[DimEmployee] ([EmployeeKey])
GO
ALTER TABLE [dbo].[DimEmployeeSalesTerritory] CHECK CONSTRAINT [FK_DimEmployeeSalesTerritory_EmployeeKey]
GO
ALTER TABLE [dbo].[DimEmployeeSalesTerritory]  WITH CHECK ADD  CONSTRAINT [FK_DimEmployeeSalesTerritory_SalesTerritoryKey] FOREIGN KEY([SalesTerritoryKey])
REFERENCES [dbo].[DimSalesTerritory] ([SalesTerritoryKey])
GO
ALTER TABLE [dbo].[DimEmployeeSalesTerritory] CHECK CONSTRAINT [FK_DimEmployeeSalesTerritory_SalesTerritoryKey]
GO
