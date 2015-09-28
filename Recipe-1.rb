#team name:Group 11
#team members:Vinuthna Basireddy, Laxmi Patlolla
require 'json'
require 'pp'

# class definiton 
class Recipe
	

	file = File.read('./resp.json') #Gets code from the Json file
	@@hash_data = JSON.parse(file)  #Parse the json file and get data into a hash

	attr_accessor :aname, :cuisine, :ingredients, :procedure

	def initialize(aname,cuisine,ingredients,procedure) # default constructor which is called when an object is created for the Recipe class.
		@aname=aname
		@cuisine=cuisine
		@ingredients=ingredients
		@procedure=procedure
	end


#Setter and Getter methods for setting and getting the data  
	def rname
		return @aname
	end

	def setrname
		@@aname = @aname
	end

	def cusine
		return @cuisine
	end

	def setcuisine
		@@cuisine = @cuisine
	end

	def ingredients
		return @ingredients
	end

	def setingredients
		@@ingredients = @ingredients.to_h
	end

	def procedure
		return @procedure
	end

	def setprocedure
		@@procedure = @procedure
	end


# display method to display a recipe set by the test method

	def disp
		puts "#{@aname} belongs to #{@cuisine} and has #{@ingredients}  you can make it by #{@procedure}"
		
	end


# method definitions 

	def how_many_ingredients

		# this function will display number of ingredients involved in the recipe
		puts @ingredients.count
	end

	def has_ingredient(ing)
		#this function will check if the ingredient is available in the given recipe
		@ing=ing
		puts @ingredients.include?(@ing)
	end
	
	def viewRecipe
		#this function will display all the Recipes in the hash
		puts @@hash_data

	end
	

end



