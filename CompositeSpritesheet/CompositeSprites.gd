extends Node

const hair_top_spritesheet = {
	0 : preload("res://CompositeSpritesheet/hair_top1.png"),
	1 : preload("res://CompositeSpritesheet/hair_top2.png"),
	2 : preload("res://CompositeSpritesheet/hair_top3.png"),
	3 : preload("res://CompositeSpritesheet/hair_top4.png"),
	4 : preload("res://CompositeSpritesheet/hair_top5.png"),
	5 : preload("res://CompositeSpritesheet/hair_top6.png"),
	6 : preload("res://CompositeSpritesheet/hair_top7.png"),
	7 : preload("res://CompositeSpritesheet/hair_top8.png"),
	8 : preload("res://CompositeSpritesheet/hair_top9.png"),
	9 : preload("res://CompositeSpritesheet/hair_top10.png"),
	10 : preload("res://CompositeSpritesheet/hair_top11.png"),
	11 : preload("res://CompositeSpritesheet/hair_top12.png"),
	12 : preload("res://CompositeSpritesheet/hair_top13.png"),
	13 : preload("res://CompositeSpritesheet/hair_top14.png"),
	14 : preload("res://CompositeSpritesheet/hair_top15.png"),
	15 : preload("res://CompositeSpritesheet/hair_top16.png"),
	16 : preload("res://CompositeSpritesheet/hair_top17.png"),
	17 : preload("res://CompositeSpritesheet/hair_top18.png"),
	18 : preload("res://CompositeSpritesheet/hair_top19.png"),
	19 : preload("res://CompositeSpritesheet/hair_top20.png")
}

const hair_bottom_spritesheet = {
	0 : preload("res://CompositeSpritesheet/hair_bottom1.png"),
	1 : preload("res://CompositeSpritesheet/hair_bottom2.png"),
	2 : preload("res://CompositeSpritesheet/hair_bottom3.png"),
	3 : preload("res://CompositeSpritesheet/hair_bottom4.png"),
	4 : preload("res://CompositeSpritesheet/hair_bottom5.png"),
	5 : preload("res://CompositeSpritesheet/hair_bottom6.png"),
	6 : preload("res://CompositeSpritesheet/hair_bottom7.png"),
	7 : preload("res://CompositeSpritesheet/hair_bottom8.png"),
	8 : preload("res://CompositeSpritesheet/hair_bottom9.png"),
	9 : preload("res://CompositeSpritesheet/hair_bottom10.png"),
	10 : preload("res://CompositeSpritesheet/hair_bottom11.png"),
	11 : preload("res://CompositeSpritesheet/hair_bottom12.png"),
	12 : preload("res://CompositeSpritesheet/hair_bottom13.png"),
	13 : preload("res://CompositeSpritesheet/hair_bottom14.png"),
	14 : preload("res://CompositeSpritesheet/hair_bottom15.png"),
	15 : preload("res://CompositeSpritesheet/hair_bottom16.png"),
	16 : preload("res://CompositeSpritesheet/hair_bottom17.png"),
	17 : preload("res://CompositeSpritesheet/hair_bottom18.png"),
	18 : preload("res://CompositeSpritesheet/hair_bottom19.png"),
	19 : preload("res://CompositeSpritesheet/hair_bottom20.png")
}

const face_spritesheet = {
	0 : {
		"texture": preload("res://CompositeSpritesheet/face1.png"),
		"mask": preload("res://CompositeSpritesheet/face1_skin.png")
		},
	1 : {
		"texture": preload("res://CompositeSpritesheet/face2.png"),
		"mask": preload("res://CompositeSpritesheet/face2_skin.png")
		},
	2 : {
		"texture": preload("res://CompositeSpritesheet/face3.png"),
		"mask": preload("res://CompositeSpritesheet/face3_skin.png"),
		},
	3 : {
		"texture": preload("res://CompositeSpritesheet/face4.png"),
		"mask": preload("res://CompositeSpritesheet/face4_skin.png")
		},
	4 : {
		"texture": preload("res://CompositeSpritesheet/face5.png"),
		"mask": preload("res://CompositeSpritesheet/face5_skin.png")
		},
	5 : {
		"texture": preload("res://CompositeSpritesheet/face6.png"),
		"mask": preload("res://CompositeSpritesheet/face6_skin.png")
		},
	6 : {
		"texture": preload("res://CompositeSpritesheet/face7.png"),
		"mask": preload("res://CompositeSpritesheet/face7_skin.png")
		},
	7 : {
		"texture": preload("res://CompositeSpritesheet/face8.png"),
		"mask": preload("res://CompositeSpritesheet/face8_skin.png")
		},
	8 : {
		"texture": preload("res://CompositeSpritesheet/face9.png"),
		"mask": preload("res://CompositeSpritesheet/face9_skin.png")
		},
	9 : {
		"texture": preload("res://CompositeSpritesheet/face10.png"),
		"mask": preload("res://CompositeSpritesheet/face10_skin.png")
		},
	10 : {
		"texture": preload("res://CompositeSpritesheet/face11.png"),
		"mask": preload("res://CompositeSpritesheet/face11_skin.png")
		},
	11 : {
		"texture": preload("res://CompositeSpritesheet/face12.png"),
		"mask": preload("res://CompositeSpritesheet/face12_skin.png")
		},
	12 : {
		"texture": preload("res://CompositeSpritesheet/face13.png"),
		"mask": preload("res://CompositeSpritesheet/face13_skin.png")
		},
	13 : {
		"texture": preload("res://CompositeSpritesheet/face14.png"),
		"mask": preload("res://CompositeSpritesheet/face14_skin.png")
		},
	14 : {
		"texture": preload("res://CompositeSpritesheet/face15.png"),
		"mask": preload("res://CompositeSpritesheet/face15_skin.png")
		},
	15 : {
		"texture": preload("res://CompositeSpritesheet/face16.png"),
		"mask": preload("res://CompositeSpritesheet/face16_skin.png")
		},
	16 : {
		"texture": preload("res://CompositeSpritesheet/face17.png"),
		"mask": preload("res://CompositeSpritesheet/face17_skin.png")
		},
	17 : {
		"texture": preload("res://CompositeSpritesheet/face18.png"),
		"mask": preload("res://CompositeSpritesheet/face18_skin.png")
		},
	18 : {
		"texture": preload("res://CompositeSpritesheet/face19.png"),
		"mask": preload("res://CompositeSpritesheet/face19_skin.png")
		},
	19 : {
		"texture": preload("res://CompositeSpritesheet/face20.png"),
		"mask": preload("res://CompositeSpritesheet/face20_skin.png")
		}
}

const clothes_spritesheet = {
	0 : {
		"texture": preload("res://CompositeSpritesheet/body1.png"),
		"mask": preload("res://CompositeSpritesheet/body1_skin.png")
		},
	1 : {
		"texture": preload("res://CompositeSpritesheet/body2.png"),
		"mask": preload("res://CompositeSpritesheet/body2_skin.png")
		},
	2 : {
		"texture": preload("res://CompositeSpritesheet/body3.png"),
		"mask": preload("res://CompositeSpritesheet/body3_skin.png")
		},
	3 : {
		"texture": preload("res://CompositeSpritesheet/body4.png"),
		"mask": preload("res://CompositeSpritesheet/body4_skin.png")
		},
	4 : {
		"texture": preload("res://CompositeSpritesheet/body5.png"),
		"mask": preload("res://CompositeSpritesheet/body5_skin.png")
		},
	5 : {
		"texture": preload("res://CompositeSpritesheet/body6.png"),
		"mask": preload("res://CompositeSpritesheet/body6_skin.png")
		},
	6 : {
		"texture": preload("res://CompositeSpritesheet/body7.png"),
		"mask": preload("res://CompositeSpritesheet/body7_skin.png")
		},
	7 : {
		"texture": preload("res://CompositeSpritesheet/body8.png"),
		"mask": preload("res://CompositeSpritesheet/body8_skin.png")
		},
	8 : {
		"texture": preload("res://CompositeSpritesheet/body9.png"),
		"mask": preload("res://CompositeSpritesheet/body9_skin.png")
		},
	9 : {
		"texture": preload("res://CompositeSpritesheet/body10.png"),
		"mask": preload("res://CompositeSpritesheet/body10_skin.png")
		},
	10 : {
		"texture": preload("res://CompositeSpritesheet/body11.png"),
		"mask": preload("res://CompositeSpritesheet/body11_skin.png")
		},
	11 : {
		"texture": preload("res://CompositeSpritesheet/body12.png"),
		"mask": preload("res://CompositeSpritesheet/body12_skin.png")
		},
	12 : {
		"texture": preload("res://CompositeSpritesheet/body13.png"),
		"mask": preload("res://CompositeSpritesheet/body13_skin.png")
		},
	13 : {
		"texture": preload("res://CompositeSpritesheet/body14.png"),
		"mask": preload("res://CompositeSpritesheet/body14_skin.png")
		},
	14 : {
		"texture": preload("res://CompositeSpritesheet/body15.png"),
		"mask": preload("res://CompositeSpritesheet/body15_skin.png")
		},
	15 : {
		"texture": preload("res://CompositeSpritesheet/body16.png"),
		"mask": preload("res://CompositeSpritesheet/body16_skin.png")
		},
	16 : {
		"texture": preload("res://CompositeSpritesheet/body17.png"),
		"mask": preload("res://CompositeSpritesheet/body17_skin.png")
		},
	17 : {
		"texture": preload("res://CompositeSpritesheet/body18.png"),
		"mask": preload("res://CompositeSpritesheet/body18_skin.png")
		},
	18 : {
		"texture": preload("res://CompositeSpritesheet/body19.png"),
		"mask": preload("res://CompositeSpritesheet/body19_skin.png")
		},
	19 : {
		"texture": preload("res://CompositeSpritesheet/body20.png"),
		"mask": preload("res://CompositeSpritesheet/body20_skin.png")
		}
}

const dueldisk_spritesheet = {
	0 : preload("res://CompositeSpritesheet/dueldisk1.png"),
	1 : preload("res://CompositeSpritesheet/dueldisk2.png"),
	2 : preload("res://CompositeSpritesheet/dueldisk3.png"),
	3 : preload("res://CompositeSpritesheet/dueldisk4.png"),
	4 : preload("res://CompositeSpritesheet/dueldisk5.png"),
	5 : preload("res://CompositeSpritesheet/dueldisk6.png"),
	6 : preload("res://CompositeSpritesheet/dueldisk7.png"),
	7 : preload("res://CompositeSpritesheet/dueldisk8.png"),
	8 : preload("res://CompositeSpritesheet/dueldisk9.png"),
	9 : preload("res://CompositeSpritesheet/dueldisk10.png"),
	10 : preload("res://CompositeSpritesheet/dueldisk11.png"),
	11 : preload("res://CompositeSpritesheet/dueldisk12.png"),
	12 : preload("res://CompositeSpritesheet/dueldisk13.png"),
	13 : preload("res://CompositeSpritesheet/dueldisk14.png"),
	14 : preload("res://CompositeSpritesheet/dueldisk15.png"),
	15 : preload("res://CompositeSpritesheet/dueldisk16.png"),
	16 : preload("res://CompositeSpritesheet/dueldisk17.png"),
	17 : preload("res://CompositeSpritesheet/dueldisk18.png"),
	18 : preload("res://CompositeSpritesheet/dueldisk19.png"),
	19 : preload("res://CompositeSpritesheet/dueldisk20.png")
}

const backgound_spritesheet = {
	0 : preload("res://CompositeSpritesheet/background editor2.png"),
	1 : preload("res://CompositeSpritesheet/background editor3.png"),
	2 : preload("res://CompositeSpritesheet/background editor4.png"),
	3 : preload("res://CompositeSpritesheet/background editor5.png"),
	4 : preload("res://CompositeSpritesheet/background editor6.png"),
	5 : preload("res://CompositeSpritesheet/background editor7.png"),
	6 : preload("res://CompositeSpritesheet/background editor8.png"),
	7 : preload("res://CompositeSpritesheet/background editor9.png"),
	8 : preload("res://CompositeSpritesheet/background editor10.png")
}
