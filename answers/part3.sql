/* What is each pokemon's primary type? */
SELECT pokemons.name, types.name FROM pokemons JOIN types ON pokemons.primary_type = types.id;

/* What is Rufflet's secondary type? */
SELECT pokemons.name, types.name FROM pokemons JOIN types ON pokemons.secondary_type = types.id WHERE pokemons.name = 'Rufflet';

/* What are the names of the pokemon that belong to the trainer with trainerID 303? */
SELECT pokemons.name FROM pokemons JOIN pokemon_trainer on pokemons.id = pokemon_id WHERE trainerID = 303;

/* How many pokemon have a secondary type Poison */
SELECT COUNT(pokemons.name) FROM pokemons INNER JOIN pokemon.types ON pokemons.secondary_type = pokemon.types.id WHERE pokemon.types.name = "Poison";

/* What are all the primary types and how many pokemon have that type? */
SELECT pokemon.types.name, COUNT(*) FROM pokemons INNER JOIN pokemon.types ON pokemons.primary_type = pokemon.types.id GROUP BY pokemon.types.name;

/* How many pokemon at level 100 does each trainer with at least one level 100 pokemon have? (Hint: your query should not display a trainer */
SELECT COUNT(pokemon_id), trainerID FROM pokemon_trainer WHERE pokelevel = 100 GROUP BY trainerID;

/* How many pokemon only belong to one trainer and no other? */
SELECT pokemons.name, COUNT(*) FROM pokemon_trainer JOIN pokemons ON pokemon_trainer.pokemon_id = pokemons.id GROUP BY pokemon_id HAVING COUNT(trainerID) = 1;