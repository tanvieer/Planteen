package entity;

public class InvoiceToProduct {
	private String invoicePrimaryId;
	private int productId;
	private int units;
	private float profitMade;
	
	public InvoiceToProduct( int productId, int units,float profitMade) {

		
		this.productId = productId;
		this.units = units;
	
		this.profitMade = profitMade;
	}
	
	public InvoiceToProduct(String invoicePrimaryId, int productId, int units, float profitMade) {

		this.invoicePrimaryId = invoicePrimaryId;
		this.productId = productId;
		this.units = units;

		this.profitMade = profitMade;
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

	@Override
	public String toString() {
		return "InvoiceToProduct [invoicePrimaryId=" + invoicePrimaryId + ", productId="
				+ productId + ", units=" + units + ", profitMade=" + profitMade
				+ "]";
	}
	
	
}
