[positional-arguments]
build target="production":
  cmake -G Ninja -S . -B build/ -D TARGET_GROUP={{target}}
  ninja -C build

clean:
  rm -rf build

[positional-arguments]
load program:
  picotool load build/src/app/{{program}}.elf
