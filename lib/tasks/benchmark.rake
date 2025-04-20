require "benchmark/ips"

task :benchmark do
  n = 30
  Benchmark.ips do |x|
    x.report("as_json") do
      n.times { RestClient.get("http://localhost:3000/items") }
    end
    x.report("jbuilder") do
      n.times { RestClient.get("http://localhost:3000/items/jbuilder") }
    end
    x.report("active_model_serializers") do
      n.times { RestClient.get("http://localhost:3000/items/ams") }
    end
    x.report("oj_serializer") do
      n.times { RestClient.get("http://localhost:3000/items/oj") }
    end
    x.report("oj_serializer.to_json") do
      n.times { RestClient.get("http://localhost:3000/items/oj_to_json") }
    end
  end
end
