class FIO
    @name = "1"
    @surname = "2"
    @fathname = "3"
    def initialize(args)
        splitted = args.split(/\W+/)
        if splitted.size > 0 then
            @surname = splitted[0]
            @name = splitted[1]
            if splitted.size > 2 then
                @fathname = splitted[2]
            else
                @fathname = "4"
            end
        end
    end
    
    def get_name()
        return @name
    end
    def set_name(new_name)
        @name = new_name
    end

    def get_sname()
        return @surname
    end
    def set_sname(new_sname)
        @surname = new_sname
    end

    def get_fname()
        return @fathname    
    end
    def set_fname(new_fname)
        @fathname = new_fname
    end

end

str = 'Anton    Antons  ;;;;;;;'
for i in "".split(/\W+/)
    puts(i)
end