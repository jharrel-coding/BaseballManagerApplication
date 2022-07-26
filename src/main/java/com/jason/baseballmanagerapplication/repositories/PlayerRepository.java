package com.jason.baseballmanagerapplication.repositories;

import com.jason.baseballmanagerapplication.models.Player;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PlayerRepository extends CrudRepository<Player, Long> {

    List<Player> findAll();
}
