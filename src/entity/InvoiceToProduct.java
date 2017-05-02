package entity;

public class InvoiceToProduct {
	private String invoicePrimaryId;
	private int productId;
	private int units;
	private float profitMade;
	private float sellingPrice;
	
	public InvoiceToProduct( int productId, int units,float profitMade, float sellingPrice) {

		
		this.productId = productId;
		this.units = units;
	
		this.profitMade = profitMade;
		this.sellingPrice =sellingPrice;
	}
	
	public InvoiceToProduct(String invoicePrimaryId, int productId, int units, float profitMade, float sellingPrice) {

		this.invoicePrimaryId = invoicePrimaryId;
		this.productId = productId; //eta user ke daekhabo
		this.units = units; //eta user ke daekhabo
		this.profitMade = profitMade;
		this.sellingPrice = sellingPrice; //eta user ke daekhabo
	}
	public String getInvoiceId() {
		return invoicePrimaryId;
	}
	public void setInvoiceId(String invoicePrimaryId) {
		this.invoicePrimaryId = invoicePrimaryId;
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

	public float getProfitMade() {
		return profitMade;
	}
	public void setProfitMade(float profitMade) {
		this.profitMade = profitMade;
	}
	

	public String getInvoicePrimaryId() {
		return invoicePrimaryId;
	}

	public void setInvoicePrimaryId(String invoicePrimaryId) {
		this.invoicePrimaryId = invoicePrimaryId;
	}

	public float getSellingPrice() {
		return sellingPrice;
	}

	public void setSellingPrice(float sellingPrice) {
		this.sellingPrice = sellingPrice;
	}

	@Override
	public String toString() {
		return "InvoiceToProduct [invoicePrimaryId=" + invoicePrimaryId + ", productId="
				+ productId + ", units=" + units + ", profitMade=" + profitMade
				+ "]";
	}
	
	
}
