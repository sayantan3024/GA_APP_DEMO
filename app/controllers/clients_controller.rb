class ClientsController < ApplicationController
	def index
		# @p = Darwinning::Population.new(organism: Plan, population_size: 10,
  # 			fitness_goal: 0, generations_limit: 100
		# )
	end

	def get_plan
		@population = Darwinning::Population.new(organism: Plan, population_size: 10,
  			fitness_goal: 0, generations_limit: 100
		)
		@population.evolve!
		@best = @population.best_member
	end
end
