class Client < Darwinning::Organism
	@name = "Plan_attributes"
	@genes = [
		Darwinning::Gene.new(name: "credit_score", value_range: (0..16)),
		Darwinning::Gene.new(name: "driving_history", value_range: (3..9)),
		Darwinning::Gene.new(name: "driving_area", value_range: (3..9))
	]

	def fitness		
		(genotypes.values.inject { |sum, x| sum + x } - 8).abs #case2
	end
end


# Client_attr_population = Darwinning::Population.new(
#   organism: Client, population_size: 10,
#   fitness_goal: 0, generations_limit: 100
# )

# Client_attr_population.evolve!
# Client_attr_population.best_member


