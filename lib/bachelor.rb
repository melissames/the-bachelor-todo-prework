require 'pry'

def get_first_name_of_season_winner(data, season)
  data.collect { |season_name, contestant_array|
    if season_name.to_s == season
      contestant_array.collect { |contestant_object|
        contestant_object.collect { |categories, category_data|
          if category_data == 'Winner'
            contestant_object.each { |categories2, category_data2|
              if categories2 == 'name'
                return category_data2.split(' ')[0]
              end
            }
          end
        }
      }
    end
  }
end

def get_contestant_name(data, occupation)
  data.collect { |season_name, contestant_array|
    contestant_array.collect { |contestant_object|
      contestant_object.collect { |categories, category_data|
        if category_data == occupation
          contestant_object.collect { |categories2, category_data2|
            if categories2 == 'name'
              return category_data2
            end
          }
        end
      }
    }
  }
end

def count_contestants_by_hometown(data, hometown)
  hometown_counter = 0

  data.collect { |season_name, contestant_array|
    contestant_array.collect { |contestant_object|
      contestant_object.collect { |categories, category_data|
        if category_data == hometown
          hometown_counter += 1
        end
      }
    }
  }
  hometown_counter
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
