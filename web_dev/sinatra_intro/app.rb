# require gems
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  first_letter = params[:letter]
  students = db.execute("SELECT * FROM students")
  response = ""
  if first_letter
    students.each do |student|
      if first_letter.upcase == student['name'].chr
        response << "ID: #{student['id']}<br>"
        response << "Name: #{student['name']}<br>"
        response << "Age: #{student['age']}<br>"
        response << "Campus: #{student['campus']}<br><br>"
      end 
    end   
  else    
    students.each do |student|
      response << "ID: #{student['id']}<br>"
      response << "Name: #{student['name']}<br>"
      response << "Age: #{student['age']}<br>"
      response << "Campus: #{student['campus']}<br><br>"
    end  
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end


# contact route that displays address

get '/contact' do
  "Address:  1044 Waterford Rd., Bartlett, IL 60103"
end  


# great_job route

get '/great_job' do
  name = params[:name]
  if name
    "Great job, #{name}!"
  else
    "Great Job!"
  end
end  

# number-adder route (as route params)

get '/:num_1/plus/:num_2' do
  sum = params[:num_1].to_i + params[:num_2].to_i
  "#{params[:num_1]} plus #{params[:num_2]} is equal to #{sum}!"
end  

# search students database and display anmes that begin with query parameter

