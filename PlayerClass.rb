class PlayerClass
  attr_accessor :lives
  attr_reader :name
  def initialize(name, lives)
    @name = name
    @lives = 3
  end
end