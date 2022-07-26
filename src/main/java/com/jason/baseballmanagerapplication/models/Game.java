package com.jason.baseballmanagerapplication.models;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "games")
public class Game {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date gameDate;
    private String homeTeam;
    private String awayTeam;
    private String homePitcher;
    private String awayPitcher;
    private String ballpark;
    private String homeHitter1;
    private String homeHitter2;
    private String homeHitter3;
    private String homeHitter4;
    private String homeHitter5;
    private String homeHitter6;
    private String homeHitter7;
    private String homeHitter8;
    private String homeHitter9;
    private String awayHitter1;
    private String awayHitter2;
    private String awayHitter3;
    private String awayHitter4;
    private String awayHitter5;
    private String awayHitter6;
    private String awayHitter7;
    private String awayHitter8;
    private String awayHitter9;

    @Column(updatable = false)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createdAt;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date updatedAt;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="team_id")
    private Team team;

    public Game() {}

    public Game(Date gameDate, String homeTeam, String awayTeam, String homePitcher, String awayPitcher, String ballpark, String homeHitter1, String homeHitter2, String homeHitter3, String homeHitter4, String homeHitter5, String homeHitter6, String homeHitter7, String homeHitter8, String homeHitter9, String awayHitter1, String awayHitter2, String awayHitter3, String awayHitter4, String awayHitter5, String awayHitter6, String awayHitter7, String awayHitter8, String awayHitter9, Team team) {
        this.gameDate = gameDate;
        this.homeTeam = homeTeam;
        this.awayTeam = awayTeam;
        this.homePitcher = homePitcher;
        this.awayPitcher = awayPitcher;
        this.ballpark = ballpark;
        this.homeHitter1 = homeHitter1;
        this.homeHitter2 = homeHitter2;
        this.homeHitter3 = homeHitter3;
        this.homeHitter4 = homeHitter4;
        this.homeHitter5 = homeHitter5;
        this.homeHitter6 = homeHitter6;
        this.homeHitter7 = homeHitter7;
        this.homeHitter8 = homeHitter8;
        this.homeHitter9 = homeHitter9;
        this.awayHitter1 = awayHitter1;
        this.awayHitter2 = awayHitter2;
        this.awayHitter3 = awayHitter3;
        this.awayHitter4 = awayHitter4;
        this.awayHitter5 = awayHitter5;
        this.awayHitter6 = awayHitter6;
        this.awayHitter7 = awayHitter7;
        this.awayHitter8 = awayHitter8;
        this.awayHitter9 = awayHitter9;
        this.team = team;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getGameDate() {
        return gameDate;
    }

    public void setGameDate(Date gameDate) {
        this.gameDate = gameDate;
    }

    public String getHomeTeam() {
        return homeTeam;
    }

    public void setHomeTeam(String homeTeam) {
        this.homeTeam = homeTeam;
    }

    public String getAwayTeam() {
        return awayTeam;
    }

    public void setAwayTeam(String awayTeam) {
        this.awayTeam = awayTeam;
    }

    public String getHomePitcher() {
        return homePitcher;
    }

    public void setHomePitcher(String homePitcher) {
        this.homePitcher = homePitcher;
    }

    public String getAwayPitcher() {
        return awayPitcher;
    }

    public void setAwayPitcher(String awayPitcher) {
        this.awayPitcher = awayPitcher;
    }

    public String getBallpark() {
        return ballpark;
    }

    public void setBallpark(String ballpark) {
        this.ballpark = ballpark;
    }

    public String getHomeHitter1() {
        return homeHitter1;
    }

    public void setHomeHitter1(String homeHitter1) {
        this.homeHitter1 = homeHitter1;
    }

    public String getHomeHitter2() {
        return homeHitter2;
    }

    public void setHomeHitter2(String homeHitter2) {
        this.homeHitter2 = homeHitter2;
    }

    public String getHomeHitter3() {
        return homeHitter3;
    }

    public void setHomeHitter3(String homeHitter3) {
        this.homeHitter3 = homeHitter3;
    }

    public String getHomeHitter4() {
        return homeHitter4;
    }

    public void setHomeHitter4(String homeHitter4) {
        this.homeHitter4 = homeHitter4;
    }

    public String getHomeHitter5() {
        return homeHitter5;
    }

    public void setHomeHitter5(String homeHitter5) {
        this.homeHitter5 = homeHitter5;
    }

    public String getHomeHitter6() {
        return homeHitter6;
    }

    public void setHomeHitter6(String homeHitter6) {
        this.homeHitter6 = homeHitter6;
    }

    public String getHomeHitter7() {
        return homeHitter7;
    }

    public void setHomeHitter7(String homeHitter7) {
        this.homeHitter7 = homeHitter7;
    }

    public String getHomeHitter8() {
        return homeHitter8;
    }

    public void setHomeHitter8(String homeHitter8) {
        this.homeHitter8 = homeHitter8;
    }

    public String getHomeHitter9() {
        return homeHitter9;
    }

    public void setHomeHitter9(String homeHitter9) {
        this.homeHitter9 = homeHitter9;
    }

    public String getAwayHitter1() {
        return awayHitter1;
    }

    public void setAwayHitter1(String awayHitter1) {
        this.awayHitter1 = awayHitter1;
    }

    public String getAwayHitter2() {
        return awayHitter2;
    }

    public void setAwayHitter2(String awayHitter2) {
        this.awayHitter2 = awayHitter2;
    }

    public String getAwayHitter3() {
        return awayHitter3;
    }

    public void setAwayHitter3(String awayHitter3) {
        this.awayHitter3 = awayHitter3;
    }

    public String getAwayHitter4() {
        return awayHitter4;
    }

    public void setAwayHitter4(String awayHitter4) {
        this.awayHitter4 = awayHitter4;
    }

    public String getAwayHitter5() {
        return awayHitter5;
    }

    public void setAwayHitter5(String awayHitter5) {
        this.awayHitter5 = awayHitter5;
    }

    public String getAwayHitter6() {
        return awayHitter6;
    }

    public void setAwayHitter6(String awayHitter6) {
        this.awayHitter6 = awayHitter6;
    }

    public String getAwayHitter7() {
        return awayHitter7;
    }

    public void setAwayHitter7(String awayHitter7) {
        this.awayHitter7 = awayHitter7;
    }

    public String getAwayHitter8() {
        return awayHitter8;
    }

    public void setAwayHitter8(String awayHitter8) {
        this.awayHitter8 = awayHitter8;
    }

    public String getAwayHitter9() {
        return awayHitter9;
    }

    public void setAwayHitter9(String awayHitter9) {
        this.awayHitter9 = awayHitter9;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Date getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }

    public Team getTeam() {
        return team;
    }

    public void setTeam(Team team) {
        this.team = team;
    }

    @PrePersist
    protected void onCreate() {
        this.createdAt = new Date();
    }

    @PreUpdate
    protected void onUpdate() {
        this.updatedAt = new Date();
    }

}
