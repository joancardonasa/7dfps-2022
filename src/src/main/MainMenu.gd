# Author Kamyab Nazari - 2021

extends Control

# MainMenu of the Game
onready var _transition = $SceneTransition;
onready var creditsPanel = $CreditsPanel;

func ready():
    _transition.fade_out()

func _on_PlayButton_pressed():
    var a_player = _transition.fade_in()
    yield(a_player, "animation_finished")
    SceneManager.goto_scene("res://src/main/Tutorial.tscn")

func _on_ExitButton_pressed():
    get_tree().quit()

func _on_CreditsButton_pressed():
    creditsPanel.visible = true;

func _on_CloseButton_pressed():
    creditsPanel.visible = false;
