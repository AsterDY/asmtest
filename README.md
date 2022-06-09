# asmtest
### Requirements
- clang12 or higher
- python3 or higher

### Quick Start
1. pull the submodule asm2asm 
```
git submodule update --init --remote 
```
2. install dependency
```
pip3 install -r tool/asm2asm/requirements.txt
```
3. clean and build 
```
make clean && make all
```
4. run go test
```
cd output && go test -v .
```