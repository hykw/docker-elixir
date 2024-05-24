## Version
- CentOS: 7.9.2009
- Erlang: 26.2.5
- Elixir: 1.16.3

## How to build

```
docker build -t hykw/elixir:1.16.3 .
```

## Notice

As Elixir consumes all the remaining memory when making, it fails to build a image on t2.micro(mem:1GB).
