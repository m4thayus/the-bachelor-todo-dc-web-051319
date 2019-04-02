require "pry"

def get_first_name_of_season_winner(data, season)
    winner = ""
    data[season].each do |names|
        names["status"] == "Winner" ? winner = names["name"] : nil
    end
    winner.split[0]
end

def get_contestant_name(data, occupation)
    data.each do |seasons, contestants|
        contestants.each do |names|
            if names["occupation"] == occupation
                return names["name"]
            end
        end
    end
end

def count_contestants_by_hometown(data, hometown)
    count = 0
    data.each do |seasons, contestants|
        contestants.each do |names|
            names["hometown"] == hometown ? count += 1 : nil
        end
    end
    count
end

def get_occupation(data, hometown)
    data.each do |seasons, contestants|
        contestants.each do |names|
            if names["hometown"] == hometown 
                return names["occupation"]
            end
        end
    end
end

def get_average_age_for_season(data, season)
    ages = []
    data[season].each do |contestants|
        ages << contestants["age"].to_i
    end
    (ages.sum / ages.length.to_f).round
end
