# JSON API Benchmark
Prepare
```Bash
bundle
rake db:setup
```

Run server
```Bash
rails s
```

Run benchmark in the other console
```Bash
rake benchmark
```

Reulst
```
                              user     system      total        real
as_json                   0.071340   0.051344   0.122684 (  9.146057)
jbuilder                  0.064440   0.052427   0.116867 (  8.548916)
active_model_serializers  0.052733   0.052273   0.105006 ( 18.628907)
oj_serializer             0.052506   0.050255   0.102761 (  6.791288)
oj_serializer.to_json     0.049903   0.050663   0.100566 (  5.339947)
```
