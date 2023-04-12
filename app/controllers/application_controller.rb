class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================
  def homepage
    
  end
 
  def play_rock
    # redirect_to("https://www.wikipedia.org")
    # render({:plain => "Please work. Please."})
    @comp_move = ["rock", "paper", "scissors"].sample
    if comp_move == "rock"
      @outcome = "tied"
    elsif comp_move == "paper"
      @outcome = "lost"
    else
      @outcome = "won"
    end

    render({:template => "game_templates/user_rock.html.erb"})
  end

  def play_paper
    render({:template => "game_templates/user_paper.html.erb"})
  end

  def play_scissors
    render({:template => "game_templates/user_scissors.html.erb"})
  end

end
