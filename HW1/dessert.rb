#Danny Yu, dyu6@binghamton.edu

class Dessert
  attr_accessor :name, :calories
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def healthy?
    return (calories < 200)
  end
  def delicious?
    return (self.kind_of?(Dessert))
  end
end

class JellyBean < Dessert
  attr_accessor :flavor
  def initialize(flavor)
    @flavor = flavor
    @name = "#{@flavor} jelly bean"
    @calories = 5
  end

  def delicious?
    return false if @flavor.downcase == "licorice"
    super
  end
end
