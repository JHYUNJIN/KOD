package model.dto;

public class ProductDTO {
	private int productID;
	private int productCnt;
	private int productStock;
	private int productPrice;
	private String productName;
	private String productBrand;
	private String productCategory;
	private String productInfo;
	private String productImg;
	private String searchCondition;
	
	private boolean isWished;
	private int max;
	private int min;
	
	public boolean isWished() {
		return isWished;
	}
	public void setWished(boolean isWished) {
		this.isWished = isWished;
	}
	public int getMax() {
		return max;
	}
	public void setMax(int max) {
		this.max = max;
	}
	public int getMin() {
		return min;
	}
	public void setMin(int min) {
		this.min = min;
	}
	private String[] categoryList;
	
	public String[] getCategoryList() {
		return categoryList;
	}
	public void setCategoryList(String[] categoryList) {
		this.categoryList = categoryList;
	}
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public int getProductCnt() {
		return productCnt;
	}
	public void setProductCnt(int productCnt) {
		this.productCnt = productCnt;
	}
	public int getProductStock() {
		return productStock;
	}
	public void setProductStock(int productStock) {
		this.productStock = productStock;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductBrand() {
		return productBrand;
	}
	public void setProductBrand(String productBrand) {
		this.productBrand = productBrand;
	}
	public String getProductCategory() {
		return productCategory;
	}
	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}
	public String getProductInfo() {
		return productInfo;
	}
	public void setProductInfo(String productInfo) {
		this.productInfo = productInfo;
	}
	public String getProductImg() {
		return productImg;
	}
	public void setProductImg(String productImg) {
		this.productImg = productImg;
	}
	public String getSearchCondition() {
		return searchCondition;
	}
	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}
	@Override
	public String toString() {
		return "ProductDTO [productID=" + productID + ", productStock=" + productStock + ", productPrice=" + productPrice
				+ ", productName=" + productName + ", productBrand=" + productBrand + ", productCategory="
				+ productCategory + ", productInfo=" + productInfo + ", productImg=" + productImg + "]";
	}
	
	
	
	
}
