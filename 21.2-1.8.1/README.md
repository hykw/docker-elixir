## Version
- CentOS: 6.9
- Erlang: 21.2
- Elixir: 1.8.1

## How to build

```
docker build -t hykw/elixir:1.8.1 .
```

## Notice

As Elixir consumes all the remaining memory when making, it fails to build a image on t2.micro(mem:1GB).
