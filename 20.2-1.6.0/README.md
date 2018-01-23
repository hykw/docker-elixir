## Version
- CentOS: 6.9
- Erlang: 20.2
- Elixir: 1.6.0

## How to build

```
docker build -t hykw/elixir:1.6.0 .
```

## Notice

As Elixir consumes all the remaining memory when making, it fails to build a image on t2.micro(mem:1GB).
