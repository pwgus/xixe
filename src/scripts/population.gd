extends Node

var _group_id: int
var _amount: int
var _income: float
var _consumption: Array

func _init(cgroup_id: int = Global.getCreatedPopGroups(), camount: int = 0, cincome: int = 0, cconsumption: Array = []) -> void:
	_group_id = cgroup_id
	_amount = camount
	_income = cincome
	_consumption = cconsumption

func getGroupId() -> int:
	return _group_id

func getAmount() -> int:
	return _amount

func getIncome() -> float:
	return _income

func getConsumption() -> Array:
	return _consumption
