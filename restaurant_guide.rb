class Guide
  
  def initialize(path=nil)
    # locate the restaurant text file at path
    # or create a new file
    # exit if create fails
  end
  
  def launch!
    introduction
    action
    # what do you want to do (list, find, add, quit)
    # do that action
    # repeat until user quits
    conclusion
  end
  
  def introduction
    space = 50
    puts "\n\n<<< Welcome To The Restaurant Finder >>> \n\n"
    puts "This is an interactive guide to help you find the food you crave.\n\n"
  end
  
  def action
    restaurants = []
    # need to add the hash to the array
    restaurant_list = {}
    
    puts "What would you like to do? (list, find, add, quit)"
    # reply = gets.chomp
    while (input = gets)
      
      case input.chomp.downcase   
        when 'list'
          puts restaurants
          puts restaurants.inspect
        when 'find'
          puts "test find"
        when 'add'
          puts 'What is the name of the restaurant you would like to add?'
            restaurant_name = gets.chomp.capitalize
          puts 'Enter Average Cost: '
            cost = gets.chomp.to_i
          puts 'What type of cuisine is it?'
            cuisine = gets.chomp.capitalize
            
            # need to work out how to add the cuisine type & hash to a new array within an array.
            
                    
            restaurant_list[restaurant_name] = cost
            restaurants.push([cuisine, restaurant_list])
                        
            #puts restaurant_list
            #restaurants.inspect
            #x = restaurants.push(restaurants.push(cuisine, restaurant_list)).pop
            #restaurants.push(x)
            #restaurants.inspect
        when 'quit'
          break
      end
      puts "What would you like to do? (list, find, add, quit)"   
    end
  end
  
  
  def conclusion
    puts "Thank you and Bon Appetit!"
    exit
  end
  
end

guide = Guide.new
guide.launch!
