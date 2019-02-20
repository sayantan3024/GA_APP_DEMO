# README

Plan_attr_population = Darwinning::Population.new(
  organism: Plan, population_size: 10,
  fitness_goal: 0, generations_limit: 100
)

Plan_attr_population.evolve!
Plan_attr_population.best_member