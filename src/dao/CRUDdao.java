package dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import util.HibernateUtil;

public class CRUDdao<T> implements CRUDint<T> {

	private T t;

	public CRUDdao() {

	}

	public CRUDdao(T t) {
		this.t = t;
	}

	public void add(T obj) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(obj);
		session.getTransaction().commit();

	}

	public void delete(int id) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		// @SuppressWarnings("unchecked")
		T p = (T) getObjectById(id);

		if (p != null)
			session.delete(p);
		else
			System.err.println("Object de type " + t.getClass().getName() + " n'a pas êter supprimé !");

		session.getTransaction().commit();

	}

	public T getObjectById(int id) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		T p = null;
		Criteria criteria = session.createCriteria(t.getClass());
		//
		String idClass = t.getClass().getDeclaredFields()[0].getName().toString();
		// System.out.println(idClass);
		criteria.add(Restrictions.eq(idClass, id));

		p = (T) criteria.uniqueResult();

		return p;
	}

	public List<T> getAllObject() {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();

		return session.createCriteria(t.getClass()).list();

	}

	public T getObjectByEmailPassword( String mail, String password)
	 {
		 Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		 session.beginTransaction();
		 T p=null;
		 
		 Criteria criteria = session.createCriteria(t.getClass());
	     criteria.add(Restrictions.eq("mail", mail ));
	     criteria.add(Restrictions.eq("password", password ));
	     
		 p = (T) criteria.uniqueResult();
		 
			    return p;

	}

	public void init() {

		System.out.println("Injection de dépendance a été faite par succès pour la classe : " + t.getClass().getName()
				+ " !!!!!!! ");

	}

	@Override
	public void update(T obj) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.update(obj);
		session.getTransaction().commit();
	}

	public T getT() {
		return t;
	}

	public void setT(T t) {
		this.t = t;
	}

}