module XarozedNameGenerator
    class MarkovDict
        def initialize
            @markov_dict = Hash.new
            @markov_dict.default = Array.new
        end
    
        def add_key(prefix, suffix)
            if not @markov_dict.has_key?(prefix)
                @markov_dict[prefix] = [suffix]
            else
                @markov_dict[prefix].push(suffix)
            end
        end
    
        def get_suffix(prefix)
            return @markov_dict[prefix].sample
        end
    end
end
