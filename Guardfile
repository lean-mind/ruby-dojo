# A sample Guardfile
# More info at https://github.com/guard/guard#readme

## Uncomment and set this to only include directories you want to watch
# directories %w(app lib config test spec features) \
#  .select{|d| Dir.exists?(d) ? d : UI.warning("Directory #{d} does not exist")}

## Note: if you are using the `directories` clause above and you are not
## watching the project directory ('.'), then you will want to move
## the Guardfile to a watched dir and symlink it back, e.g.
#
#  $ mkdir config
#  $ mv Guardfile config/
#  $ ln -s config/Guardfile .
#
# and, you'll have to watch "config/Guardfile" instead of "Guardfile"


guard :rspec, {
  :cmd => 'bundle exec rspec --color',
  :all_after_pass => false,
  :all_on_start => false,
  :failed_mode => :keep
} do
  watch('spec/spec_helper.rb')                                               { "spec" }
  watch(%r{^spec/.+\.rb})                                                    { |m| m[0] }
  watch(%r{^src/(.+)\.rb})                                                   { |m| "spec/#{m[1]}_spec.rb" }
end