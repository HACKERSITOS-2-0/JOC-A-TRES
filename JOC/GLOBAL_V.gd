extends Node

var health=100

var current_lvl = 1 setget canvia_nivell
var nivell_1 = 0 setget canvia_nivell_1
var nivell_2 = 0 setget canvia_nivell_2
var nivell_3 = 0 setget canvia_nivell_3

var document_current_lvl = "user://current_lvl.txt"
var document_punts_1 = "user://nivell1.txt"
var document_punts_2 = "user://nivell2.txt"
var document_punts_3 = "user://nivell3.txt"


var powerup1 = false
var powerup2 = false
var powerup3 = false

func _init():
	carrega_current_lvl()
	carrega_record_1()
	carrega_record_2()

func canvia_nivell(current_level):
	guarda_current_lvl(current_level)

func canvia_nivell_1(nivell1):
	nivell_1 = nivell1
	guarda_record_1(nivell1)

func canvia_nivell_2(nivell2):
	nivell_2 = nivell2
	guarda_record_2(nivell2)

func canvia_nivell_3(nivell3):
	pass

func carrega_current_lvl():
	var f = File.new()
	if f.file_exists(document_current_lvl):
		f.open(document_current_lvl, File.READ)
		var content = f.get_as_text()
		var nivell = int(content)
		f.close()

func guarda_current_lvl(nivell):
	var f = File.new()
	f.open(document_current_lvl, File.WRITE)
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
		var highscore_2 = int(content)
		f.close()

func guarda_record_2(highscore):
	var f = File.new()
	f.open(document_punts_2, File.WRITE)
	f.store_string(str(highscore))
	f.close()
