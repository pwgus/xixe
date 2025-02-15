extends Node

"""
GLOBAL

"Main" .gd file that has most of the variables needed to be used by other nodes.
"""

var _total_population: int # Total population in the country
var _gdp: float # Gross Domestic Product (duh)
var _growth_rate: float # Rate at which pops do increase (applied to each pop group homogeneously)
var _mortality_rate: float # Rate at which pops do decrease (also applied homogeneously)
var _created_pop_groups: int = 0 # ID counter of the amount of pop groups created

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_total_population = 1000000

# Enum with all the recognized types of factories
enum typeFactory {
	NONE,
	FARM,
	MINE,
	MANUFACTURY,
	SERVICES
}

# Enum with all the recognized types of goods
enum typeGood {
	NONE,
	FARMTHING,
	MINETHING,
	CONSUMERGOODS,
	SERVICES
}

# Getters and setters of the variables
func getTotalPop() -> int:
	return _total_population

func SetTotalPop(npop: int) -> void:
	if (npop >= 0):
		_total_population = npop
	else:
		push_error("Couldn't update total pop. Inserted value is negative!")

func getGdp() -> float:
	return _gdp

func setGdp(ngdp: float) -> void:
	if (ngdp < 0):
		push_warning("GDP has been updated to a negative value. Are you sure you're doing alright?...")
	_gdp = ngdp

func getGrowthRate() -> float:
	return _growth_rate

func getMortalityRate() -> float:
	return _mortality_rate

func getCreatedPopGroups() -> float:
	return _created_pop_groups

# As could be expected, _created_pop_groups must be increased by one each time. Therefore there's no set method.
func increaseCreatedPopGroups() -> void:
	_created_pop_groups += 1
