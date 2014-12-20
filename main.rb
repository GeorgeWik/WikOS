#!/usr/bin/env ruby

#Copyright (c) by Razzor ()


require 'fileutils'

#vars
pcname = 'zion'
name = 'foo'
#vars

tmp0 = FileUtils.rm_rf Dir.glob("tmp/*")
puts tmp0

while 1
  print ("#{pcname}@#{name}$> ")
  cmd = gets.chomp
  
  if cmd == "lang"
    exec 'ruby sys/lang.rb'
  else

  if cmd == "update"
    app.root_url(:port 20)
    "http://www.example.com:20/"
  end

    if cmd == "fdel"
      print "Filename: "
      txtdel = "home/#{gets.chomp}"
      txttrue = File.exist?(txtdel)
      if txttrue == true
        File.delete(txtdel)
        puts "Arquivo #{txtdel} eliminado com susseso!"
      else
        puts "Arquivo invalido"
      end
    else
      if cmd == "dir"
        dir = Dir.glob("home/*")
        puts dir
      else
        if cmd == 'reboot'
          puts 'The system is going out to reboot!'
          sleep 1
          exec 'bash sys/reboot.sh'
        else
          if cmd == 'cls'
            exec 'bash sys/reboot.sh'
          else
            if cmd == 'help'
               puts ' exit = exit the operating system'
               puts ' cls = cls'
               puts ' dir = show directories'
               puts ' reboot = reboot the os'
               puts ' fdel = delete txt files'
               puts ' lang = my prog lang'
               puts ' cat = read txt files'
               puts ' gedit = TextEditor'
            else
               if cmd['echo']
                 cmd.slice!(0)
                 cmd.slice!(1)
                 cmd.slice!(2)
                 cmd.slice!(3)
                 cmd.slice!(4)
                 puts cmd
               else
                 if cmd == 'cat'
                   print("Filename: ")
                   cat = "home/#{gets.chomp}"
                   catexist = File.exist?(cat)
                   if catexist == true
                     catf = File.open(cat, 'r')
                     catr = catf.read
                     puts catr
                     catf.close
                   else
                     puts "Impossivel abrir o arquivo #{cat}!"
                   end
                 else
                   if cmd == 'exit'
                     break
                   else
                     if cmd == 'gedit'
                       print "Filename: "
                       editwn = "home/#{gets.chomp}"
                       editw = File.open(editwn, 'a+')
                       print "Lines: "
                       lines = gets.chomp
                       while 1
                         print "> "
                         addl = gets.chomp
                         
                         if addl == 'end'
                           break
                         end
                         
                         editw.write "#{addl}\n"
                       end
                       editw.close
                     end
                   end
                 end
               end
             end
           end
         end
       end
     end
   end
  f = File.open("home/log.txt", "a")
  f.write("#{cmd}\n")
  f.close
end
exec 'clear'
