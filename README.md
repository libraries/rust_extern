# Rust 调用 C 函数

```
$ cd src
$ clang doubler.c -c -o libdoubler.so
$ clang main.c libdoubler.so -o main
```

```
$ cd src
$ rustc main.rs -L . -o main
# or
$ RUSTFLAGS="-L /src/rust_extern/src" cargo run
```

# Rust 调用 minits 函数

```
$ cd $MINITS_PATH
$ ts-node src/index.ts build doubler.ts -o doubler.ll
$ clang -shared -undefined dynamic_lookup doubler.ll -o libdoubler.so
$ RUSTFLAGS="-L /src/rust_extern/src" cargo run
```
