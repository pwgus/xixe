extends Node

var _type: int
var _demand: int
var _offer: int
var _price: float

func _init(ctype: int = 0, cdemand: int = 0, coffer: int = 0, cprice: float = 0) -> void:
	_type = ctype
	_demand = cdemand
	_offer = coffer
	_price = cprice
