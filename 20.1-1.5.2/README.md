## Version
- CentOS: 6.9
- Erlang: 20.1
- Elixir: 1.5.2

## How to build

```
docker build -t hykw/elixir:1.5.2 .
```

## Notice

As Elixir consumes all the remaining memory when making, it fails to build a image on t2.micro(mem:1GB).
