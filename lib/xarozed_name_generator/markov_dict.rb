module XarozedNameGenerator
    class MarkovDict
        @makrov_dict = {}

        def initialize
            @markov_dict.default = []
        end

        def add_key(prefix, suffix)
            @markov_dict[prefix.to_sym] << suffix
        end

        def get_suffix(prefix)
            @markov_dict[prefix].sample
        end
    end
end
