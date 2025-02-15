extends Node

"""
POPULATION

A pop group is a selected group of people homogeneous regarding every stat related to them.
It's currently made this way in order to optimize as much as possible the data saved.
"""

var _group_id: int # Population Group's id. It MUST NOT BE MODIFIED ONCE STATED FOR AN OBJECT
var _amount: int # Amount of people belonging to said group
var _income: float # Income PER CAPITA of the group
var _consumption: Array # Consumption PER CAPITA of the group

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
