# trees.rb
#
# Definición de Árboles
#
# Cada Arbol incorpora 2 Modulos, para operaciones utilizando el algoritmo de
# DFS y BFS respectivamente
# 
# Autores : Jonnathan Ng
#           Joel Rivas
require_relative 'mod_bfs'
require_relative 'mod_fold'

class ArbolBinario
    include BFS
    include Fold
    attr_accessor :valor
    def initialize(valor, izq=nil, der=nil)
        @valor = valor
        @izq, @der = izq, der
    end

    def each
        if @izq != nil
            yield @izq
        end
        if @der != nil
            yield @der
        end
    end

    def mutar(mutador)
        @valor = @valor.mutar(mutador)
    end

    def to_s
        "arbol_b_#{@valor}"
    end

end

class ArbolRosa
    include BFS
    include Fold
    attr_accessor :valor
    def initialize(valor, *hijos)
        @valor = valor
        @hijos = hijos
    end

    def each
        @hijos.each do |i|
            yield i
        end
    end

    def mutar(mutador)
        @valor = @valor.mutar(mutador)
    end

    def to_s
        "arbol_r_#{@valor}"
    end
end