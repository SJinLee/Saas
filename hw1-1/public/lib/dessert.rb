class Dessert
  def initialize(name, calories)
    # your code here
    $name = name
    $calories = calories.round
  end
  def name
    $name
  end
  def name=(name)
    $name = name
  end
  def calories
    $calories
  end
  def calories=(calories)
    $calories = calories
  end
  def healthy?
    # your code here
    $calories < 200
  end
  def delicious?
    # your code here
    true
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    # your code here
    $calories = 5
    $name = flavor + ' jelly bean'
  end
  def flavor
    $name.split[0]
  end
  def flavor=(flavor)
    newname = flavor
    $name.split[1..-1].each do
      |str|
      newname += ' ' + str
    end
  end
  def delicious?
    $name.split[0] != 'licorice'
  end
end
