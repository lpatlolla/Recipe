require './Recipe-1.rb'  # includes the file where Recipe class is written


class Recipes < Recipe  # Inheritance of the Recipe class to Recipes class

	attr_accessor :aname, :cuis, :ings, :proc

	def addRecipe()
		#takes input from the user and adds recipe

		puts "Please input a recipe name "
			aname = gets.chomp
		puts "Please input a Cuisine name "
			cuis = gets.chomp
		puts "please input the ingredients"
			ings = gets.chomp
		puts "Please input the procedure to prepare the recipe"
			proc = gets.chomp
		recpobj = Recipe.new(aname,cuis,ings,proc)
	end

	def deleterecipe(recipename)
		#deletes recipe from the hash
		@@hash_data.delete(recipename)
	end
       

end

#========== Test Methods ==========  
recpobj = Recipe.new('Corn-soup','Indian',['4 pounds Chicken cut up','Baby-corn:5 big','hot-water:2 liters','salt:1 tsp','sugar: as per required'],
		'	Cover the chicken with 3 quarts of water and bring to a boil. 
			Skim, turn down the heat to low, 
			add the salt and saffron and steep until the chicken is tender. 
			Remove the chicken and strain the stock. Take the chicken meat from the bone and return to the stock. Add the corn and bring to a boil.
 			Add the noodles and cook for 15 minutes or until the noodles are tender. Add the parsley, eggs and pepper and serve')
recpobj.how_many_ingredients
recpobj.has_ingredient('Kiken')
recpobj.disp
recpobj.viewRecipe




