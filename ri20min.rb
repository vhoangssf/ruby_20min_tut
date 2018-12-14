#!/use/bin/env ruby

class MegaGreeter
    attr_accessor :names

    #Create the Object
    def initialize(names = "World")
        @names = names
    end

    #Say hi to everybody
    def say_hi
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("each")
            # @names is a list of some kind, iterate!
            @names.each do |name|
                puts "Hellow #{name}!"
            end
        else
            puts "Hello #{@names}!"
        end
    end

    #Say bye to everybody
    def say_bye
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("join")
            #Join the list elements with commas
            puts "Goodbye #{@names.join(",")}. See you next time!"
        else
            puts "Goodbye #{@names}. See you next time!"
        end
    end
end

if __FILE__ == $0
    mg = MegaGreeter.new
    mg.say_hi
    mg.say_bye

    #Change Name to be "Ezekiel"
    mg.names = "Ezekiel"
    mg.say_hi
    mg.say_bye

    #Change the name to an array of names
    mg.names = ["Albert", "Brenda", "Charles", "Dave", "Theodore"]
    mg.say_hi
    mg.say_bye

    #Change to nil
    mg.names = nil
    mg.say_hi
    mg.say_bye
end
