require 'typhoeus'
require "benchmark"

URL = "http://careersingear.mobi"
HYDRA = Typhoeus::Hydra.new(max_concurrency: 20)

1000.times do
  request = Typhoeus::Request.new(URL, method: :get, timeout: 10000)
  request.on_complete do |response|
    puts response.code
  end
  HYDRA.queue(request)
end

Benchmark.bm(7) do |x|
  x.report("first:")   { HYDRA.run }
end

# using thin
#  user	      system     total       real
# 1.030000   0.380000   1.410000 ( 16.713791)

# using unicorn
#  user       system     total
# 1.020000   0.370000   1.390000 ( 10.055161)
