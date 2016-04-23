#Build a database for a video game collection!

require 'sqlite3'

#create database
db = SQLite3::Database.new("games.db")
db.results_as_hash = true

#games & systems tables commands
create_games_table = <<-SQL
	CREATE TABLE IF NOT EXISTS games(
		id INTEGER PRIMARY KEY,
		title VARCHAR(255),
		system_id INT,
		release_year INT,
		unopened BOOLEAN,
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

def add_system(system)

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
		unopened = 0 if i == "n"
		unopened = 1 if i == "y"

		print "Enter the game's estimated market value: "
		market_value = gets.to_f


















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