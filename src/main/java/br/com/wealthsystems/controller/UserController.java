package br.com.wealthsystems.controller;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.wealthsystems.entity.User;
import br.com.wealthsystems.inteface.IUserRepository;
import br.com.wealthsystems.repository.UserRepository;

@Controller
public class UserController {

	private final Result result;
	
	/**
	 * @deprecated CDI eyes only
	 */
	protected UserController() {
		this(null);
	}
	
	@Inject
	public UserController(Result result) {
		this.result = result;
	}
	
	@Path("/users/")
	public void index(){
		
		List<User> users = new UserRepository().list();
		result.include("users", users);
		
	}
	
	@Post("/users/add/")
	public void add(User user){
		IUserRepository userRepository = new UserRepository();
		userRepository.add(user);
	}
	
	@Get("/users/add/")
	public void add(){
		
	}
	
	@Path("/users/edit/{id}")
	public void edit(Integer id){
		
	}
			
}
