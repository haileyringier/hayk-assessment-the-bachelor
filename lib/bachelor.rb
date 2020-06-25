

# def find_season season, season_number
#   season.select {|seasons| season == season_number} 
# end



def get_first_name_of_season_winner bachelor, season_number
  winner = ""
    bachelor[season_number].find do |contestant|
      if contestant["status"] == "Winner"
       winner = contestant["name"].split[0]
      end
    end
  winner
end

def get_contestant_name bachelor, occupation
  name = ""
  bachelor.find do |seasons, contestants|
    contestants.find do |contestant|
      if contestant["occupation"] == occupation
       name = contestant["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(bachelor, hometown)
count = 0
  bachelor.each do |seasons, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
      count = count + 1
      end
    end
  end
count
end

# def count_contestants_by_hometown
#   total = 0
#   bachelor.each do 
#     contestants.reduce(0) do
#       if contestant

def get_occupation(bachelor, hometown)
  job = ""
  bachelor.find do |season, contestants|
    contestants.find do |contestant|
      if contestant["hometown"] == hometown
        job = contestant["occupation"]
      end
    end
  end
  job
end

def get_average_age_for_season(bachelor, season)
sum = 0
count = 0
  bachelor[season].each do |contestant|
    sum = sum + contestant["age"].to_f
    count +=1
  end
  average = sum / count 
  return average.round(0)
end
