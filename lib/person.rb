require 'pry'

class Person
    attr_reader :name, :bank_account, :happiness, :hygiene
    
    def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end
    
    def bank_account=(value)
      @bank_account = value
    end
    
    def happiness=(value)
      @happiness = [10, [0, value].max].min
    end
    
    def hygiene=(value)
      @hygiene = [10, [0, value].max].min
    end
    
    def clean?
      hygiene > 7
    end
    
    def happy?
      happiness > 7
    end
    
    def get_paid(amount)
      self.bank_account += amount
      "all about the benjamins"
    end
    
    def take_bath
      self.hygiene += 4
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
      "Hi #{friend.name}! It's #{name}. How are you?"
    end
    
    def start_conversation(friend, topic)
      if topic == "politics"
        self.happiness -= 2
        friend.happiness -= 2
        "blah blah partisan blah lobbyist"
      elsif topic == "weather"
        self.happiness += 1
        friend.happiness += 1
        "blah blah sun blah rain"
      else
        "blah blah blah blah blah"
      end
    end
  end
  
#binding.pry