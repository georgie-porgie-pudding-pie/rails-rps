class PlayController < ApplicationController
  def rock
    @play = "rock"
    @random_move = ["rock","paper","scissors"].sample
    if @random_move == "rock"
      @result = "tied"
    elsif @random_move == "paper"
      @result = "lost"
    else
      @result = "won"
    end
    render({ :template => "game_templates/hand"})
  end 

  def paper
    @play = "paper"
    @random_move = ["rock","paper","scissors"].sample
    if @random_move == "rock"
      @result = "won"
    elsif @random_move == "paper"
      @result = "tied"
    else
      @result = "lost"
    end
    render({ :template => "game_templates/hand"})
  end 

  def scissors
    @play = "scisssors"
    @random_move = ["rock","paper","scissors"].sample
    if @random_move == "rock"
      @result = "lost"
    elsif @random_move == "paper"
      @result = "won"
    else
      @result = "tied"
    end
    render({ :template => "game_templates/hand"})
  end 

  def home
    render({ :template => "game_templates/home"})
  end 
end 
