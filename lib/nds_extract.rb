$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  dir_index = 0
  totals = {}

  while dir_index < nds.length do
    dir_name = nds[dir_index][:name]
    totals[dir_name] = 0
    movie_index = 0

    while movie_index < nds[dir_index][:movies].length do
      totals[dir_name] += nds[dir_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end

    dir_index += 1
  end

  totals
  
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
 # result = {}
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  #nil
end
