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
        @subject_array = [
            "malt that ",
            "rat that ",
            "cat that ",
            "dog that ",
            "cow with the crumpled horn that ",
            "maiden all forlorn that ",
            "man all tattered and torn that ",
            "priest all shaven and shorn that ",
            "rooster that crowed in the morn that ",
            "farmer sowing his corn that ",
            "horse and the hound and the horn that ",
        ]
        @verb_array = [
            "lay in the ",
            "ate the ",
            "killed the ",
            "worried the ",
            "tossed the ",
            "milked the ",
            "kissed the ",
            "married the ",
            "crowed in the morn that woke the ",
            "kept the ",
            "belonged to the ",
        ]
    end

    def assemble_segments(subjects = @subject_array, verbs = @verb_array)
        temp_array = Array.new(subjects.length) {|i| (subjects[i] + verbs[i])}
        ["If you can read this, something has gone wrong",
            "",
            temp_array].flatten
    end

    def self.random
        new_house = self.new
        new_house.randomize
    end

    def randomize
        temp_array = []
        loop do
            temp_array = @segment_array.slice(2, @segment_array.length)
            temp_array = temp_array.shuffle
            temp_array = [@segment_array.slice(0, 1), temp_array].flatten
            break if temp_array != @segment_array
        end
        @segment_array = temp_array
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