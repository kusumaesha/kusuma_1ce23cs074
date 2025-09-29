package com.gamescrud.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gamescrud.model.Game;
import com.gamescrud.repository.GamesRespository;

@Service
public class GameService {
	@Autowired
	private GamesRespository gamesRepository;
	
	public List<Game> getAllGames(){
		List<Game> games = gamesRepository.findAll();
		return games;
	}
	
	
}
