#milkshakes
class MilkShake
  attr_reader :base_price, :ingredients
  def initialize
    @base_price = 3
    @ingredients = [ ]    
  end

  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end

  def price_of_milkshake
  #Let's establish what our counter should be before we start adding ingredients into the mix
  total_price_of_milkshake = @base_price
  #Add each ingredients price to our total
  @ingredients.each do |ingredient|
    total_price_of_milkshake += ingredient.price
  end
  #return  our total price to whoever called for it
   total_price_of_milkshake
  end
end

class Ingredient
	attr_reader :name, :price
	def initialize(name, price)
    @name = name
    @price = price
	end
end

class Order
  def initialize
    @milkshakes = []
  end

  def add_milkshake(milkshake)
    @milkshakes.push(milkshake)
  end

  def price_of_order
    #initialize total_price_of_shop1
    total_price_of_order = 0
    #Add each milkshake price to our total
    @milkshakes.each do |milkshake|
      total_price_of_order += milkshake.price_of_milkshake
    end
    total_price_of_order

  end

end

#New Ingredients
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
lychee = Ingredient.new("Lychee", 5)

#New Milkshakes
nizars_milkshake = MilkShake.new
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)

beach_milkshake = MilkShake.new
beach_milkshake.add_ingredient(lychee)
beach_milkshake.add_ingredient(lychee)


#Print price of milkshakes
puts "Nizars milkshake costs #{nizars_milkshake.price_of_milkshake}"
puts "Beach milkshake costs #{beach_milkshake.price_of_milkshake}"


#New Order
customer1 = Order.new
customer1.add_milkshake(nizars_milkshake)
customer1.add_milkshake(beach_milkshake)
customer1.add_milkshake(beach_milkshake)

puts "Customer1 total bill amount is #{customer1.price_of_order}"


