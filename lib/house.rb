class House

    def initialize()
        @segment_array = [
            "If you can read this, something has gone wrong",
            "",
            "malt that lay in the ",
            "rat that ate the ",
            "cat that killed the ",
            "dog that worried the ",
            "cow with the crumpled horn that tossed the ",
            "maiden all forlorn that milked the ",
            "man all tattered and torn that kissed the ",
            "priest all shaven and shorn that married the ",
            "rooster that crowed in the morn that woke the ",
            "farmer sowing his corn that kept the ",
            "horse and the hound and the horn that belonged to the ",
        ]
    end

    def randomize
        temp_array = @segment_array.slice(2, @segment_array.length)
        temp_array = temp_array.shuffle
        @segment_array = [@segment_array.slice(0, 1), temp_array].flatten
    end

    def line(number)
        "This is the #{assemble_line(number)}house that Jack built.\n"
    end

    def assemble_line(number)
        number.downto(1).collect { |i| @segment_array[i] }.join("")
    end

    def recite()
        1.upto(12).collect { |i| line(i) }.join("\n")
    end
end 

class PirateHouse < House
    def line(number)
        "Thar be the #{assemble_line(number)}house that Jack built.\n"
    end
end