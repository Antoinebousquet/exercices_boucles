#PYRAMIDE COMPLÈTE À L'ENDROIT

# méthode d'obtention de la hauteur
def pyramid_input
    puts "Combien d'étages doit compter la pyramide ?"
    puts "(nombre entier compris entre 1 et 25)"

    begin
        print ">>  "
        height = Integer(gets) rescue 0
    end while height > 25 || height < 1

    return height
end

# méthode de construction et d'impression des lignes
def full_pyramid height
    height.times{ |counter| puts ("#" * (2* (counter + 1) -1)).center(2*height - 1, " ")}
end

def perform_full
    full_pyramid(pyramid_input)
end

perform_full

# MÊME RÉSULTAT QUE LA MÉTHODE pyramide_input MAIS EN COMMENTÉE AU FUR ET À MESURE
# puts "Version explicative (hauteur 3)"

# def pyramid_draw_long(height)
#     puts "height = " + height.to_s
#     length = 2*height - 1
#     puts "length = " + length.to_s
#     height.times do |counter|
#         puts "counter = " + counter.to_s
#         line_number = counter + 1
#         puts "line_number = " + line_number.to_s
#         tags = "#" * (2* line_number -1)
#         puts "tags : " + tags
#         line = tags.center(length, "_")
#         puts "line : " + line
#     end
# end
# 
# pyramid_draw_long(5)


# PYRAMIDE LOSANGEOIDALE

def pyramid_input_odd
    puts "Combien d'étages doit compter le losange ?"
    puts "(nombre entier impair compris entre 1 et 25)"

    begin
        print ">>  "
        height = Integer(gets) rescue 0
    end while height > 25 || height < 1 || height.even?

    return (height/2 +1)
end

def wtf_pyramid height
    (2 * height - 1).times{ |counter| counter < height ? (puts ("#" * (2* (counter + 1) -1)).center(2*height - 1, " ")) : (puts ("#" * (2 * (2 * height -counter - 1) - 1)).center(2*height - 1, " "))}
end

def perform_wtf
    wtf_pyramid(pyramid_input_odd)
end

perform_wtf