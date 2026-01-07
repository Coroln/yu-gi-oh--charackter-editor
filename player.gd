extends Node2D

@onready var hairtopSprite = $CompositeSprite/Hair
@onready var hairbottomSprite = $CompositeSprite/Hair2
@onready var faceSprite = $CompositeSprite/Face
@onready var clothesSprite = $CompositeSprite/Clothes
@onready var dueldiskSprite = $CompositeSprite/DuelDisk
@onready var backgroundSprite = $CompositeSprite/BackgroundEditor2

const composite_sprites = preload("res://CompositeSpritesheet/CompositeSprites.gd")

var curr_tophair: int = 0
var curr_bottomhair: int = 0
var curr_face: int = 0
var curr_clothes: int = 0
var curr_dueldisk: int = 0
var curr_background: int = 0

var ssCount = 1

var rng = RandomNumberGenerator.new()

func _ready():
	backgroundSprite.texture = composite_sprites.backgound_spritesheet[curr_background]
	hairtopSprite.texture = composite_sprites.hair_top_spritesheet[curr_tophair]
	hairbottomSprite.texture = composite_sprites.hair_bottom_spritesheet[curr_bottomhair]
	var data2 = composite_sprites.face_spritesheet[curr_face]
	
	faceSprite.texture = data2.texture
	
	var mat2 := faceSprite.material as ShaderMaterial
	mat2.set_shader_parameter("skin_mask", data2.mask)
	
	var data = composite_sprites.clothes_spritesheet[curr_clothes]

	clothesSprite.texture = data.texture

	var mat := clothesSprite.material as ShaderMaterial
	mat.set_shader_parameter("skin_mask", data.mask)

	dueldiskSprite.texture = composite_sprites.dueldisk_spritesheet[curr_dueldisk]
	
	var dir = DirAccess.open("user://")
	dir.make_dir("pictures")
	
	dir = DirAccess.open("user://pictures")
	for n in dir.get_files():
		ssCount += 1

const CAPTURE_RECT := Rect2(Vector2(306, 96), Vector2(512, 384))

func get_canvas_to_viewport_scale() -> Vector2:
	var viewport_size: Vector2 = get_viewport().get_visible_rect().size
	var window_size: Vector2 = Vector2(DisplayServer.window_get_size())

	return window_size / viewport_size


func pictures():
	await RenderingServer.frame_post_draw

	var viewport_scale := get_canvas_to_viewport_scale()

	var scaled_rect := Rect2(CAPTURE_RECT.position * viewport_scale, CAPTURE_RECT.size * viewport_scale)

	var img := get_viewport().get_texture().get_image()
	img = img.get_region(scaled_rect)

	img.save_png("user://pictures/ss" + str(ssCount) + ".png")
	ssCount += 1

func _on_change_hair_pressed():
	curr_tophair = (curr_tophair + 1) % composite_sprites.hair_top_spritesheet.size()
	curr_bottomhair = curr_tophair
	hairtopSprite.texture = composite_sprites.hair_top_spritesheet[curr_tophair]
	hairbottomSprite.texture = composite_sprites.hair_bottom_spritesheet[curr_bottomhair]


func _on_change_face_pressed():
	curr_face = (curr_face + 1) % composite_sprites.face_spritesheet.size()
	var data2 = composite_sprites.face_spritesheet[curr_face]
	
	faceSprite.texture = data2.texture
	
	var mat2 := faceSprite.material as ShaderMaterial
	mat2.set_shader_parameter("skin_mask", data2.mask)


func _on_change_clothes_pressed():
	curr_clothes = (curr_clothes + 1) % composite_sprites.clothes_spritesheet.size()
	var data = composite_sprites.clothes_spritesheet[curr_clothes]

	clothesSprite.texture = data.texture

	var mat := clothesSprite.material as ShaderMaterial
	mat.set_shader_parameter("skin_mask", data.mask)



func _on_change_dueldisk_pressed():
	curr_dueldisk = (curr_dueldisk + 1) % composite_sprites.dueldisk_spritesheet.size()
	dueldiskSprite.texture = composite_sprites.dueldisk_spritesheet[curr_dueldisk]


func _on_random_pressed():
	curr_tophair = rng.randi_range(0, composite_sprites.hair_top_spritesheet.size() - 1)
	curr_bottomhair = curr_tophair
	hairtopSprite.texture = composite_sprites.hair_top_spritesheet[curr_tophair]
	hairbottomSprite.texture = composite_sprites.hair_bottom_spritesheet[curr_bottomhair]
	
	curr_face = rng.randi_range(0, composite_sprites.face_spritesheet.size() - 1)
	var data2 = composite_sprites.face_spritesheet[curr_face]
	
	faceSprite.texture = data2.texture
	
	var mat2 := faceSprite.material as ShaderMaterial
	mat2.set_shader_parameter("skin_mask", data2.mask)
	
	curr_clothes = rng.randi_range(0, composite_sprites.clothes_spritesheet.size() - 1)
	var data = composite_sprites.clothes_spritesheet[curr_clothes]

	clothesSprite.texture = data.texture

	var mat := clothesSprite.material as ShaderMaterial
	mat.set_shader_parameter("skin_mask", data.mask)

	
	curr_dueldisk = rng.randi_range(0, composite_sprites.dueldisk_spritesheet.size() - 1)
	dueldiskSprite.texture = composite_sprites.dueldisk_spritesheet[curr_dueldisk]


func _on_change_hair_back_pressed():
	curr_tophair = (curr_tophair - 1 + composite_sprites.hair_top_spritesheet.size()) % composite_sprites.hair_top_spritesheet.size()
	curr_bottomhair = curr_tophair
	hairtopSprite.texture = composite_sprites.hair_top_spritesheet[curr_tophair]
	hairbottomSprite.texture = composite_sprites.hair_bottom_spritesheet[curr_bottomhair]


func _on_change_face_back_pressed():
	curr_face = (curr_face - 1 + composite_sprites.face_spritesheet.size()) % composite_sprites.face_spritesheet.size()
	var data2 = composite_sprites.face_spritesheet[curr_face]
	
	faceSprite.texture = data2.texture
	
	var mat2 := faceSprite.material as ShaderMaterial
	mat2.set_shader_parameter("skin_mask", data2.mask)


func _on_change_clothes_back_pressed():
	curr_clothes = (curr_clothes - 1 + composite_sprites.clothes_spritesheet.size()) % composite_sprites.clothes_spritesheet.size()
	var data = composite_sprites.clothes_spritesheet[curr_clothes]

	clothesSprite.texture = data.texture

	var mat := clothesSprite.material as ShaderMaterial
	mat.set_shader_parameter("skin_mask", data.mask)



func _on_change_dueldisk_back_pressed():
	curr_dueldisk = (curr_dueldisk - 1 + composite_sprites.dueldisk_spritesheet.size()) % composite_sprites.dueldisk_spritesheet.size()
	dueldiskSprite.texture = composite_sprites.dueldisk_spritesheet[curr_dueldisk]


func _on_change_background_pressed():
	curr_background = (curr_background + 1) % composite_sprites.backgound_spritesheet.size()
	backgroundSprite.texture = composite_sprites.backgound_spritesheet[curr_background]


func _on_change_background_back_pressed():
	curr_background = (curr_background - 1 + composite_sprites.backgound_spritesheet.size()) % composite_sprites.backgound_spritesheet.size()
	backgroundSprite.texture = composite_sprites.backgound_spritesheet[curr_background]


func _on_save_pressed():
	pictures()
	var _folder_path := ProjectSettings.globalize_path("user://pictures")
	await RenderingServer.frame_post_draw
	OS.shell_open(_folder_path)


@onready var skin_sprites := [
	get_node("CompositeSprite/Face"),
	get_node("CompositeSprite/Clothes")
]

func set_skin_color(color: Color):
	for sprite in skin_sprites:
		if sprite.material == null:
			print(sprite.name, " has NO material")
			continue

		if not sprite.material is ShaderMaterial:
			print(sprite.name, " material is NOT ShaderMaterial")
			continue

		var mat := sprite.material as ShaderMaterial
		mat.set_shader_parameter("skin_color", color)


func _on_change_hair_red_pressed():
	get_node("CompositeSprite/Hair").modulate = Color(1,0,0)
	get_node("CompositeSprite/Hair2").modulate = Color(1,0,0)


func _on_reset_color_pressed():
	get_node("CompositeSprite/Hair").modulate = Color(1,1,1)
	get_node("CompositeSprite/Hair2").modulate = Color(1,1,1)
	set_skin_color(Color(1,1,1))
	


func _on_change_hair_blue_pressed():
	get_node("CompositeSprite/Hair").modulate = Color(0, 0, 1, 1)
	get_node("CompositeSprite/Hair2").modulate = Color(0, 0, 1, 1)


func _on_change_hair_green_pressed():
	get_node("CompositeSprite/Hair").modulate = Color(0, 1, 0, 1)
	get_node("CompositeSprite/Hair2").modulate = Color(0, 1, 0, 1)


func _on_change_hair_aqua_pressed():
	get_node("CompositeSprite/Hair").modulate = Color(0, 1, 1, 1)
	get_node("CompositeSprite/Hair2").modulate = Color(0, 1, 1, 1)


func _on_change_hair_orange_pressed():
	get_node("CompositeSprite/Hair").modulate = Color(1, 0.64705884, 0, 1)
	get_node("CompositeSprite/Hair2").modulate = Color(1, 0.64705884, 0, 1)


func _on_change_hair_pink_pressed():
	get_node("CompositeSprite/Hair").modulate = Color(1, 0.7529412, 0.79607844, 1)
	get_node("CompositeSprite/Hair2").modulate = Color(1, 0.7529412, 0.79607844, 1)


func _on_change_hair_purple_pressed():
	get_node("CompositeSprite/Hair").modulate = Color(0.627451, 0.1254902, 0.9411765, 1)
	get_node("CompositeSprite/Hair2").modulate = Color(0.627451, 0.1254902, 0.9411765, 1)


func _on_change_hair_brown_pressed():
	get_node("CompositeSprite/Hair").modulate = Color(0.54509807, 0.27058825, 0.07450981, 1)
	get_node("CompositeSprite/Hair2").modulate = Color(0.54509807, 0.27058825, 0.07450981, 1)


func _on_change_hair_yellow_pressed():
	get_node("CompositeSprite/Hair").modulate = Color(1, 1, 0, 1)
	get_node("CompositeSprite/Hair2").modulate = Color(1, 1, 0, 1)


func _on_change_skin_red_pressed():
	set_skin_color(Color(1,0,0))


func _on_change_skin_blue_pressed():
	set_skin_color(Color(0, 0, 1, 1))


func _on_change_skin_purple_pressed():
	set_skin_color(Color(0.627451, 0.1254902, 0.9411765, 1))


func _on_change_skin_green_pressed():
	set_skin_color(Color(0, 1, 0, 1))


func _on_change_skin_aqua_pressed():
	set_skin_color(Color(0, 1, 1, 1))


func _on_change_skin_brown_pressed():
	set_skin_color(Color(0.54509807, 0.27058825, 0.07450981, 1))


func _on_change_skin_orange_pressed():
	set_skin_color(Color(1, 0.64705884, 0, 1))


func _on_change_skin_pink_pressed():
	set_skin_color(Color(1, 0.7529412, 0.79607844, 1))


func _on_change_skin_yellow_pressed():
	set_skin_color(Color(1, 1, 0, 1))


func _on_change_skin_light_pressed():
	set_skin_color(Color(0.9, 0.7, 0.67))
