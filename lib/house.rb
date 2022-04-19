class House

    @@phrase_list = [
            "",
            "the house that Jack built",
            "the malt that lay in",
            "the rat that ate",
            "the cat that killed",
            "the dog that worried",
            "the cow with the crumpled horn that tossed"
        ]

    def line(number, pirate = false)
        "#{pirate ? "Thar be" : "This is"} #{inner_text(number)}.\n"
    end

    def inner_text(number)
        case number
        when 1
            @@phrase_list[number]
        when 2
            "#{@@phrase_list[number]} #{inner_text(number - 1)}"
        when 3
            "#{@@phrase_list[number]} #{inner_text(number - 1)}"
        when 4
            "#{@@phrase_list[number]} #{inner_text(number - 1)}"
        when 5
            "#{@@phrase_list[number]} #{inner_text(number - 1)}"
        when 6
            "#{@@phrase_list[number]} #{inner_text(number - 1)}"
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

    def recite(pirate = false)
        1.upto(12).collect { |i| line(i, pirate) }.join("\n")
    end
end