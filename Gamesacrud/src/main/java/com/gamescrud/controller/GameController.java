package com.gamescrud.controller;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController

public class GameController {
	@GetMapping({"/games","/",""})
	public String getAllGames() {
		return "Getting all Games";
	}
	@GetMapping("/games/id")
	public String getGameById() {
		return "Getting Game by id";
	

	}
	@PostMapping({"/games","/",""})
	public String storeGame() {
		return "Storing Game in server";
	}

	
	@PutMapping("/games/id")
	public String updatetGameById() {
		return "Updating Game by id";
	}
	@DeleteMapping("/games/id")
	public String deleteGameById() {
		return "Deleting Game by id";
	}
}
