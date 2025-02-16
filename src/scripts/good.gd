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

func getDemand() -> int:
	return _demand

func getOffer() -> int:
	return _offer

func getPrice() -> float:
	return _price
