#Shopping Cart

require 'date'
require 'pry'

class ShoppingCart
  attr_reader :items
  def initialize
    @items = []
  end

   def add_item(item)
    @items.push(item)
  end

  def checkout
    total_price_of_order = 0.0
    #binding.pry
    #Add each item price to our total
    @items.each do |item|
      total_price_of_order += item.price
    end
    total_price_of_order
  end
end

class Item 
  attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end

  def price
      final_price_item = @price
  end
end

class Houseware < Item
  attr_reader :price
  def price
  	#discount if price is greater than 100
  	if @price > 100
  		final_price_item = @price * 0.95
  	end
  end
end

class Fruit < Item
  attr_reader :price
  def price
  	#discount 10% on weekends
  	if Date.today.wday == 0 || Date.today.wday == 6
  		final_price_item = @price * 0.90
  	else
  		final_price_item = @price
  	end
  end
end

#Adding Items
banana = Fruit.new("Banana", 10)
orange_juice = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
vacuum_cleaner = Houseware.new("Vacuum Cleaner", 150)
anchovies = Item.new("Anchovies", 2)

#Iteration Three
joshs_cart = ShoppingCart.new
joshs_cart.add_item(orange_juice)
joshs_cart.add_item(rice)
joshs_cart.checkout

puts "Josh, Your total today is #{joshs_cart.checkout}. Have a nice day!"


