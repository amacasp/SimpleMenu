extends Panel

# class member variables go here, for example:
# var a = 2
# var b = "textvar"


func _button_one_pressed():
	get_tree().quit()
	
func _button_two_pressed():
	 pass
	
func _button_three_pressed():
	get_node("Button3/WindowDialog").show()
	
func _yes_quit():
	get_tree().quit()
	
func _no_quit():
	get_node("Button3/WindowDialog").hide()
	
	
func _ready():
	get_node("Button1/Label1").set_text("Resume")
	get_node("Button2/Label2").set_text("Options")
	get_node("Button3/Label3").set_text("Exit")
	
	get_node("Button1").connect("pressed",self,"_button_one_pressed")
	get_node("Button2").connect("pressed",self,"_button_two_pressed")
	get_node("Button3").connect("pressed",self,"_button_three_pressed")
	
	get_node("Button3/WindowDialog/Confirmation").set_text("Are you sure?")
	get_node("Button3/WindowDialog/Yes").set_text("Yes")
	get_node("Button3/WindowDialog/No").set_text("No")
	
	get_node("Button3/WindowDialog/YesB").connect("pressed",self,"_yes_quit")
	get_node("Button3/WindowDialog/NoB").connect("pressed",self,"_no_quit")
	
	# Called every time the node is added to the scene.
	# Initialization here
	
