package com.jason.baseballmanagerapplication.services;

import com.jason.baseballmanagerapplication.models.Player;
import com.jason.baseballmanagerapplication.models.Team;
import com.jason.baseballmanagerapplication.repositories.TeamRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@SuppressWarnings("SpringJavaAutowiredFieldsWarningInspection")
@Service
public class TeamService {

    @Autowired
    private TeamRepository teamRepository;

    public List<Team> getAll(){
        return teamRepository.findAll();
    }

    public Team create(Team newTeam) {
        return teamRepository.save(newTeam);
    }

    public Team getById(Long id) {

        return teamRepository.findById(id).orElse(null);
    }
    public Team update(Team editTeam) {
        return teamRepository.save(editTeam);
    }
    public void deleteById(Long id) {
        teamRepository.deleteById(id);
    }

//    public void assignTrainer(Dog dog, Trainer trainer) {
//        List<Trainer> trainers=dog.getTrainers();
//        trainers.add(trainer);
//        dogRepository.save(dog);
//    }
}