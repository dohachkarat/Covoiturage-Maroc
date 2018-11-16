package services;

import java.util.List;

import dao.*;


public class CRUDService<T> implements CRUDInterface<T> {
	
	private dao.CRUDdao<T> dao ;
	
	public CRUDService() {
		// TODO Auto-generated constructor stub
	}
	/*
	public CRUDService(T obj) {
		this.dao = new CRUDdao<T>(obj);
	}
	*/
	public dao.CRUDdao<T> getDao() {
		return dao;
	}

	public void setDao(dao.CRUDdao dao) {
		this.dao = dao;
	}

	@Override
	public void add(T p) {
		dao.add(p);
		
	}

	@Override
	public void delete(int id) {
		dao.delete(id);
		
	}

	@Override
	public T getObjectById(int id) {
		// TODO Auto-generated method stub
		return dao.getObjectById(id);
	}

	@Override
	public List<T> getAllObject() {
		// TODO Auto-generated method stub
		return dao.getAllObject();
	}

	@Override
	public void update(T obj) {
		// TODO Auto-generated method stub
		dao.update(obj);
	}
	
	@Override
	public T getObjectByEmailPassword(String mail, String password) {
		// TODO Auto-generated method stub
		return dao.getObjectByEmailPassword(mail, password);
	}
	
	

	
	
	
		
}
