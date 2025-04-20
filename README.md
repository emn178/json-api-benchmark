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
             as_json      0.116 (± 0.0%) i/s     (8.62 s/i) -      1.000 in   8.623844s
            jbuilder      0.103 (± 0.0%) i/s     (9.70 s/i) -      1.000 in   9.698932s
active_model_serializers  0.057 (± 0.0%) i/s    (17.55 s/i) -      1.000 in  17.549307s
       oj_serializer      0.155 (± 0.0%) i/s     (6.45 s/i) -      1.000 in   6.453107s
oj_serializer.to_json     0.187 (± 0.0%) i/s     (5.36 s/i) -      1.000 in   5.358214s
```
