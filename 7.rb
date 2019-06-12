file = File.open('catalogo.txt', 'r')  
data = file.readlines
file.close

products_list = []
data.each do |line|
	ls = line.split(', ')
	products_list << ls
end

def clean_data(data)
	new_data = []
	data.each do |array|
		array.delete_at(4)
		new_data << array
	end
    new_file = File.open('new_catalogo.txt', 'w')
    new_file.print new_data
    new_file.close

end

clean_data(products_list)


