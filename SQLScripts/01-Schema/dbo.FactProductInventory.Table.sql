/****** Object:  Table [dbo].[FactProductInventory]    Script Date: 09/09/2023 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactProductInventory](
	[ProductKey] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[UnitCost] [decimal](9, 2) NOT NULL,
	[UnitsIn] [int] NOT NULL,
	[UnitsOut] [int] NOT NULL,
	[UnitsBalance] [int] NOT NULL,
 CONSTRAINT [PK_FactProductInventory] PRIMARY KEY CLUSTERED 
(
	[ProductKey] ASC,
	[Date] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FactProductInventory]  WITH CHECK ADD  CONSTRAINT [FK_FactProductInventory_DimDate] FOREIGN KEY([Date])
REFERENCES [dbo].[DimDate] ([FullDateAlternateKey])
GO
ALTER TABLE [dbo].[FactProductInventory] CHECK CONSTRAINT [FK_FactProductInventory_DimDate]
GO
ALTER TABLE [dbo].[FactProductInventory]  WITH CHECK ADD  CONSTRAINT [FK_FactProductInventory_DimProduct] FOREIGN KEY([ProductKey])
REFERENCES [dbo].[DimProduct] ([ProductKey])
GO
ALTER TABLE [dbo].[FactProductInventory] CHECK CONSTRAINT [FK_FactProductInventory_DimProduct]
GO
