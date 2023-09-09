/****** Object:  Table [dbo].[FactInternetSalesReason]    Script Date: 09/09/2023 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactInternetSalesReason](
	[SalesOrderNumber] [nvarchar](20) NOT NULL,
	[SalesOrderLineNumber] [tinyint] NOT NULL,
	[SalesReasonKey] [int] NOT NULL,
 CONSTRAINT [PK_FactInternetSalesReason_SalesOrderNumber_SalesOrderLineNumber_SalesReasonKey] PRIMARY KEY CLUSTERED 
(
	[SalesOrderNumber] ASC,
	[SalesOrderLineNumber] ASC,
	[SalesReasonKey] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FactInternetSalesReason]  WITH CHECK ADD  CONSTRAINT [FK_FactInternetSalesReason_DimSalesReason] FOREIGN KEY([SalesReasonKey])
REFERENCES [dbo].[DimSalesReason] ([SalesReasonKey])
GO
ALTER TABLE [dbo].[FactInternetSalesReason] CHECK CONSTRAINT [FK_FactInternetSalesReason_DimSalesReason]
GO
ALTER TABLE [dbo].[FactInternetSalesReason]  WITH CHECK ADD  CONSTRAINT [FK_FactInternetSalesReason_FactInternetSales] FOREIGN KEY([SalesOrderNumber], [SalesOrderLineNumber])
REFERENCES [dbo].[FactInternetSales] ([SalesOrderNumber], [SalesOrderLineNumber])
GO
ALTER TABLE [dbo].[FactInternetSalesReason] CHECK CONSTRAINT [FK_FactInternetSalesReason_FactInternetSales]
GO
