package voice.com.util;



import java.util.ArrayList;
import java.util.List;

public class PaginationSupport<T> {
    /**
     * 分页支持类
     */
	private int pageSize=0;//每页多少条
	private int currPageNo=1;//第几页
	private int totalPageCount=0;//总页
	private int totalCount;//总条数
	//用的是泛型集合
	private List<T> items=new ArrayList<T>();
	//用的是泛型集合
	private List<T> c=new ArrayList<T>();
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getCurrPageNo() {
		return currPageNo;
	}
	public void setCurrPageNo(int currPageNo) {
		this.currPageNo = currPageNo;
	}
	public int getTotalPageCount(){	
		return totalPageCount;
	}
	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount){		
		this.totalCount = totalCount;
	}
	public List<T> getItems() {		
		return items;		
	}
	public void setItems(List<T> items) {
		this.items = items;
	} 
}
