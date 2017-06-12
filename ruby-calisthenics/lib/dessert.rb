class Dessert
  attr_accessor :name
  attr_accessor :calories
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def healthy?
    calories < 200 ? true : false
  end
  def delicious?
    ((self.instance_of? JellyBean) && (self.name.include? 'licorice')) ? false : true
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    @flavor = flavor
    @calories = 5
    @name = "#{flavor} jelly bean"
  end
end
