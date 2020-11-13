def peopleWalk(peopleArray)
  peopleArray.map do |person|
    if person.hp > 0
      person.walk
    end
  end
end
  
def commonAttack(power_attack, enemy)
  attack = (power_attack * rand).to_i
  enemy.hp -= attack
  p "bang (-#{attack})"
end

# He knows the way
class Mando
  attr_accessor :hp

  def initialize
    @hp = 100
    @power_attack = 10
  end

  def shot(enemies)

    enemies.map do |enemy|
      commonAttack(@power_attack, enemy)
    end

  end

  def walk
    p 'walking'
  end
end

# A cute baby
class Baby
  attr_accessor :hp

  def initialize
    @hp = 50
    @power_attack = 100
  end

  def the_force(enemies)

    enemies.map do |enemy|
      attack = @power_attack * rand
      enemy.hp -= attack
      @hp -= 2
      p "*magic sounds* (-#{attack})"
    end
  end

  def walk
    p 'walking'
  end
end

# Someone evil
class Enemy
  attr_accessor :hp

  def initialize
    @hp = 20
    @power_attack = 1
  end

  def attack(someone)
    commonAttack(@power_attack, someone)
  end

  def walk
    p 'walking'
  end
end

# Runs the simulation
class Main
  def self.run
    mando = Mando.new
    baby = Baby.new
    enemies = [Enemy.new, Enemy.new]

    while enemies.map(&:hp).reduce(0, :+) > 0 || (mando.hp <= 0 || baby.hp <= 0)
      peopleWalk([mando, baby] + enemies)
      mando.shot(enemies)
      if mando.hp < 10
        baby.the_force(enemies)
      end
    end
  end
end

Main.run