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
as_json                   0.033443   0.020734   0.054177 (  2.736546)
jbuilder                  0.012827   0.014554   0.027381 (  2.482353)
active_model_serializers  0.025701   0.016709   0.042410 (  6.097047)
oj_serializer             0.024274   0.016308   0.040582 (  2.097655)
oj_serializer.to_json     0.014733   0.015261   0.029994 (  1.678899)
```
