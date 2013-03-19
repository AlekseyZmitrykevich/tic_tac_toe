class Player
  attr_reader :name, :mark
  def initialize(name,mark)
    @name=name
    @mark=mark
    @winner=false
  end

  def winner!
    @winner=true
  end

  def winner?
    @winner
  end

end