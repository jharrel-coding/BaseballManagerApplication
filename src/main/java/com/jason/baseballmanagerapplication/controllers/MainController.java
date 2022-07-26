package com.jason.baseballmanagerapplication.controllers;

import com.jason.baseballmanagerapplication.models.Player;
import com.jason.baseballmanagerapplication.models.Team;
import com.jason.baseballmanagerapplication.services.PlayerService;
import com.jason.baseballmanagerapplication.services.TeamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@SuppressWarnings("SpringJavaAutowiredFieldsWarningInspection")
@Controller
public class MainController {

    @Autowired
    private PlayerService playerService;
    @Autowired
    private TeamService teamService;
//    @Autowired
//    private GameService gameService;


    @GetMapping("/")
    public String players(Model model) {
        model.addAttribute("allPlayers", playerService.getAll());
        return "players.jsp";
    }
    @GetMapping("/players/new")
    public String newPlayer(@ModelAttribute("newPlayer") Player newPlayer, Model model) {
        model.addAttribute("allTeams", teamService.getAll());

        return "newPlayer.jsp";
    }
    @PostMapping("/players/create")
    public String createPlayer(@Valid @ModelAttribute("newPlayer") Player newPlayer, BindingResult result) {

        if(result.hasErrors()) {
            return "newPlayer.jsp";
        }

        playerService.create(newPlayer);


        return "redirect:/";
    }

    // rendering the update page
    @GetMapping("/players/{id}/edit")
    public String editPlayer(@PathVariable Long id, @ModelAttribute("editPlayer") Player editPlayer, Model model) {
        model.addAttribute("player", playerService.getById(id));


        return "editPlayer.jsp";
    }
    @PutMapping("/players/{id}/update")
    public String updatePlayer(@Valid @ModelAttribute("editPlayer")Player editPlayer, BindingResult result, Model model) {

        if(result.hasErrors()) {
            model.addAttribute(editPlayer);
            return "editPlayer.jsp";
        }
        playerService.update(editPlayer);
        return "redirect:/";

    }

    @DeleteMapping("/players/{id}/destroy")
    public String destroyPlayer(@PathVariable Long id) {

        playerService.deleteById(id);

        return "redirect:/";
    }

    //	Method updated to get all the trainers from DB and show it on profile page
//    @GetMapping("/players/{id}")
//    public String profile(@PathVariable Long id, Model model) {
//        model.addAttribute("player", playerService.getById(id));
////		model.addAttribute("allTrainers", trainerService.getAll());
//
//        model.addAttribute("allTeams", teamService.getAll(playerService.getById(id)));
//
//        return "profile.jsp";
//
//    }

//	Assign Trainer

//    @PostMapping("/assign/{id}")
//    public String assign(@PathVariable Long id, @RequestParam Long teamId) {
//        Player player=playerService.getById(id);
//        Team team=teamService.getById(teamId);
//        playerService.assignTeam(Team, team);
//        return "redirect:/players/{id}";
//    }

}