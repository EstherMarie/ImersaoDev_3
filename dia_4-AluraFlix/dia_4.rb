listaFilmes = [
    ["Estrelas Além do Tempo",'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.EaVHzwgga9i4xzmvtguEVwHaK3%26pid%3DApi&f=1'],
	["Creed",'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.pncNlipPp3OXmm48Lbjh0gHaK-%26pid%3DApi&f=1'],
	["O Guarda-Costas",'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.IIkwFRDx5JeWHoNS0PFeZQHaKd%26pid%3DApi&f=1']
]

# listaFilmes.each {|i| i.each{|j| puts j}}

listaFilmes.each do |i|
    puts "Título: #{i[0]}"
    puts "Link do poster: #{i[1]}\n\n"
end