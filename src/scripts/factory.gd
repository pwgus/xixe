extends Node

class_name Factory

"""
FACTORY

A factory is anything that has an input of goods and output of goods.
For now there are only 4 proper types, 5 counting the default NONE type.
Inputs and outputs are directly related to the amount of workers working in it and its type.
"""

var _owners: Population # Pop group owning this factory
var _workers: Population # Pop group working for this factory
var _factory_id: int # Factory's ID. 0 is NOT a factory but id for the unemployed.
var _max_workers: int # How big can be the pop group associated to this factory's workers
var _type: int # Type of factory
var _income: float # Financial income of the factory
var _outcome: float # Financial outcome of the factory
var _balance: float # Final balance of the factory
var _dividends: float # Dividends managed
var _input: Dictionary # Amount of each good needed
var _output: Dictionary # Amount of each good produced

"""
Whenever a factory is created, the code should follow the following instructions:
	1. Assign factory id
	2. Increase factory id counter
	3. Assign variables
	4. Add factory to Global._created_factories array
"""

func _init(cowners: Population = null, cworkers: Population = null, cmax_workers: int = 0, ctype:int = 0, cincome: float = 0, coutcome: float = 0, cbalance: float = 0, cdividends: float = 0, cinput: Dictionary = {}, coutput: Dictionary = {}) -> void:
	if cowners == null:
		cowners = Population.new()
	_owners = cowners
	if cworkers == null:
		cworkers = Population.new()
	_workers = cworkers
	_factory_id = Global.getCreatedFactories()
	Global.increaseCreatedFactories()
	_max_workers = cmax_workers
	_type = ctype
	_income = cincome
	_outcome = coutcome
	_balance = cbalance
	_dividends = cdividends
	_input = cinput
	_output = coutput

func getOwners() -> Population:
	return _owners

func setOwners(cowners: Population) -> void:
	_owners = cowners

func getWorkers() -> Population:
	return _workers

func setWorkers(cworkers: Population) -> void:
	_workers = cworkers

func getType() -> int:
	return _type

func setType(ctype: int) -> void:
	_type = ctype

func getIncome() -> float:
	return _income

func getOutcome() -> float:
	return _outcome

func getBalance() -> float:
	return _balance

func getDividends() -> float:
	return _dividends

func getInput() -> Dictionary:
	return _input

func getOutput() -> Dictionary:
	return _output

func getFactoryId() -> int:
	return _factory_id

func getMaxWorkers() -> int:
	return _max_workers
