class Kare
  attr_accessor :kenar_uzunlugu
  
  def initialize(kenar_uzunlugu)
    @kenar_uzunlugu = kenar_uzunlugu
  end
  
  def ciz
    return puts "Kenar uzunluğu pozitif bir değer olmalıdır." if @kenar_uzunlugu <= 0
    @kenar_uzunlugu.times do |i|
      @kenar_uzunlugu.times do |j|
        if i.zero? || i == @kenar_uzunlugu - 1 || j.zero? || j == @kenar_uzunlugu - 1
          print "* "
        else
          print "  "
        end
      end
        puts
    end
  end
end
  
print "Karenin kenar uzunluğunu girin: "
kenar = gets.chomp.to_i
  
kare = Kare.new(kenar)
kare.ciz
  
