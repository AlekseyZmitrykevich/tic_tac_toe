class Game
  def initialize(board,players)
    @players=players
    @over=false
    @board=board
  end

  def winning
    w_s=[[0,1,2],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6],[3,4,5]]
    if @board.id.length>=9
      @over=true
    else
      (0..7).each do |i|
        @players.each do |player|
          if player.mark==@board.b_opts[w_s[i][0]] and player.mark==@board.b_opts[w_s[i][1]] and player.mark==@board.b_opts[w_s[i][2]]
            @over=true
            player.winner!
            break
          end
        end
      end
    end

  end

  def over?
    self.winning
    @over
  end

  def winner
    @players.each {|player| return player.name if player.winner? == true}
    'nobody'
  end
end