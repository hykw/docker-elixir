## Version
- CentOS: 7.9.2009
- Erlang: 22.3
- Elixir: 1.9.4

## How to build

```
docker build -t hykw/elixir:1.9.4 .
```

## Notice

As Elixir consumes all the remaining memory when making, it fails to build a image on t2.micro(mem:1GB).
