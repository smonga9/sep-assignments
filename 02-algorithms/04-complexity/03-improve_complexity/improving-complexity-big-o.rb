require 'benchmark'
require_relative './poorly_written_ruby'
require_relative './improving_complexity_version_one'
require_relative './improving_complexity_version_two'
require_relative './improving_complexity_version_three'

include Benchmark

# Test variables
array_1 = [1,3,5,7,9,98,87,76,65,54,43,32,21]
array_2 = [10, 13, 03, 20, 01, 13, 07, 04]
array_3 = [10945, 2057, 19067, 2134, 19808]
bm_array_1 = 050.times.map{ 1 + Random.rand(0..1000) }
bm_array_2 = 100.times.map{ 1 + Random.rand(0..1000) }
bm_array_3 = 200.times.map{ 1 + Random.rand(0..1000) }

# Test the code runs
#print "Basic execution test results: \n"
#p poorly_written_ruby(array_1, array_2, array_3)
#p version_one(array_1, array_2, array_3)
#p version_two(array_1, array_2, array_3)
#p version_three(array_1, array_2, array_3)

# Benchmark test
print "\nBenchmark test\n"
Benchmark.benchmark(CAPTION, 35, FORMAT) do |x|
	x.report("Poorly written ruby code            ") {
      poorly_written_ruby(bm_array_1, bm_array_2, bm_array_3)
  }
	x.report("Improving complexity version one    ") {
      version_one(bm_array_1, bm_array_2, bm_array_3)
  }
  x.report("Improving complexity version two    ") {
      version_two(bm_array_1, bm_array_2, bm_array_3)
  }
	x.report("Improving complexity version three  ") {
      version_three(bm_array_1, bm_array_2, bm_array_3)
  }
end

# Find the Big-O of each version and write your work and solution in a file
# named improving-complexity-big-o.rb

print "\npoorly_written_ruby.rb has an O(n^2) notation, \n"
print "\tworst-case scenario for the unsorted array and  \n"
print "\tthe while loop are O(n)\n"

print "\nThe version one code optimization shows a varied difference \n"
print "\tin runtime, the Big-O notation remains at O(n^2) \n"

print "\nThe version two changes still has a Big-O notation of O(n^2) \n"
print "\t with a slightly improved runtime from poorly...rb\n"

print "\nThe new Heap sort algorithm has degraded Big-O notation to \n"
print "\tO(n log n) but has greatly improved the runtime\n"
