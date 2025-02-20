extends Node

"""
GLOBAL

"Main" .gd file that has most of the variables needed to be used by other nodes.
"""

var _total_population: int = 1000000 # Total population in the country
var _gdp: float # Gross Domestic Product (duh)
var _growth_rate: float # Rate at which pops do increase (applied to each pop group homogeneously)
var _mortality_rate: float # Rate at which pops do decrease (also applied homogeneously)
var _created_pop_groups: int = 1 # ID counter of the amount of pop groups created
var _created_factories: int = 1 # ID Counter of the amount of factories created
var _opened_factories: Array = [] # Array with all opened factories
var _existing_pop_groups: Array = [] # Array with all existing pop groups
var _current_turn: int = 1 # Turn counter (why am I even writing this)
var _pf_associations : Dictionary = {} # Associations of pop groups to factories. Keys are pop groups, values the factories they're associated with (if any).
var _good_array: Array = []

func _ready() -> void:
	# We create a first pop group composed by all the population. They're right now unemployed pops.
	var up: Population = Population.new(_created_pop_groups, 1000000, 0)
	increaseCreatedPopGroups()
	addPopGroup(up)
	

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

# Enum with all the recognized types of pop groups
enum typePopGroup {
	NONE,
	OWNER,
	WORKER,
	HOMEOWNER # To be added in the future
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

func getCreatedPopGroups() -> int:
	return _created_pop_groups

func getCreatedFactories() -> int:
	return _created_factories

func getFactoryList() -> Array:
	return _opened_factories

func addFactory(nf: Factory) -> void:
	_opened_factories.append(nf)

func getPopGroupList() -> Array:
	return _existing_pop_groups

func addPopGroup(npg: Population):
	_existing_pop_groups.append(npg)

# As could be expected, _created_pop_groups must be increased by one each time. Therefore there's no set method.
func increaseCreatedPopGroups() -> void:
	_created_pop_groups += 1

func increaseCreatedFactories() -> void:
	_created_factories += 1

func getFactoryOfPG(pg: Population) -> Array:
	return _pf_associations.get(pg)

func setFactoryOfPG(pg: Population, f: Factory) -> void:
	if (_pf_associations.values().size() == 1):
		push_warning("There's already a factory associated to this pg!")
	else:
		_pf_associations.get_or_add(pg, f)

func deleteFactoryOfPG(pg: Population) -> void:
	if (_pf_associations.values().size() == 0):
		push_warning("There's no factory associated to this pg!")
	else:
		_pf_associations.erase(pg)

"""
NEXT TURN ALGORITHM

For each turn, there's a list of changes in data to do (duh). As for now, these are:
	1. For the unemployed pop groups:
		1.1. Increase population by increasing constant
	2. For each pop group:
		2.1. Calculate consume
	3. For each good:
		3.1. Calculate demand
		3.2. Calculate price
	4. For each factory:
		4.1. Modify pop groups
		4.2. Calculate input and output
		4.3. Calculate income and outcome
		4.4. Calculate dividends
	5. For each good:
		5.1. Calculate offer
		5.2. Calculate price
	6. Increase turn
"""
func nextTurn() -> void:
	var otp: int = _total_population # Old total pop
	_total_population *= (1 + _growth_rate - _mortality_rate)
	_existing_pop_groups[0].setAmount(otp * _growth_rate * _mortality_rate) # All new pops are babies. Therefore, they're unemployed (it doesn't work like that and must be changed in the future).
	
	for g in _good_array:
		for pg in _existing_pop_groups:
			# TODO: Finish this nightmare
			pass
	_current_turn += 1
	
func getCurrentTurn() -> int:
	return _current_turn
