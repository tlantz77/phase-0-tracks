#Build a database for a video game collection!

require 'sqlite3'

#create database
db = SQLite3::Database.new("games.db")

#games & systems tables commands
create_games_table = <<-SQL
	CREATE TABLE IF NOT EXISTS games(
		id INTEGER PRIMARY KEY,
		title VARCHAR(255),
		system_id INT,
		release_year INT,
		unopened INT,
		market_value DECIMAL(10,2),
		FOREIGN KEY (system_id) REFERENCES systems(id)
		)
	SQL

create_systems_table = <<-SQL
	CREATE TABLE IF NOT EXISTS systems(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255) UNIQUE
		)
	SQL
	
#create tables if they don't exist
db.execute(create_games_table)
db.execute(create_systems_table)			

#methods

#add a system name to systems table, ignore duplicate entries
def add_system(db, system)
	db.execute("INSERT OR IGNORE INTO systems (name) VALUES (?)", [system])
end

#add game info to games table
#checks the systems table for the system name entered by user and assigns it's primary key as the system_id in games table
def add_game(db, title, system, release_year, unopened, market_value)
	sys_id = db.execute("SELECT id FROM systems WHERE name=?", [system])
	db.execute("INSERT INTO games (title, system_id, release_year, unopened, market_value) VALUES (?, ?, ?, ?, ?)", [title, sys_id, release_year, unopened, market_value])	
end

#edit a game entry
def edit_entry(db, id, edit_choice)
	case edit_choice
	when 1
		print "Enter the new title: "
		new_title = gets.chomp
		db.execute("UPDATE games SET title=? WHERE id=?", [new_title, id])
	when 2
		print "Enter the new release year: "
		new_year = gets.to_i
		db.execute("UPDATE games SET release_year=? WHERE id=?", [new_year, id])
	when 3
		status = db.execute("SELECT unopened FROM games WHERE id=?", [id])
		stat = status[0]
		if stat[0] == 1
			db.execute("UPDATE games SET unopened=0 WHERE id=?", [id])
		elsif stat[0] == 0
			db.execute("UPDATE games SET unopened=1 WHERE id=?", [id])
		end	
		puts ("Status changed.")
	when 4
		print "Enter the new market value: "
		new_value = gets.to_f
		db.execute("UPDATE games SET market_value=? WHERE id=?", [market_value, id])				
	when 5
		print "Enter the new system: "
		new_system = gets.chomp.upcase
		db.execute("INSERT OR IGNORE INTO systems (name) VALUES (?)", new_system)
		sys_id = db.execute("SELECT id FROM systems WHERE name=?", new_system)
		db.execute("UPDATE games SET system_id=? WHERE id=?", [sys_id, id])
	end	
end

#delete a game entry
def delete_entry(db, id)
	db.execute("DELETE FROM games WHERE id=?", id)
	puts "Entry deleted."
end	

#display games table info method
#will insert system name from systems table in place of primary key
def display(db)
	puts "ID   Title                      Year  New?   MarketValue   System"
	puts "-" * 75
	games = db.execute("SELECT * FROM games")
	games.each do |game|
		sys = db.execute("SELECT name FROM systems WHERE id=?", game[2])
		unopened = "N" if game[4] == 0
		unopened = "Y" if game[4] == 1
		puts "[#{game[0]}]  #{game[1].ljust(25)}  #{game[3]}  #{unopened.ljust(5)}  #{game[5].to_s.ljust(12)}  #{sys}"
	end	
end	

#display one selected entry from games table
def display_one(db, id)
	puts "ID   Title                      Year  New?   MarketValue   System"
	puts "-" * 75
	game_entry = db.execute("SELECT * FROM games WHERE id=?", id)
	game = game_entry[0]
	sys = db.execute("SELECT name FROM systems WHERE id=?", game[2])
	unopened = "N" if game[4] == 0
	unopened = "Y" if game[4] == 1
	puts "[#{game[0]}]  #{game[1].ljust(25)}  #{game[3]}  #{unopened.ljust(5)}  #{game[5].to_s.ljust(12)}  #{sys}"
end

#driver code
in_use = true

puts "Welcome to your Video Game Collection Database!"
puts "-" * 75

while in_use
	puts "-" * 75
	puts "1. ADD NEW ENTRY  2. EDIT ENTRY  3. DELETE ENTRY  4. VIEW COLLECTION  5. EXIT"
	print "Please enter [1 - 5]: "
	choice = gets.to_i

	case choice
	when 1
		print "Enter the game's title: "
		title = gets.chomp
		
		print "Enter the game's system: "
		system = gets.chomp.upcase
		
		print "Enter its year of release: "
		release_year = gets.to_i
		
		print "Is the game complete & unopened? (y/n): "
		i = gets.chr.downcase
		unopened = 1 if i == "y"
		unopened = 0 if i == "n"

		print "Enter the game's estimated market value: "
		market_value = gets.to_f

		add_system(db, system)
		add_game(db, title, system, release_year, unopened, market_value)

	when 2
		print "Enter the ID of the game entry you wish to edit: "
		id = gets.to_i
		display_one(db, id)
		puts "-" * 75
		puts "1. EDIT TITLE  2. EDIT YEAR  3. CHANGE NEW STATUS  4. EDIT MARKET VALUE  5. EDIT SYSTEM"
		print "Please enter [1 - 5]: " 
		edit_choice = gets.to_i
		
		case edit_choice 
		when 1, 2, 3, 4, 5
			edit_entry(db, id, edit_choice)
		else
			puts "Invalid entry."	
	 	end

	when 3
		print "Enter the ID of the game you wish to delete: "
		id = gets.to_i
		delete_entry(db, id)

	when 4
		display(db)
	
	when 5
		in_use = false
	
	else
		puts "Invalid entry!"
	end	
end
puts "-" * 75
puts "Goodbye and Happy Collecting!"	