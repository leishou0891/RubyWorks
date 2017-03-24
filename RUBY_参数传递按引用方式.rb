class XX
   @name = ""

   def initialize
	puts "hello"
        @name = "yuleishou"
   end
  

   def getname
      @name
   end

   def setname(name)
     puts "before setname, @name.object_id=" + @name.object_id.to_s
     puts "before setname, self.object_id=" + self.object_id.to_s
     @name = name
     puts "after setname, @name.object_id=" + @name.object_id.to_s
     puts "after setname, self.object_id=" + self.object_id.to_s
   end
end

x = XX.new
puts x.getname

name2 = "yujianming"
puts "name2.object_id=" + name2.object_id.to_s
x.setname name2
puts x.getname


def change(x)
   puts "call change"
   x.setname "change"
   x
end


y = change x
puts x.getname
puts y.getname
