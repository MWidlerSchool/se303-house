class House

    @@segment_array = [
        "",
        "malt that lay in the ",
        "rat that ate the malt that lay in the ",
        "cat that killed the rat that ate the malt that lay in the ",
        "dog that worried the cat that killed the rat that ate the malt that lay in the ",
        "cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the ",
        "maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the ",
    ]

    def line(number)
        "This is the #{line_difference(number)}house that Jack built.\n"
    end

    def line_difference(number)
        if number <= @@segment_array.length
            return @@segment_array[number - 1]
        end
        case number
        when 12
            "horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the "
        when 11
            "farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the "
        when 10
            "rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the "
        when 9
            "priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the "
        when 8
            "man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the "
        end
    end

    def recite()
        1.upto(12).collect { |i| line(i) }.join("\n")
    end
end 