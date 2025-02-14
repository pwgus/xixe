extends Node

var _total_population: int
var _gdp: float
var _growth_rate: float
var _mortality_rate: float
var _created_pop_groups: int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_total_population = 1000000

# Enum with all the recognized types of factory
enum typeFactory {
	NONE,
	FARM,
	MINE,
	MANUFACTURY,
	SERVICES
}

# Getters and setters of the variables

func getTotalPop() -> int:
	return _total_population

func SetTotalPop(npop: int) -> void:
	if (npop >= 0):
		_total_population = npop
	else:
		print("Couldn't update total pop. Inserted value is negative!")

func getGdp() -> float:
	return _gdp

func setGdp(ngdp: float) -> void:
	if (ngdp < 0):
		print("GDP has been updated to a negative value. Are you sure you're doing alright?...")
	_gdp = ngdp

func getGrowthRate() -> float:
	return _growth_rate

func getMortalityRate() -> float:
	return _mortality_rate

func getCreatedPopGroups() -> float:
	return _created_pop_groups
