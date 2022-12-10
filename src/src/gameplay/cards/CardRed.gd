extends Resource
class_name CardRed

export(float) var Duration = 5.0
export(Color, RGB) var col = Color(1, 0, 0)
export(bool) var reveal_enemies = true

var _cardManager

func set_card_manager(cardManager):
    _cardManager = cardManager

func Enter():
    _cardManager.emit_signal("Player_AllowShoot", true)
    _cardManager.emit_signal("Card_Color", col)
    _cardManager.emit_signal("Enemy_Reveal", true)

func Exit():
    _cardManager.emit_signal("Player_AllowShoot", false)
    _cardManager.emit_signal("Enemy_Reveal", false)