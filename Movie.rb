class Movie

	data = [] 
	name_films = []

	def initialize(movie_name) 
		self.movie_name = movie_name
	end

	attr_reader :movie_name

	def movie_name=(movie_name) 
		File.open("movie.txt", "r") do |file|
  			file.read().first { |x| name_films.push(x) }
		end
		if !name_films.include?(movie_name) 
			raise "Данного фильма нет в списках"
		end
		@movie_name= movie_name
	 end 

	def movie_description
		file = File.new("movie.txt")
		file.each do |line|
			data = line.split("\t")
			if data[0] == self.movie_name
				puts data[1]
				puts data[2]
				file.close
				return
			end
		end
	end
end	