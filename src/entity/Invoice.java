package entity;

import java.sql.Date;

public class Invoice {
	private int invoiceId ;
	private int userId ;
	private Date placementDate ;
	private Date confirmDate;
	private String approvedBy;
	private String status;
	private String invoicePrimaryId;
	private String deliveryAddress;
	private String deliveryPhoneNo;
	
	public Invoice() {
		// TODO Auto-generated constructor stub
	}
	
	public Invoice(int invoiceId, int userId, Date placementDate,
			Date confirmDate, String approvedBy, String status,
			String invoicePrimaryId, String deliveryAddress,
			String deliveryPhoneNo) {
		this.invoiceId = invoiceId;
		this.userId = userId;
		this.placementDate = placementDate;
		this.confirmDate = confirmDate;
		this.approvedBy = approvedBy;
		this.status = status;
		this.invoicePrimaryId = invoicePrimaryId;
		this.deliveryAddress = deliveryAddress;
		this.deliveryPhoneNo = deliveryPhoneNo;
	}
	
	public Invoice(int userId, Date placementDate, Date confirmDate,
			String approvedBy, String status, String invoicePrimaryId,
			String deliveryAddress, String deliveryPhoneNo) {
		this.userId = userId;
		this.placementDate = placementDate;
		this.confirmDate = confirmDate;
		this.approvedBy = approvedBy;
		this.status = status;
		this.invoicePrimaryId = invoicePrimaryId;
		this.deliveryAddress = deliveryAddress;
		this.deliveryPhoneNo = deliveryPhoneNo;
	}

	/*public Invoice( int userId, Date placementDate, Date confirmDate, String approvedBy, String status) {

		this.userId = userId;
		this.placementDate = placementDate;
		this.confirmDate = confirmDate;
		this.approvedBy = approvedBy;
		this.status = status;
	}
	
	public Invoice(int invoiceId, int userId, Date placementDate, Date confirmDate, String approvedBy, String status) {

		this.invoiceId = invoiceId;
		this.userId = userId;
		this.placementDate = placementDate;
		this.confirmDate = confirmDate;
		this.approvedBy = approvedBy;
		this.status = status;
	}
	
	
	public Invoice(int invoiceId, int userId, Date placementDate, Date confirmDate, String approvedBy, String status,
			String invoicePrimaryId) {

		this.invoiceId = invoiceId;
		this.userId = userId;
		this.placementDate = placementDate;
		this.confirmDate = confirmDate;
		this.approvedBy = approvedBy;
		this.status = status;
		this.invoicePrimaryId = invoicePrimaryId;
	}
	
	public Invoice(int userId, Date placementDate, Date confirmDate, String approvedBy, String status,
			String invoicePrimaryId) {

		this.userId = userId;
		this.placementDate = placementDate;
		this.confirmDate = confirmDate;
		this.approvedBy = approvedBy;
		this.status = status;
		this.invoicePrimaryId = invoicePrimaryId;
	}*/
	public int getInvoiceId() {
		return invoiceId;
	}
	public void setInvoiceId(int invoiceId) {
		this.invoiceId = invoiceId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public Date getPlacementDate() {
		return placementDate;
	}
	public void setPlacementDate(Date placementDate) {
		this.placementDate = placementDate;
	}
	public Date getConfirmDate() {
		return confirmDate;
	}
	public void setConfirmDate(Date confirmDate) {
		this.confirmDate = confirmDate;
	}
	public String getApprovedBy() {
		return approvedBy;
	}
	public void setApprovedBy(String approvedBy) {
		this.approvedBy = approvedBy;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getInvoicePrimaryId() {
		return invoicePrimaryId;
	}
	public void setInvoicePrimaryId(String invoicePrimaryId) {
		this.invoicePrimaryId = invoicePrimaryId;
	}
	
	public String getDeliveryAddress() {
		return deliveryAddress;
	}
	public void setDeliveryAddress(String deliveryAddress) {
		this.deliveryAddress = deliveryAddress;
	}
	public String getDeliveryPhoneNo() {
		return deliveryPhoneNo;
	}
	public void setDeliveryPhoneNo(String deliveryPhoneNo) {
		this.deliveryPhoneNo = deliveryPhoneNo;
	}

	@Override
	public String toString() {
		return "Invoice [invoiceId=" + invoiceId + ", userId=" + userId
				+ ", placementDate=" + placementDate + ", confirmDate="
				+ confirmDate + ", approvedBy=" + approvedBy + ", status="
				+ status + ", invoicePrimaryId=" + invoicePrimaryId
				+ ", deliveryAddress=" + deliveryAddress + ", deliveryPhoneNo="
				+ deliveryPhoneNo + "]";
	}
	
	
	
}

