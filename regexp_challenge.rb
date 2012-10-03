#!/usr/bin/env ruby


root = File.dirname(File.expand_path $0)
::File.open( "#{root}/data.txt", "rb"){ |f| @contents = f.read }

# not_decimal_or_line_return [^\d\r\n]

float_regexp     = /\d+.\d+e-?\d+/
decimal      = /(\d+.\d+)/
text         = /(\w[^\d\r\n]+[\w\)])/


search = /\s*#{text}\s+#{decimal}\s+#{decimal}/


result  = @contents.scan( search )
#result  = %{name 9.9 9.9 
#bad text 
#nme two 10.2 45.6}.scan( search )

puts result.inspect
