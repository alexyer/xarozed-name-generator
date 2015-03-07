require "xarozed_name_generator/version"
require "xarozed_name_generator/markov_dict"


module XarozedNameGenerator
    class NameGenerator
        def initialize(chainlen=2, max_len=9)
            if chainlen > 1 and chainlen < 10
                
            else
                raise ArgumentError, "Wrong chain length: #{chainlen}. Must be > 1 and < 10."
            end
        end
    end
end
