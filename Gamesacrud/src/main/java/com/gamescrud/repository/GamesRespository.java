package com.gamescrud.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gamescrud.model.Game;

public interface GamesRespository  extends JpaRepository<Game, Long>{

}
