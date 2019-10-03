##
# jeu de l'escalier
##
def lancer_de_de
	resultat = rand(1..6)
	puts resultat
	return resultat
end

def condition (result)
	if result > 4
		puts "Vous avancez d'une marche."
		return 1
	elsif result < 2
		puts "Vous redescendez d'une marche."
		return - 1
	else result
		puts "Vous restez sur votre marche."
		return 0
	end
end

def position (result2)
	position = 0
	k = 0
	while position < 10
			result3 = condition(lancer_de_de)
			position = position + result3
			puts "Vous êtes à la case #{position}."	
			k = k + 1
	end
		puts "Bravo vous avez gagné !" 
		puts "(en #{k} lancés de dé)"
		return k
end

def demarrer
	position(condition(lancer_de_de))
end

# demarrer

##
# simulation
##
def average_finish_time
	i=0
	100.times do 
		avr2 = demarrer
		i = i + avr2
	end
	puts "#{i / 100}" 
end

average_finish_time