extends Node

class_name Population

"""
POPULATION

A pop group is a selected group of people homogeneous regarding every stat related to them.
It's currently made this way in order to optimize as much as possible the data saved.
"""

var _group_id: int # Population Group's id. It MUST NOT BE MODIFIED ONCE STATED FOR AN OBJECT
var _type: int # Type of the pop group
var _factory_associated: int # Associated factory's ID. By default it's 0.
var _amount: int # Amount of people belonging to said group
var _income: float # Income PER CAPITA of the group
var _consumption: Dictionary # Consumption PER CAPITA of the group

func _init(cgroup_id: int = Global.getCreatedPopGroups(), ctype: int = 0, cfa: int = 0, camount: int = 0, cincome: float = 0, cconsumption: Dictionary = {}) -> void:
	_group_id = cgroup_id
	_type = ctype
	_amount = camount
	_income = cincome
	_consumption = cconsumption

func getGroupId() -> int:
	return _group_id

func getAmount() -> int:
	return _amount

func getIncome() -> float:
	return _income

func getConsumption() -> Dictionary:
	return _consumption
