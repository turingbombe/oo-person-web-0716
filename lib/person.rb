# your code goes here
require "pry"
class Person
  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def happy?
    @happiness > 7 ? true : false
  end

  def hygiene=(hygiene)
    @hygiene = hygiene
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene =0
    end
  end

  def happiness=(happiness)
    @happiness = happiness
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness =0
    end
  end

  def get_paid(income)
    @bank_account += income
    'all about the benjamins'
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene=(@hygiene-3)
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    person.happiness=(person.happiness+3)
    self.happiness=(self.happiness+3)
    "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    @person = person
    if topic == "politics"
      self.politics
    elsif topic == "weather"
      self.weather
    else
      self.other
    end
  end

  def politics
    self.happiness=(@happiness - 2)
    @person.happiness=(@person.happiness - 2)
    "blah blah partisan blah lobbyist"
  end

  def weather
    self.happiness=(@happiness+1)
    @person.happiness=(@person.happiness+1)
    'blah blah sun blah rain'
  end

  def other
    'blah blah blah blah blah'
  end

end