class Pelicula < ApplicationRecord

    def self.buscar(texto)
        if texto and !texto.empty?
          pelicula_encontrada = Pelicula.where("name LIKE ? or name LIKE ?", "#{texto.capitalize}%", "%#{texto.downcase}%"
          )
          if pelicula_encontrada
            pelicula_encontrada
          else
            Pelicula.all
          end
        else
          Pelicula.all
        end
      end
end
