# your code goes here
class Person

    attr_reader :name, :happiness, :hygiene

    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end


    def happiness=(num)
        @happiness = num.clamp(0, 10)
        #if (happiness > 10) && (happiness < 0)
        #    @happiness = num
        #end
        #happiness
    end

    def hygiene=(num)
        @hygiene  = num.clamp(0, 10)
    end

    def happy?
        if @happiness > 7
            true
        elsif @happiness <= 7
            false
        end
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(amount)
        @bank_account = @bank_account + amount
        "all about the benjamins"
    end

    def take_bath
        if(@hygiene < 10 )
            self.hygiene += 4
        end
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic 
        when "politics"
          [self, friend].each { |person| person.happiness -= 2 }
          "blah blah partisan blah lobbyist"
        when "weather"
          [self, friend].each { |person| person.happiness += 1 }
          "blah blah sun blah rain"
        else
          "blah blah blah blah blah"
        end
      end
end