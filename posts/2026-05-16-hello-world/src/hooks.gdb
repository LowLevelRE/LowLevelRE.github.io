break _start
shell clear
run

define hook-stop
  echo \n
  info reg rax
  info reg rdi
  info reg rsi
  info reg rdx
  info reg rip
  info reg rsp
  echo \n
  echo the stack:\n
  x/12xg $rsp
  echo \n
  disassemble _start, _start+0x2a
end
