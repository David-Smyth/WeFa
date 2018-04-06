$LOAD_PATH.unshift('./lib')

puts 'loading first time...'
load 'test_load_require.rb'
puts 'loading second time...'
load 'test_load_require.rb'

puts 'requiring first time'
require 'test_load_require'
puts 'requiring second time'
require 'test_load_require'
