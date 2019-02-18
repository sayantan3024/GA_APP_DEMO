class Client < Darwinning::Organism
	@name = "Plan_attributes"
	@genes = [
		Darwinning::Gene.new(name: "user_age", value_range: (1..4)),
		Darwinning::Gene.new(name: "driving_exp", value_range: (1..4)),
		Darwinning::Gene.new(name: "area", value_range: (1..4)),
		Darwinning::Gene.new(name: "credit_score", value_range: (1..5))
	]

	def fitness		
		(genotypes.values.inject { |sum, x| sum + x } - 8).abs #case2
	end
end


# User age = 32   		>> 2% >> 2
# Driving exp = 7 		>> 3% >> 2
# Area = City    		>> 2% >> 2
# Cerdit score = 420	>> 1% >> 3
# Car  = Yaris          >> Mid


# User age = 28   		>> 2% >> 2
# Driving exp = 15 		>> 2% >> 4
# Area = Offroad    	>> 3% >> 1
# Cerdit score = 800	>> 1% >> 1
# Car  = Yaris          >> Mid


# Client_attr_population = Darwinning::Population.new(
#   organism: Client, population_size: 10,
#   fitness_goal: 0, generations_limit: 100
# )

# Client_attr_population.evolve!
# Client_attr_population.best_member


