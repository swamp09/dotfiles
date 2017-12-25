# Create an alias for a quick exit
alias q exit

# Auto-complete for method names and such
require 'irb/completion'

# Awesomeprint replaces irb's default pretty printing with fancier formatting
require "awesome_print"
AwesomePrint.irb!

# Loads simple IRB (without RVM notice)
IRB.conf[:PROMPT_MODE] = :SIMPLE

# A method for clearing the screen
def clear
  system('clear')
end

# readline
require 'readline'
IRB.conf[:USE_READLINE] = true

# indent
IRB.conf[:AUTO_INDENT] = true

# colorize
require 'wirb'
Wirb.start
