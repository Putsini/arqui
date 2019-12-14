class Player
    attr_accessor :id, :name, :pass, :lvl
    def initialize (id,name,pass)
        @id = id
        @name = name
        @pass = pass
        @lvl = 1
    end

    def lvl_up
        @lvl += 1
        #return @lvl
    end

    def lvl_down
        @lvl -= 1
        if @lvl <= 0
            @lvl = 1
        end
        #return @lvl
    end
end