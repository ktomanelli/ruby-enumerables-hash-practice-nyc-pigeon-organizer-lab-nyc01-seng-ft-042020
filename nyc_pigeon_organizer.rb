
    pigeon_data = {
        :color => {
          :purple => ["Theo", "Peter Jr.", "Lucky"],
          :grey => ["Theo", "Peter Jr.", "Ms. K"],
          :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
          :brown => ["Queenie", "Alex"]
        },
        :gender => {
          :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
          :female => ["Queenie", "Ms. K"]
        },
        :lives => {
          "Subway" => ["Theo", "Queenie"],
          "Central Park" => ["Alex", "Ms. K", "Lucky"],
          "Library" => ["Peter Jr."],
          "City Hall" => ["Andrew"]
        }
      }

def nyc_pigeon_organizer(data)
    # write your code here!
    male = data[:gender][:male].reduce({}) do |memo,(key,value)|
        memo[key] = {}
        memo[key][:gender] = {"male"}
        memo
    end
    female = data[:gender][:female].reduce({}) do |memo,(key,value)|
        memo[key] = {}
        memo[key][:gender] = {"female"}
        memo
    end
    
    pigeons = male.merge(female)

    data[:color].reduce(nil) do |memo,(key,value)|
        value.length.times do |i|
            if(pigeons.has_key?(value[i]))
                if(!pigeons[value[i]][:color])
                    pigeons[value[i]][:color]=[]
                end
                pigeons[value[i]][:color].push(key.to_s)
            end
        end
    end
pigeons
end

