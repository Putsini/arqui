require_relative 'player'

player_base = Array.new(0,Player) #creada la playerbase
id_counter = 1

def add_player (name,pass) #agrega un player
    p = Player.new(id_counter,name,pass)
    player_base.push(p)
    id_counter += 1
end

def get_p_index (id,name,pass) #devuelve el index del player
    for i in 0...player_base.size do
        if player_base[i].id == id
            if player_base[i].name = name and player_base[i].pass = pass
                puts i
                return i
            else
                puts "error: name OR pass"
            end
        end
    end
    puts "no match"
    return -1
end

def attack (id,name,pass) #ataca al player del frente. if p_lvl > enemy_lvl => avanza un puesto, else get_killed
    ind = get_p_index(id,name,pass)
    if ind > 0
        if player_base[ind].lvl > player_base[ind-1].lvl
            player_base.delete_at(ind-1)
            player_base[ind].lvl_down
            puts "KILL"
        else player_base[ind].lvl < player_base[ind-1].lvl
            player_base.delete_at(ind)
            puts "GAME OVER"
        end
    end
end

