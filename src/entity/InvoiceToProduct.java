package entity;

public class InvoiceToProduct {
	private int invoiceId;
	private int productId;
	private int units;
	private int availableStockId;
	private float buyingPrice;
	private float sellingPrice;
	private float profitMade;
	
	public InvoiceToProduct( int productId, int units, int availableStockId, float buyingPrice,float sellingPrice, float profitMade) {

		
		this.productId = productId;
		this.units = units;
		this.availableStockId = availableStockId;
		this.buyingPrice = buyingPrice;
		this.sellingPrice = sellingPrice;
		this.profitMade = profitMade;
	}
	
	public InvoiceToProduct(int invoiceId, int productId, int units, int availableStockId, float buyingPrice,float sellingPrice, float profitMade) {

		this.invoiceId = invoiceId;
		this.productId = productId;
		this.units = units;
		this.availableStockId = availableStockId;
		this.buyingPrice = buyingPrice;
		this.sellingPrice = sellingPrice;
		this.profitMade = profitMade;
	}
	public int getInvoiceId() {
		return invoiceId;
	}
	public void setInvoiceId(int invoiceId) {
		this.invoiceId = invoiceId;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getUnits() {
		return units;
	}
	public void setUnits(int units) {
		this.units = units;
	}
	public int getAvailableStockId() {
		return availableStockId;
	}
	public void setAvailableStockId(int availableStockId) {
		this.availableStockId = availableStockId;
	}
	public float getBuyingPrice() {
		return buyingPrice;
	}
	public void setBuyingPrice(float buyingPrice) {
		this.buyingPrice = buyingPrice;
	}
	public float getSellingPrice() {
		return sellingPrice;
	}
	public void setSellingPrice(float sellingPrice) {
		this.sellingPrice = sellingPrice;
	}
	public float getProfitMade() {
		return profitMade;
	}
	public void setProfitMade(float profitMade) {
		this.profitMade = profitMade;
	}
	
	
	
}
