require "xarozed_name_generator/version"
require "xarozed_name_generator/markov_dict"


module XarozedNameGenerator
    class NameGenerator
        def initialize(chainlen=2, max_len=9)
            if chainlen > 1 and chainlen < 10
                path = File.dirname(__FILE__) + "/names/male_and_neutral"
                name_list = File.readlines(path).join.split(" ")
                @chainlen = chainlen
                @max_len = max_len
                @markov_dict = MarkovDict.new

                name_list.collect do |name|
                    s = ' ' * chainlen + name
                    (0..name.length).each do |i|
                        @markov_dict.add_key(s[i...i+chainlen], s[i+chainlen])
                    end
                    @markov_dict.add_key(s[name.length...name.length+chainlen], '\n')
                end
            else
                raise ArgumentError, "Wrong chain length: #{chainlen}. Must be > 1 and < 10."
            end
        end

        def name
            prefix = ' ' * @chainlen
            name = ''
            suffix = ''

            while true
                suffix = @markov_dict.get_suffix(prefix)
                if (suffix == '\n') or (name.length > @max_len)
                    break
                else
                    name += suffix
                    prefix = prefix[0...@chainlen-1] + suffix
                end
            end

            return name.capitalize
        end
    end
end
