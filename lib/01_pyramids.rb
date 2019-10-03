    def pyramid_input
    puts "Quelle hauteur doit faire la pyramide ?"
    puts "(nombre entier compris entre 1 et 25)"
    begin
        print ">>"
        height = Integer(gets) rescue 0
    end while height > 25 || height < 1
    return height
end