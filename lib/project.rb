class Project
  attr_accessor :title
  attr_reader :backers

  def initialize (title)
    @title = title
    @backers = []
  end

  def add_backer (backer)
    backer.add_project(self)  # side effect is that this verifies backer is a Backer so we know our backers array will be valid
    @backers.index(backer) || @backers << backer
  end

end
