# -----------------------------------
class A
  def self.cm
    "class method A" 
  end

  def im
    "instance method A"
  end

end

puts A.cm
puts A.im


# -----------------------------------
class B
end

def B.cm
  "B" 
end

puts B.cm


# -----------------------------------
class C
  class << self
    def cm
      "C"
    end
  end
end

puts C.cm


# -----------------------------------
class D
end

class << D
  def cm
    "D"
  end
end

puts D.cm


# -----------------------------------
class E
  class_eval { |kls| 
    def kls.cm
      "E"
    end
    def self.cm2
      "E"
    end 
  }
end

puts E.cm
puts E.cm2