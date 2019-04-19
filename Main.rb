require_relative 'Movie.rb'

	begin
		puts "\nВведите название фильма:"
		movie = Movie.new(gets.chomp.encode('UTF-8'))
		if !movie.availability
			raise
		end

		rescue
			puts "Данный фильм не был найден"  
			retry
	end
	
#вывод описания фильма
movie.movie_description

end