
#Problem Description

# You write a class called Wrapper, that has a single static function named wrap that takes two arguments, a string, and a column number. The function returns the string, but with line breaks inserted at just the right places to make sure that no line is longer than the column number. You try to break lines at word boundaries.

# Like a word processor, break the line by replacing the last space in a line with a newline.

class Wrapper

    def wrap(string, col_num) #Parameters are the string and col_num 


        return string if string.length <= col_num #Returns the string with line breaks if the line is no longer than the column number

        string.split(" ").join("\n") #Replaces the last space in the line with a new line

        #If a string is longer than the column number, the string will split in places based on the set column number. 

        # This is where the word wraps on the space. This where the string breaks whetwher is there is space or not. 
        break_col = [0...col_num].index(" ") || col_num
        string[0...break_col].strip + 
         "\n" +
        wrap(string[break_col..-1].strip, col_num)

end
end

word_wrap = Wrapper.new #Creates a new wrapper

puts word_wrap.wrap("word word word", 5) #Outputs the results