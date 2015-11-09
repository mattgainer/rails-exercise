class PagesController < ApplicationController
  def fortune
    fort = rand(4)
    if fort == 0
      @fortune = "You are going to have a good day today!!!"
    elsif  fort == 1
      @fortune = "The weather will be close to your preferred weather pattern."
    elsif fort == 2
      @fortune = "Don't go outside today, you will attract bad things to you."
    else
      @fortune = "Nothing particularly bad will happen today, but nothing particularly good will either."
    end
  end
  def random_number
    @random_number = rand(100).to_s
    puts @random_number
  end
  def page_views
    @page_views += 1
  end
  def beer
    bottles = 99
    @beer = []
    while bottles > 0
      @beer << "#{bottles} Bottles of Beer on the Wall, #{bottles} of Beer!"
      @beer << "Take One Down, Pass it around, #{bottles - 1} Bottles of Beer on the Wall!"
      bottles -= 1
    end
  end
  def lotto
    @lotto = [rand(100),rand(100),rand(100),rand(100),rand(100)]
  end
  def accounts
    @accounts = [
      {"first_name" => "Mark",
      "last_name" => "Richardson",
      "email" => "m.richardson@gmail.com",
      "account_number" => rand.to_s[2..12]},
      {"first_name" => "Luke",
      "last_name" => "Evans",
      "email" => "l.evans@gmail.com",
      "account_number" => rand.to_s[2..12]},
      {"first_name" => "Matt",
      "last_name" => "Gainer",
      "email" => "m.gainer@gmail.com",
      "account_number" => rand.to_s[2..12]},
    ]
  end
end
