extends Node

var health=100

var current_lvl = 1 setget canvia_nivell
var max_lvl = 0 setget canvia_max_lvl
var nivell_1 = 0 setget canvia_nivell_1
var nivell_2 = 0 setget canvia_nivell_2
var nivell_3 = 0 setget canvia_nivell_3
var nivell_4 = 0 setget canvia_nivell_4
var nivell_5 = 0 setget canvia_nivell_5
var nivell_6 = 0 setget canvia_nivell_6
var nivell_7 = 0 setget canvia_nivell_7
var nivell_8 = 0 setget canvia_nivell_8
var nivell_9 = 0 setget canvia_nivell_9

var document_current_lvl = "user://current_lvl.txt"
var document_max_lvl = "user://max_lvl.txt"
var document_punts_1 = "user://nivell1.txt"
var document_punts_2 = "user://nivell2.txt"
var document_punts_3 = "user://nivell3.txt"
var document_punts_4 = "user://nivell4.txt"
var document_punts_5 = "user://nivell5.txt"
var document_punts_6 = "user://nivell6.txt"
var document_punts_7 = "user://nivell7.txt"
var document_punts_8 = "user://nivell8.txt"
var document_punts_9 = "user://nivell9.txt"


var powerup1 = false
var powerup2 = false
var powerup3 = false

func _init():
	carrega_current_lvl()
	carrega_max_lvl()
	carrega_record_1()
	carrega_record_2()
	carrega_record_3()
	carrega_record_4()
	carrega_record_5()
	carrega_record_6()
	carrega_record_7()
	carrega_record_8()
	carrega_record_9()
	

func _input(event):
	if Input.is_action_pressed("control") and Input.is_action_pressed("r"):
		restart_highscore()

func restart_highscore():
	guarda_current_lvl(1)
	guarda_max_lvl(1)
	guarda_record_1(0)
	guarda_record_2(0)
	guarda_record_3(0)
	guarda_record_4(0)
	guarda_record_5(0)
	guarda_record_6(0)
	guarda_record_7(0)
	guarda_record_8(0)
	guarda_record_9(0)

func canvia_nivell(current_level):
	current_lvl = current_level
	guarda_current_lvl(current_level)

func canvia_max_lvl(nivell_max):
	if nivell_max > max_lvl:
		max_lvl = nivell_max
		guarda_max_lvl(nivell_max)

func canvia_nivell_1(nivell1):
	if nivell1 > nivell_1:
		nivell_1 = nivell1
		guarda_record_1(nivell1)

func canvia_nivell_2(nivell2):
	if nivell2 > nivell_2:
		nivell_2 = nivell2
		guarda_record_2(nivell2)

func canvia_nivell_3(nivell3):
	if nivell3 > nivell_3:
		nivell_3 = nivell3
		guarda_record_3(nivell3)

func canvia_nivell_4(nivell4):
	if nivell4 > nivell_4:
		nivell_4 = nivell4
		guarda_record_4(nivell4)
	
func canvia_nivell_5(nivell5):
	if nivell5 > nivell_5:
		nivell_5 = nivell5
		guarda_record_5(nivell5)

func canvia_nivell_6(nivell6):
	if nivell6 > nivell_6:
		nivell_6 = nivell6
		guarda_record_6(nivell6)

func canvia_nivell_7(nivell7):
	if nivell7 > nivell_7:
		nivell_7 = nivell7
		guarda_record_7(nivell7)

func canvia_nivell_8(nivell8):
	if nivell8 > nivell_8:
		nivell_8 = nivell8
		guarda_record_8(nivell8)

func canvia_nivell_9(nivell9):
	if nivell9 > nivell_9:
		nivell_9 = nivell9
		guarda_record_9(nivell9)

func carrega_current_lvl():
	var f = File.new()
	if f.file_exists(document_current_lvl):
		f.open(document_current_lvl, File.READ)
		var content = f.get_as_text()
		current_lvl = int(content)
		f.close()

func guarda_current_lvl(nivell):
	var f = File.new()
	f.open(document_current_lvl, File.WRITE)
	f.store_string(str(nivell))
	f.close()

func carrega_max_lvl():
	var f = File.new()
	if f.file_exists(document_max_lvl):
		f.open(document_max_lvl, File.READ)
		var content = f.get_as_text()
		max_lvl = int(content)
		f.close()

func guarda_max_lvl(nivell):
	var f = File.new()
	f.open(document_max_lvl, File.WRITE)
	f.store_string(str(nivell))
	f.close()



func carrega_record_1():
	var f = File.new()
	if f.file_exists(document_punts_1):
		f.open(document_punts_1, File.READ)
		var content = f.get_as_text()
		nivell_1 = int(content)
		f.close()

func guarda_record_1(highscore):
	var f = File.new()
	f.open(document_punts_1, File.WRITE)
	f.store_string(str(highscore))
	f.close()

func carrega_record_2():
	var f = File.new()
	if f.file_exists(document_punts_2):
		f.open(document_punts_2, File.READ)
		var content = f.get_as_text()
		nivell_2 = int(content)
		f.close()

func guarda_record_2(highscore):
	var f = File.new()
	f.open(document_punts_2, File.WRITE)
	f.store_string(str(highscore))
	f.close()

func carrega_record_3():
	var f = File.new()
	if f.file_exists(document_punts_3):
		f.open(document_punts_3, File.READ)
		var content = f.get_as_text()
		var nivell_3 = int(content)
		f.close()

func guarda_record_3(highscore):
	var f = File.new()
	f.open(document_punts_3, File.WRITE)
	f.store_string(str(highscore))
	f.close()

func carrega_record_4():
	var f = File.new()
	if f.file_exists(document_punts_4):
		f.open(document_punts_4, File.READ)
		var content = f.get_as_text()
		var nivell_4 = int(content)
		f.close()

func guarda_record_4(highscore):
	var f = File.new()
	f.open(document_punts_4, File.WRITE)
	f.store_string(str(highscore))
	f.close()

func carrega_record_5():
	var f = File.new()
	if f.file_exists(document_punts_5):
		f.open(document_punts_5, File.READ)
		var content = f.get_as_text()
		var nivell_5 = int(content)
		f.close()

func guarda_record_5(highscore):
	var f = File.new()
	f.open(document_punts_5, File.WRITE)
	f.store_string(str(highscore))
	f.close()

func carrega_record_6():
	var f = File.new()
	if f.file_exists(document_punts_6):
		f.open(document_punts_6, File.READ)
		var content = f.get_as_text()
		var nivell_6 = int(content)
		f.close()

func guarda_record_6(highscore):
	var f = File.new()
	f.open(document_punts_6, File.WRITE)
	f.store_string(str(highscore))
	f.close()

func carrega_record_7():
	var f = File.new()
	if f.file_exists(document_punts_7):
		f.open(document_punts_7, File.READ)
		var content = f.get_as_text()
		var nivell_7 = int(content)
		f.close()

func guarda_record_7(highscore):
	var f = File.new()
	f.open(document_punts_7, File.WRITE)
	f.store_string(str(highscore))
	f.close()

func carrega_record_8():
	var f = File.new()
	if f.file_exists(document_punts_8):
		f.open(document_punts_8, File.READ)
		var content = f.get_as_text()
		var nivell_8 = int(content)
		f.close()

func guarda_record_8(highscore):
	var f = File.new()
	f.open(document_punts_8, File.WRITE)
	f.store_string(str(highscore))
	f.close()

func carrega_record_9():
	var f = File.new()
	if f.file_exists(document_punts_9):
		f.open(document_punts_9, File.READ)
		var content = f.get_as_text()
		var nivell_9 = int(content)
		f.close()

func guarda_record_9(highscore):
	var f = File.new()
	f.open(document_punts_9, File.WRITE)
	f.store_string(str(highscore))
	f.close()
