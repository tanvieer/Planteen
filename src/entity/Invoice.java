package entity;

import java.sql.Date;

public class Invoice {
	private int invoiceId ;
	private int userId ;
	private Date placementDate ;
	private Date confirmDate;
	private String approvedBy;
	private String status;
	
	public Invoice() {
		// TODO Auto-generated constructor stub
	}
	public Invoice( int userId, Date placementDate, Date confirmDate, String approvedBy, String status) {

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
	@Override
	public String toString() {
		return "Invoice [invoiceId=" + invoiceId + ", userId=" + userId + ", placementDate=" + placementDate
				+ ", confirmDate=" + confirmDate + ", approvedBy=" + approvedBy + ", status=" + status + "]";
	}
	
	
}

