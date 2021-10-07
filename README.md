# Register File
###### tags: `ece550 project`
## Contributor
* contributor 1: `cl583 Chang Che Liu`
* contributor 2: `sb712 Sangwook Bok`
## Component
### Decoder
* Decoder has 5 not gates and 32 and gates
* Each input passes into not gate
* Using truth table, each and gate makes 1bit output by using input and inverse of the input
### D-FF
* the D-FF has 5 ports:
    * q: output data
    * d: input data
    * clk: for clock
    * en: enable
    * clear: turn q to 0
* this D-FF is postive edge triggered
### Register
* have 5 ports:
    * out: output of register
    * in: input of register
    * clk: clock
    * en: enable
    * clr: clear register
* composed of ***32*** dffe
### Tri_state Buffer
* when select bit is 1, output is same as input
* when select bit is 0, output is 'z'
### RegFile
#### write port
![](https://i.imgur.com/81PIJ1p.png)
* use 5 to 32 decoder and connect it with AND gate for controling which register to write
* connect data to write to each of registers (here we have 32 registers)
* connect clock and clear signal to each of registers (here we have 32 registers)
#### read port
![](https://i.imgur.com/AQLpifj.png)
* uses 5 to 32 decoder and 32 tri-state buffer for 1 read port
* one of the output from tri-state buffer would be value and other outputs are z
* decoder select tri-state buffer which makes value
* we can read two data at the same time from register file
## Test Cases
* write enable signal
    * if 1 then it should write
    * if 0 then it shoul not write
* reset
    * reset = 1, all register become 0
    * reset = 1, then one negative edge, change reset to 0, all register remain 0

* write register 0
    * ouput 0, no matter write what data to the register 0

* read, write
    * write the even number of registers, i.e. register 0, register 2, ... And have one read to read even number egister, and another to odd number register (which should be 0)