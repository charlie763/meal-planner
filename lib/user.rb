class User
  attr_accessor :diet_plan, :calorie_goal
  attr_reader :allergies
  @@allergies = ['Milk', 'Fish,Shellfish', 'Nuts', 'Soybeans', 'Wheat', 'Eggs']
  @@diet_plans = ['Gluten Free', 'Ketogenic', 'Vegetarian', 'Lacto-Vegetarian', 'Ovo-Vegetarian', 'Vegan', 'Pescetarian', 'Paleo', 'Primal', 'Whole30']
  @@all = []
 
 def save
  self.class.all << self
 end

 def initialize
  @allergies = []
  @diet_plan = ""
  save
 end

 def self.all
  @@all
 end 

 def allergies=(allergy)
  @allergies << allergy unless @allergies.include?(allergy)
 end

 def diet_plan=(diet)
  @diet_plan = diet
 end

 def self.allergies
  @@allergies
 end

 def self.diet_plans
  @@diet_plans
 end
end