# def full_pyramid
# 	affichage_et_calcul(demande_nombre)
# end

# def demande_nombre
# 	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
# 	print "> "
# 	nombre = Integer(gets) rescue false

# 	while nombre == false || nombre < 1 || nombre > 25
# 	puts "Choisis un nombre entre 1 et 25"
# 	print "> "
# 	nombre = Integer(gets) rescue false
# 	end
# 	return nombre
# end

# def affichage_et_calcul (nombre2)
# 	puts "Voici la pyramide :"

# 	i = 1
# 		taille_ligne = ((2 * nombre2) - 1)
# 		taille_cote = ((taille_ligne - 1) / 2)

# 	nombre2.times do 
# 	 puts "#{(" " * taille_cote) + ('#' * i) + (" " * taille_cote)}"
# 		i = i + 2
# 		taille_cote = taille_cote - 1
# 	end
# end

# full_pyramid

def full_pyramid
	affichage_et_calcul(demande_nombre)
end

def demande_nombre
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"
	print "> "
	nombre = Integer(gets) rescue false

	while nombre == false || nombre < 1 || nombre > 25
	puts "Choisis un nombre entre 1 et 25 et impair stp"
	print "> "
	nombre = Integer(gets) rescue false
	end
	return nombre
end

def affichage_et_calcul (nombre2)
	puts "Voici la pyramide :"

	i = 1
		taille_ligne = ((2 * nombre2) - 1)
		taille_cote = ((taille_ligne - 1) / 2)
		half = (nombre2 - 1) / 2
		k = 1
	if k =< half do
	 puts "#{(" " * taille_cote) + ('#' * i) + (" " * taille_cote)}"
		i = i + 2
		taille_cote = taille_cote - 1
		k = k + 1
	else 
	 puts "#{(" " * taille_cote) + ('#' * i) + (" " * taille_cote)}"
		i = i + 2
		taille_cote = taille_cote - 1
	end
end

full_pyramid