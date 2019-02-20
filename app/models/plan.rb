class Plan < Darwinning::Organism
	@name = "Plan_attributes"
	@genes = [
		Darwinning::Gene.new(name: "vehicle_type", value_range: (1..3)),
		Darwinning::Gene.new(name: "24_x_7_roadside_assistance", value_range: (0..1)),
		Darwinning::Gene.new(name: "flexible_terms", value_range: (0..1)),
		Darwinning::Gene.new(name: "plan_transferable", value_range: (0..1)),
		Darwinning::Gene.new(name: "total_loss_protection", value_range: (0..1)),
		Darwinning::Gene.new(name: "routine_maintenence", value_range: (0..1))		
	]

	def fitness		
		(genotypes.values.inject { |sum, x| sum + x } - 6).abs 
	end
end
