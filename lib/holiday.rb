require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
 holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  holiday_hash[:winter].each do |holiday, items|
    items.push(supply)
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

  holiday_hash[:spring][:memorial_day][1] = supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash


  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.map do |name_of_holiday, supplies|
      name_of_holiday = name_of_holiday.to_s.split('_')
      #puts name_of_holiday.class #=> all are arrays
      new_item = ''
      name_of_holiday.map do |item|
        new_item << " #{item.capitalize}"
        #puts "  #{item}: #{supplies.join(', ')}"
      end
      puts " #{new_item}: #{supplies.join(', ')}"
      #puts name_of_holiday
    end
    
  end



  # holiday_hash.each do |season, holiday|
  #   puts "#{season.capitalize}:"
  #   holiday.map do |name_of_holiday, supplies|
  #     name_of_holiday = name_of_holiday.to_s
  #     name_of_holiday.each_char do |char|
  #       if char == '_'
  #         name_of_holiday['_'] = ' '
  #       end
  #     end
  #     #name_of_holiday = name_of_holiday.split(' ')
      
  #     puts "  #{name_of_holiday.capitalize}: #{supplies.join(", ")}"
  #   end
  # end
end








def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  new_arr = []
  holiday_hash.each do |season, holiday_name|
    holiday_name.each do |name, supplies|
      supplies.each do |item|
        if item == "BBQ"
          new_arr << name
        end
      end
    end
  end
new_arr
end



holiday_hash = 
{
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }

  all_holidays_with_bbq(holiday_hash)
