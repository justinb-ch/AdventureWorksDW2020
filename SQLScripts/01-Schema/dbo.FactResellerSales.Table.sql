/****** Object:  Table [dbo].[FactResellerSales]    Script Date: 09/09/2023 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactResellerSales](
	[SalesOrderNumber] [nvarchar](20) NOT NULL,
	[SalesOrderLineNumber] [tinyint] NOT NULL,
	[OrderDate] [date] NOT NULL,
	[DueDate] [date] NOT NULL,
	[ShipDate] [date] NULL,
	[ProductKey] [int] NOT NULL,
	[ResellerKey] [int] NOT NULL,
	[PromotionKey] [int] NOT NULL,
	[EmployeeKey] [int] NOT NULL,
	[SalesTerritoryKey] [int] NOT NULL,
	[OrderQuantity] [smallint] NOT NULL,
	[UnitPrice] [decimal](9, 2) NOT NULL,
	[TotalProductCost] [decimal](9, 2) NULL,
	[SalesAmount] [decimal](9, 2) NOT NULL,
 CONSTRAINT [PK_FactResellerSales_SalesOrderNumber_SalesOrderLineNumber] PRIMARY KEY CLUSTERED 
(
	[SalesOrderNumber] ASC,
	[SalesOrderLineNumber] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FactResellerSales]  WITH NOCHECK ADD  CONSTRAINT [FK_FactResellerSales_DimDate] FOREIGN KEY([OrderDate])
REFERENCES [dbo].[DimDate] ([FullDateAlternateKey])
GO
ALTER TABLE [dbo].[FactResellerSales] CHECK CONSTRAINT [FK_FactResellerSales_DimDate]
GO
ALTER TABLE [dbo].[FactResellerSales]  WITH NOCHECK ADD  CONSTRAINT [FK_FactResellerSales_DimDate1] FOREIGN KEY([ShipDate])
REFERENCES [dbo].[DimDate] ([FullDateAlternateKey])
GO
ALTER TABLE [dbo].[FactResellerSales] CHECK CONSTRAINT [FK_FactResellerSales_DimDate1]
GO
ALTER TABLE [dbo].[FactResellerSales]  WITH NOCHECK ADD  CONSTRAINT [FK_FactResellerSales_DimEmployee] FOREIGN KEY([EmployeeKey])
REFERENCES [dbo].[DimEmployee] ([EmployeeKey])
GO
ALTER TABLE [dbo].[FactResellerSales] CHECK CONSTRAINT [FK_FactResellerSales_DimEmployee]
GO
ALTER TABLE [dbo].[FactResellerSales]  WITH NOCHECK ADD  CONSTRAINT [FK_FactResellerSales_DimProduct] FOREIGN KEY([ProductKey])
REFERENCES [dbo].[DimProduct] ([ProductKey])
GO
ALTER TABLE [dbo].[FactResellerSales] CHECK CONSTRAINT [FK_FactResellerSales_DimProduct]
GO
ALTER TABLE [dbo].[FactResellerSales]  WITH NOCHECK ADD  CONSTRAINT [FK_FactResellerSales_DimPromotion] FOREIGN KEY([PromotionKey])
REFERENCES [dbo].[DimPromotion] ([PromotionKey])
GO
ALTER TABLE [dbo].[FactResellerSales] CHECK CONSTRAINT [FK_FactResellerSales_DimPromotion]
GO
ALTER TABLE [dbo].[FactResellerSales]  WITH NOCHECK ADD  CONSTRAINT [FK_FactResellerSales_DimReseller] FOREIGN KEY([ResellerKey])
REFERENCES [dbo].[DimReseller] ([ResellerKey])
GO
ALTER TABLE [dbo].[FactResellerSales] CHECK CONSTRAINT [FK_FactResellerSales_DimReseller]
GO
ALTER TABLE [dbo].[FactResellerSales]  WITH NOCHECK ADD  CONSTRAINT [FK_FactResellerSales_DimSalesTerritory] FOREIGN KEY([SalesTerritoryKey])
REFERENCES [dbo].[DimSalesTerritory] ([SalesTerritoryKey])
GO
ALTER TABLE [dbo].[FactResellerSales] CHECK CONSTRAINT [FK_FactResellerSales_DimSalesTerritory]
GO
