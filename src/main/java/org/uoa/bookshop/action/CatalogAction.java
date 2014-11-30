package org.uoa.bookshop.action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.uoa.bookshop.domain.Catalog;
import org.uoa.bookshop.service.CatalogService;

public class CatalogAction extends ActionSupport {
	private List<Catalog> catalogs;
	private CatalogService catalogService;
	public List<Catalog> getCatalogs() {
		return catalogs;
	}
	public void setCatalogs(List<Catalog> catalogs) {
		this.catalogs = catalogs;
	}
	public CatalogService getCatalogService() {
		return catalogService;
	}
	public void setCatalogService(CatalogService catalogService) {
		this.catalogService = catalogService;
	}
	public String getCatalogName() throws Exception{
		
		List<Catalog> catalogs=catalogService.getCatalog();
		ActionContext actCtx=ActionContext.getContext();
    	Map<String,Object> session=actCtx.getSession();
    	session.put("catalogs", catalogs);
		if(catalogs!=null){
			setCatalogs(catalogs);
			return SUCCESS;
		}
		else return ERROR;
	}

}
