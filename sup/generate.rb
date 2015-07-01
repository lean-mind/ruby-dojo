require "active_support/inflector"

def route_from_constant(_class_name)
  _class_name.split('::').map(&:underscore)
end

def generate(_route, _contents)
  path = _route[0...-1].join(File::SEPARATOR)
  dir = Pathname.new path
  dir.mkpath unless dir.exist?

  puts "Generating #{_route.join(File::SEPARATOR)}"

  File.write _route.join(File::SEPARATOR), _contents
end

# load paths

work_dir = File.expand_path('../../', __FILE__)
class_name = ARGV.first
rel_route = route_from_constant class_name

class_route = [work_dir, 'src'] + rel_route[0...-1] + [rel_route.last + '.rb']
spec_route = [work_dir, 'spec'] + rel_route[0...-1] + [rel_route.last + '_spec.rb']

# generate files

generate(class_route, "\
class #{class_name}
end
")

generate(spec_route, "\
require 'spec_helper'

describe #{class_name} do

  pending \"put your #{class_name} examples here\"

end
")
