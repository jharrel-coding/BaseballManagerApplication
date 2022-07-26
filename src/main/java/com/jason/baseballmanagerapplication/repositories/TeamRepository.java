package com.jason.baseballmanagerapplication.repositories;

import com.jason.baseballmanagerapplication.models.Team;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TeamRepository extends CrudRepository<Team, Long> {

    List<Team> findAll();
}
