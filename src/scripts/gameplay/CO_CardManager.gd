extends Node

enum CardType {RED, GREEN, BLUE}

export(Array, Resource) var StartDeck

var deck : Array = []
var _next_draw: float
var _current_ind: int

func _ready():
	deck = StartDeck.duplicate()
	_current_ind = -1

func _DrawCard():
	if(_current_ind > 0):
		deck[_current_ind].Exit()
	_current_ind = (_current_ind + 1) % deck.size()
	var _current_Card = deck[_current_ind]
	_next_draw = _current_Card.Duration
	_current_Card.Enter()

func _physics_process(delta):
	if _next_draw > 0:
		_next_draw -= delta
	else:
		_DrawCard()
