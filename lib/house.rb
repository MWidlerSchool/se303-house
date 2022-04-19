class House

    @@phrase_list = [
            "the house that Jack built",
            "the malt that lay in",
            "the rat that ate",
            "the cat that killed",
            "the dog that worried",
            "the cow with the crumpled horn that tossed",
            "the maiden all forlorn that milked",
            "the man all tattered and torn that kissed",
            "the priest all shaven and shorn that married",
            "the rooster that crowed in the morn that woke",
            "the farmer sowing his corn that kept",
            "the horse and the hound and the horn that belonged to",
        ]
    def randomized_phrase_list()
        phrase_list = @@phrase_list.drop(1)
        phrase_list = phrase_list.shuffle
        phrase_list.insert(0, @@phrase_list[0])
    end

    def line(number, pirate = false, phrase_list = @@phrase_list)
        "#{pirate ? "Thar be" : "This is"} #{inner_text(number, phrase_list)}.\n"
    end

    # calling directly always uses unmodified phrase list
    def inner_text(number, phrase_list = @@phrase_list)
        begin
            if number == 1
                phrase_list[number - 1]
            else
                "#{phrase_list[number - 1]} #{inner_text(number - 1)}"
            end
        rescue
            "no line found for #{number}"
        end
    end

    def recite(pirate = false, randomize = false)
        phrase_list = randomize ? randomized_phrase_list() : @@phrase_list
        1.upto(12).collect { |i| line(i, pirate, phrase_list) }.join("\n")
    end
end