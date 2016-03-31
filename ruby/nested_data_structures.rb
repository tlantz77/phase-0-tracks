#Rock Music through the years

rock_music = {
	classic_rock: {
		popular_years: '50s - 60s - 70s',
		founding_artists: [
			"Chuck Berry",
			"Elvis Presley",
			"The Beatles"
		],
		subgenres: {
			hard_rock: [
				"Deep Purple",
				"Led Zeppelin",
				"The Who"
			],
			psychedelic_rock: [
				"Jimi Hendrix",
				"Pink Floyd",
				"The Doors"
			],
			progressive_rock: [
				"King Crimson",
				"Rush",
				"Yes"
			]
		}
	},
	
	heavy_metal: {
		popular_years: '70s - 80s - 90s',
		founding_artists: [
			"Black Sabbath",
			"Judas Priest",
			"Motorhead"
		],
		subgenres: {
			thrash_metal: [
				"Anthrax",
				"Megadeth",
				"Metallica"
			],
			death_metal: [
				"Morbid Angel",
				"Slayer",
				"Venom"
			],
			glam_metal: [
				"Kiss",
				"Motley Crue",
				"Poison"
			]
		}
	},
	
	punk: {
		popular_years: '70s - 80s - 90s',
		founding_artists: [
			"The Clash",
			"The Ramones",
			"The Sex Pistols"
		],
		subgenres: {
			hardcore: [
				"Bad Brains",
				"Black Flag",
				"Dead Kennedys"
			],
			riot_grrl: [
				"Bikini Kill",
				"Bratmobile",
				"Sleater-Kinney"
			],
			pop_punk: [
				"Green Day",
				"NOFX",
				"Rancid"
			]
		}
	},
	
	alternative_rock: {
		popular_years: '80s - 90s - 00s',
		founding_artists: [
			"Joy Division",
			"The Pixies"
			"R.E.M."
		],
		subgenres: {
			new_wave: [
				"Devo",
				"Elvis Costello",
				"Talking Heads"
			],
			goth_rock: [
				"Bauhaus",
				"The Cure",
				"Souxsie and the Banshees"
			],
			grunge_rock: [
				"Nirvana",
				"Pearl Jam",
				"Soundgarden"
			]
		}
	}
}

#Show list of new wave bands

p rock_music[:alternative_rock][:subgenres][:new_wave]


#Call a nested item in a sentence

puts "Remember the time we saw #{rock_music[:classic_rock][:subgenres][:progressive_rock][1]} on tour in '96?"


#Delete a nested hash item

puts "#{rock_music[:punk][:subgenres][:pop_punk][0]} is terrible and unworthy of being called punk.  Let's get rid of them!"

rock_music[:punk][:subgenres][:pop_punk].delete("Green Day")

p rock_music[:punk][:subgenres][:pop_punk]
puts "That's better!"