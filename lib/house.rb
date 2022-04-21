class House

    def line(number)
        case number
        when 1
            "This is the house that Jack built.\n"
        when 2
            "This is the malt that lay in the house that Jack built.\n"
        when 3
            "This is the rat that ate the malt that lay in the house that Jack built.\n"
        when 4
            "This is the #{line_difference(number)}cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        else
            "This is the #{line_difference(number)}dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        end
    end

    def line_difference(number)
        case number
        when 12
            "horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the "
        when 11
            "farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the "
        when 10
            "rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the "
        when 9
            "priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the "
        when 8
            "man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the "
        when 7
            "maiden all forlorn that milked the cow with the crumpled horn that tossed the "
        when 6
            "cow with the crumpled horn that tossed the "
        else
            ""
        end
    end

    def recite()
        1.upto(12).collect { |i| line(i) }.join("\n")
    end
end 