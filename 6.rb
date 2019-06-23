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

products_list = []
data = []
File.open('catalogo.txt', 'r'){|file| data = file.readlines}
data.each do |prod|
	ls = prod.split(', ')
	products_list << Product.new(*ls)
end



products_list.each do |product|
	puts product.average
end