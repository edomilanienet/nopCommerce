USE [EDO_store_nopCommerce]
GO

-- \Libraries\Nop.Core\Domain\Catalog
ALTER TABLE [dbo].[Product] ALTER COLUMN StockQuantity NUMERIC(18, 3) NOT NULL

---

DROP INDEX [IX_GetLowStockProducts] ON [dbo].[Product]
GO

ALTER TABLE [dbo].[Product] ALTER COLUMN MinStockQuantity NUMERIC(18, 3) NOT NULL

CREATE NONCLUSTERED INDEX [IX_GetLowStockProducts] ON [dbo].[Product]
(
	[Deleted] ASC,
	[VendorId] ASC,
	[ProductTypeId] ASC,
	[ManageInventoryMethodId] ASC,
	[MinStockQuantity] ASC,
	[UseMultipleWarehouses] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

ALTER INDEX [IX_GetLowStockProducts] ON [dbo].[Product] DISABLE
GO

---

ALTER TABLE [dbo].[Product] ALTER COLUMN NotifyAdminForQuantityBelow NUMERIC(18, 3) NOT NULL
ALTER TABLE [dbo].[Product] ALTER COLUMN OrderMinimumQuantity NUMERIC(18, 3) NOT NULL
ALTER TABLE [dbo].[Product] ALTER COLUMN OrderMaximumQuantity NUMERIC(18, 3) NOT NULL

ALTER TABLE [dbo].[ProductAttributeCombination] ALTER COLUMN StockQuantity NUMERIC(18, 3) NOT NULL
ALTER TABLE [dbo].[ProductAttributeCombination] ALTER COLUMN NotifyAdminForQuantityBelow NUMERIC(18, 3) NOT NULL

ALTER TABLE [dbo].[ProductWarehouseInventory] ALTER COLUMN StockQuantity NUMERIC(18, 3) NOT NULL
ALTER TABLE [dbo].[ProductWarehouseInventory] ALTER COLUMN ReservedQuantity NUMERIC(18, 3) NOT NULL

ALTER TABLE [dbo].[StockQuantityHistory] ALTER COLUMN QuantityAdjustment NUMERIC(18, 3) NOT NULL
ALTER TABLE [dbo].[StockQuantityHistory] ALTER COLUMN StockQuantity NUMERIC(18, 3) NOT NULL

ALTER TABLE [dbo].[TierPrice] ALTER COLUMN Quantity NUMERIC(18, 3) NOT NULL

-- \Libraries\Nop.Core\Domain\Orders
ALTER TABLE [dbo].[OrderItem] ALTER COLUMN Quantity NUMERIC(18, 3) NOT NULL

ALTER TABLE [dbo].[ShoppingCartItem] ALTER COLUMN Quantity NUMERIC(18, 3) NOT NULL

-- \Libraries\Nop.Core\Domain\Shipping
ALTER TABLE [dbo].[ShipmentItem] ALTER COLUMN Quantity NUMERIC(18, 3) NOT NULL