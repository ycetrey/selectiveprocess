package br.com.wealthsystems.testes;

import br.com.wealthsystems.entity.User;
import br.com.wealthsystems.inteface.IUserRepository;
import br.com.wealthsystems.repository.UserRepository;

public class Teste {
	
	/**
	 * @params args
	 */
	public static void main(String[] args){
		
		IUserRepository userRepository = new UserRepository();
		User user = new User();
		user.setName("Antônio Barbosa Junior");
		user.setEmail("ycetrey@gmail.com");
		user.setPhone("(45) 99989-9336");
		user.setAddress("Rua Carlos Bartolomeu, 993");
		
		userRepository.add(user);
		
	}
}
