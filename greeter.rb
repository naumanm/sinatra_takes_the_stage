# greeter.rb

class Greeter
  def greet
	"this is a test"
  end

  def quote(tag)
    tacos = {
  	  :alcohol => [
  	    "test1", 
  	    "test2"
  	  ],
  	  :women => [
  	    "testA",
  	    "testB"
	  ],
	  :life => [
	    "good",
	    "bad",
	    "awesome",
	    "Sanatratastic"
	  ]
	}

	if (tag) == 'alcohol' or 'women' or 'life'

      my_quotes = tacos[(tag).to_sym]

      tacos2 = [
        "<p>#{tacos[(tag).to_sym]}</p>",
        #	we need a an each that maps with a pipe
        # "<p>#{myQuotes.each do |quote| 
        #   puts quote 
        #   end}
        # </p>",
        #{}"<img src=" + "#{send_file " + './me.jpg'" + ">",
        "<p>test2</p>"
      ]
	else
	  "<p>nope</p>"
	end

#   experiments

#   these work
#   "<p>#{tag}</p>"
#   "<p>#{tacos[:life]}</p>"
#   "<p>#{tacos[(tag).to_sym]}</p>"


#   these do not
#   "<p>#{test}</p>"
#   "<p>#{tacos[tag]}</p>"
#   "<p>#{tacos[:tag]}</p>"
#   "<p>#{quote[tacos[param[tag]]]}}</p>"
 


  end
end