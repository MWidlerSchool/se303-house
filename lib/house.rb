class House

    def line(number, thar = true)
        "This is #{inner_text(number)}.\n"
    end

    def inner_text(number)
        case number
        when 1
            "the house that Jack built"
        when 2
            "the malt that lay in #{inner_text(number - 1)}"
        when 3
            "the rat that ate #{inner_text(number - 1)}"
        when 4
            "the cat that killed #{inner_text(number - 1)}"
        when 5
            "the dog that worried #{inner_text(number - 1)}"
        when 6
            "the cow with the crumpled horn that tossed #{inner_text(number - 1)}"
        when 7
            "the maiden all forlorn that milked #{inner_text(number - 1)}"
        when 8
            "the man all tattered and torn that kissed #{inner_text(number - 1)}"
        when 9
            "the priest all shaven and shorn that married #{inner_text(number - 1)}"
        when 10
            "the rooster that crowed in the morn that woke #{inner_text(number - 1)}"
        when 11
            "the farmer sowing his corn that kept #{inner_text(number - 1)}"
        when 12
            "the horse and the hound and the horn that belonged to #{inner_text(number - 1)}"
        else
            "no line found for #{number}"
        end
    end

    def recite()
        1.upto(12).collect { |i| line(i) }.join("\n")
    end
end