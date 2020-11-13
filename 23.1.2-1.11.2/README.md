## Version
- CentOS: 7.8.2003
- Erlang: 23.1.2
- Elixir: 1.11.2

## How to build

```
docker build -t hykw/elixir:1.11.2 .
```

## Notice

As Elixir consumes all the remaining memory when making, it fails to build a image on t2.micro(mem:1GB).
