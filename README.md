# Rust 使用 C 函数/结构体

```
$ cd src
$ clang draw.c -c -o libdraw.so
$ clang main.c libdraw.so -o main
$ ./main
```

```
$ cd ..
$ cargo clean
$ RUSTFLAGS="-L /src/rust_extern/src" cargo run

# rustc main.rs -L . -o main
```

# Rust 使用 minits 函数/结构体

```
$ cd /src/minits
$ ts-node src/index.ts build /src/rust_extern/src/draw.ts -o /src/rust_extern/src/draw.ll
$ cd /src/rust_extern/src
$ clang -c -shared -undefined dynamic_lookup draw.ll -o libdraw.so
$ cd ..
$ cargo clean
$ RUSTFLAGS="-L /src/rust_extern/src" cargo run
```
