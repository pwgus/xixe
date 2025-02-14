extends Node

var _owners: Population 
var _workers: Population
var _type: int
var _income: float
var _outcome: float
var _balance: float
var _dividends: float

func _init(cowners: Population = Population.new(), cworkers: Population = Population.new(), ctype:int = 0, cincome: float = 0, coutcome: float = 0, cbalance: float = 0, cdividends: float = 0) -> void:
	_owners = cowners
	_workers = cworkers
	_type = ctype
	_income = cincome
	_outcome = coutcome
	_balance = cbalance
	_dividends = cdividends

func getOwners() -> Population:
	return _owners

func getWorkers() -> Population:
	return _workers

func getType() -> int:
	return _type
