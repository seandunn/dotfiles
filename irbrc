# print SQL to STDOUT
if ENV.include?('RAILS_ENV') && !Object.const_defined?('RAILS_DEFAULT_LOGGER')
  require 'logger'
  RAILS_DEFAULT_LOGGER = Logger.new(STDOUT)
end

# Autocomplete
require 'irb/completion'

# Prompt behavior
ARGV.concat [ "--readline", "--prompt-mode", "simple" ]

# History
require 'irb/ext/save-history'
IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"

# Easily print methods local to an object's class
class Object
  def local_methods
    (methods - Object.instance_methods).sort
  end
end

# copy a string to the clipboard
def pbcopy(string)
  `echo "#{string}" | pbcopy`
  string
end

# Utility Belt
# require 'rubygems'
# require 'utility_belt'


# Awesome Print
# require "rubygems"
# require "ap"

# unless IRB.version.include?('DietRB')
#   IRB::Irb.class_eval do
#     def output_value
#       ap @context.last_value
#     end
#   end
# else # MacRuby
#   IRB.formatter = Class.new(IRB::Formatter) do
#     def inspect_object(object)
#       object.ai
#     end
#   end.new
# end
# 
