class Product
	attr_reader :name, :stocks
	
	def initialize(name, *stocks)
		@name = name
		@stocks = stocks.map(& :to_i)
	end

	def average
		@stocks.inject(0) {|sum,n| sum + n} / @stocks.size.to_f
	end


end

file = File.open('catalogo.txt', 'r')  
data = file.readlines
file.close

products_list = []
data.each do |line|
	ls = line.split(', ')
	products_list << Product.new(*ls)
end

products_list.each do |product|
	puts product.average
end