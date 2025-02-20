extends Node

class_name Good

"""
GOOD

A good is anything that has a value and can be traded.
Currently there are 4 types, 5 counting the default NONE type.
"""

var _type: int # Type of the good
var _demand: int # National demand of the good
var _offer: int # National offer of the good
var _price: float # National price of the good

func _init(ctype: int = 0, cdemand: int = 0, coffer: int = 0, cprice: float = 0) -> void:
	_type = ctype
	_demand = cdemand
	_offer = coffer
	_price = cprice

func getType() -> int:
	return _type

func setType(t: int) -> void:
	if (t not in Global.typeGood):
		push_warning("There's no such type of good")
	elif (_type != 0):
		push_warning("This good already has a type that's not NONE!")
	else:
		_type = t

func getDemand() -> int:
	return _demand

func setDemand(nd: int) -> void:
	if (nd < 0):
		push_warning("Demand is below zero?? HOW DID YOU DO THAT??!!")
	else:
		_demand = nd

func getOffer() -> int:
	return _offer

func getPrice() -> float:
	return _price
