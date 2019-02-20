class ClientsController < ApplicationController

	
	def index

	end

	def get_plan
		@population = Darwinning::Population.new(organism: Plan, population_size: 10,
  			fitness_goal: 0, generations_limit: 100
		)
		# binding.pry
		@population.evolve!
		@best = @population.best_member
	end	
end
