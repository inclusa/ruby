def hola proc1, proc2
  proc1.call
  proc2.call
end

proc1 = Proc.new { puts "Hola proc1" }
proc2 = Proc.new { puts "Hola proc2" }

hola(proc1,proc2)
