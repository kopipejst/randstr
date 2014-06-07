# Simple random string generator
class Randstr
    # Make random string
    # @param [Integer] len length of random string
    # @param [String] type types of charachters in random string
    # @return [String] random string
    def self.make(len = 20, type = "numbers_uppercases_lowercases")

        types = {
            'numbers' => '0123456789',
            'uppercases' => 'ABCDEFGHIJKLMNOPQRSTUVWXYZ',
            'lowercases' => 'abcdefghiklmnopqrstuvwxyz'
        }

        choice = ''
        ret = ''
        type = type.split('_')

        for i in 0..type.length
            choice += types[type[i]].to_s
        end

        for i in 0..len-1
            ret += choice[Random.rand(choice.length)]
        end

        return ret
    end
end