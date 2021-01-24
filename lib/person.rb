# your code goes here
class Person
    attr_accessor :bank_account
    attr_reader :name
    attr_writer :happiness, :hygiene
    def initialize(name)
        @name=name
        @bank_account=25
        @happiness=8
        @hygiene=8
    end
    def hygiene
        if @hygiene>10
            @hygiene=10
        elsif @hygiene<0
            @hygiene=0
        end
        @hygiene
    end
    def happiness
        if @happiness>10
            @happiness=10
        elsif @happiness<0
            @happiness=0
        end
        @happiness
    end
    def clean?
        return @hygiene>7
    end
    def happy?
        return @happiness>7
    end
    def get_paid(salary)
        self.bank_account=(@bank_account+salary)
        return "all about the benjamins"
    end
    def take_bath
        self.hygiene=(@hygiene+4)
        if @hygiene>10
            self.hygiene=(10)
        end
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.hygiene=(@hygiene-3)
        if @hygiene<0
            self.hygiene=(0)
        end
        self.happiness=(@happiness+2)
        if @happiness>10
            self.happiness=(10)
        end
        return "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        friend.happiness=(friend.happiness+3)
        self.happiness=(@happiness+3)
        if friend.happiness>10
            friend.happiness=(10)
        end
        if self.happiness>10
            self.happiness=(10)
        end
        return "Hi #{friend.name}! It's #{@name}. How are you?"
    end
    def start_conversation(friend, topic)
        if topic == "politics"
            friend.happiness=(friend.happiness-2)
            self.happiness=(@happiness-2)
            if friend.happiness<0
                friend.happiness=(0)
            end
            if self.happiness<0
                self.happiness=(0)
            end
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            friend.happiness=(friend.happiness+1)
            self.happiness=(@happiness+1)
            if friend.happiness>10
                friend.happiness=(10)
            end
            if self.happiness>10
                self.happiness=(10)
            end
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end