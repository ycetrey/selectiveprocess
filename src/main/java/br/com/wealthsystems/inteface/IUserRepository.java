package br.com.wealthsystems.inteface;

import java.util.List;

import br.com.wealthsystems.entity.User;

public interface IUserRepository {
	
	public void add(User user);
	
	public void remove(User user);
	
	public List<User> list();
		
	public void edit(User user);
	
}
