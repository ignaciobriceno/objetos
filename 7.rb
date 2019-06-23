class Product
  def self.new_file(file)
    data = File.open(file,'r').readlines
    products_list = []
   	data.each do |prod|
   		ls = prod.split(', ')
   		ls.delete_at(3)
   		products_list << ls
   	end
   	file = File.open('new_catalogo.txt','w')
   	products_list.each { |prod| file.puts "#{prod.join(',')}"}
   	file.close
  end

end

Product.new_file('catalogo.txt')


