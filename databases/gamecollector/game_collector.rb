#Build a database for a video game collection!

require 'sqlite3'

#create database
db = SQLite3::Database.new("games.db")
#db.results_as_hash = true

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



def display
	db.execute("SELECT * FROM games")
end

#driver code
in_use = true

puts "Welcome to your Video Game Collection Database!"
puts "-" * 50

while in_use
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
		p choice	
	when 3
		p choice	
	when 4
		p choice	
	when 5
		in_use = false
	else
		puts "Invalid entry!"
	end	
end
puts "-" * 50
puts "Goodbye and Happy Collecting!"	