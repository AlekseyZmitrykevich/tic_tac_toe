class Board
  attr_reader :b_opts, :id
  def initialize
    @id=[]
    @b_opts=['1','2','3','4','5','6','7','8','9']
    @board="_#{@b_opts[0]}_|_#{@b_opts[1]}_|_#{@b_opts[2]}_\n_#{@b_opts[3]}_|_#{@b_opts[4]}_|_#{@b_opts[5]}_\n #{@b_opts[06]} | #{@b_opts[7]} | #{@b_opts[8]}"
  end

  def put(player,id)
    if @id.include? id
      puts "NO-NO-NO, wrong move, make another move!"; self.put(player,(gets.chomp))
    else
      @id<<id
      @b_opts[id-1]=player.mark
    end
  end

  def show
    @board="_#{@b_opts[0]}_|_#{@b_opts[1]}_|_#{@b_opts[2]}_\n_#{@b_opts[3]}_|_#{@b_opts[4]}_|_#{@b_opts[5]}_\n #{@b_opts[06]} | #{@b_opts[7]} | #{@b_opts[8]}"
  end

end