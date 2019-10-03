#Mot de passe

def signup
	puts "Bonjour, merci de définir un mot de passe"
	print "> "
	mdp = gets.chomp
	return mdp
end

def login (mdp2)
	puts "Maintenant, entre ton mot de passe pour accéder à l'espace secret"
	print "> "
	essai = gets.chomp

	while essai != mdp2
		puts "Entre a nouveau ton mot de passe"
		print "> "
		essai = gets.chomp
	end
end

def welcome_screen (ok)
	puts "Bienvenue dans l'espace secret !"
end

def perform
	welcome_screen(login(signup))
end

perform