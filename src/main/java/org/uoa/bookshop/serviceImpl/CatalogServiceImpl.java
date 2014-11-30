package org.uoa.bookshop.serviceImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.uoa.bookshop.domain.Catalog;
import org.uoa.bookshop.service.CatalogService;


public class CatalogServiceImpl implements CatalogService{
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public List<Catalog> getCatalog(){
		Session s=sessionFactory.openSession();
		String hql="from Catalog catalog";
		List<Catalog> catalogs=(List<Catalog>)s.createQuery(hql).list();
		return catalogs;
	    
	}

}
