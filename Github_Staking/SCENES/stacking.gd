extends StaticBody2D

#numero de imgs no spritesheet do objeto (no meu caso 60)
export var numero_de_sprites_do_objeto = 60


func _ready():
	
	for contagem in range(numero_de_sprites_do_objeto): #esse código é lido a mesma quantidade do número de sprites no spritesheet
		
		var cada_sprite_do_objeto = Sprite.new() #esse sprite que será uma das camadas
		
		cada_sprite_do_objeto.texture = $Sprite.texture # o novo sprite tera a mesma textura

		cada_sprite_do_objeto.hframes = numero_de_sprites_do_objeto # o novo sprite tera a mesma quantidade de hframes que a quantidade de sprites no spritesheet
		
		cada_sprite_do_objeto.frame = contagem #o numero do frame sera o numero da contagem desse 'for'

		cada_sprite_do_objeto.position.y = -contagem #a posição de cada sprite é sempre mais alto que o anterior para criar a ilusão de altura
		
		add_child(cada_sprite_do_objeto) #add o novo sprite como filho
	pass 

func _physics_process(delta):
	
	#a forma mais fácil de ver o obj 3d por completo é rodando ele
	
	for numero_filho in range (get_child_count()): #vc precisa rodar todos os filhos do obj
		
		var velocidade_do_giro = 0.5
		get_child(numero_filho).rotation_degrees += velocidade_do_giro
		
	# existem formas melhores de fazer isso
	# na minha opnião essa é a mais simples de entender

