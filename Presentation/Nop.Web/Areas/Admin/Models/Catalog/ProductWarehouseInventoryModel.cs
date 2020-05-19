using Nop.Web.Framework.Models;
using Nop.Web.Framework.Mvc.ModelBinding;

namespace Nop.Web.Areas.Admin.Models.Catalog
{
    /// <summary>
    /// Represents a product warehouse inventory model
    /// </summary>
    public partial class ProductWarehouseInventoryModel : BaseNopModel
    {
        #region Properties

        [NopResourceDisplayName("Admin.Catalog.Products.ProductWarehouseInventory.Fields.Warehouse")]
        public int WarehouseId { get; set; }

        [NopResourceDisplayName("Admin.Catalog.Products.ProductWarehouseInventory.Fields.Warehouse")]
        public string WarehouseName { get; set; }

        [NopResourceDisplayName("Admin.Catalog.Products.ProductWarehouseInventory.Fields.WarehouseUsed")]
        public bool WarehouseUsed { get; set; }

        [NopResourceDisplayName("Admin.Catalog.Products.ProductWarehouseInventory.Fields.StockQuantity")]
        public decimal StockQuantity { get; set; }

        [NopResourceDisplayName("Admin.Catalog.Products.ProductWarehouseInventory.Fields.ReservedQuantity")]
        public decimal ReservedQuantity { get; set; }

        [NopResourceDisplayName("Admin.Catalog.Products.ProductWarehouseInventory.Fields.PlannedQuantity")]
        public decimal PlannedQuantity { get; set; }

        #endregion
    }
}