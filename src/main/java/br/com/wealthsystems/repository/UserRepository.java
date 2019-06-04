package br.com.wealthsystems.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import br.com.wealthsystems.entity.User;
import br.com.wealthsystems.inteface.IUserRepository;

public class UserRepository implements IUserRepository{

	EntityManagerFactory emf;
	EntityManager em;
	
	public UserRepository(){
		emf = Persistence.createEntityManagerFactory("psql");
		em = emf.createEntityManager();
	}
	
	@Override
	public void add(User user) {
		try{
			em.getTransaction().begin();
			em.persist(user);
			em.getTransaction().commit();
		}catch(Throwable throwable){
			em.getTransaction().rollback();
			throw throwable;
		}
		emf.close();
	}

	@Override
	public void remove(User user) {
		try{
			em.getTransaction().begin();
			em.remove(user);			
			em.getTransaction().commit();
		}catch(Throwable throwable){
			em.getTransaction().rollback();
			throw throwable;
		}
		emf.close();	
	}


	@Override
	public void edit(User user) {
		try{
			em.getTransaction().begin();
			em.merge(user);
			em.getTransaction().commit();
		}catch(Throwable throwable){
			em.getTransaction().rollback();
			throw throwable;
		}
		emf.close();
	}

	@Override
	public List<User> list() {
		em.getTransaction().begin();
		Query query = em.createQuery("select user from User user");
		@SuppressWarnings("unchecked")
		List<User> users = query.getResultList();
		em.getTransaction().commit();
		emf.close();
		return users;
	}

}
