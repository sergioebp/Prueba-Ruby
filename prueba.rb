def read_alum(file_name)
  file = File.open(file_name, 'r')
  alum = file.readlines.map(&:chomp).map { |lines| lines.split(', ') }
  file.close
  alum
end

archivo = read_alum('doc.csv')

opcion = ''
puts 'Bienvenido'
while opcion != '4' do 
  puts "\n1) Promedio por alumno"
  puts '2) Inasistencias por alumno'
  puts '3) Alumnos que aprovaron'
  puts '4) Salir'
  opcion = gets.chomp
  puts ''
  if opcion == '1'
    archivo.each do |i|
      puts "El alumno #{i[0]} tiene un promedio de #{i.map { |j| j.to_i }.sum/(i.length-1).to_f}"
    end
  elsif opcion == '2'
    archivo.each do |i|
      total = 0
      i.each do |j|
        if j == 'A'
          total += 1
        end
      end
      puts "El alumno #{i[0]} tuvo #{total} inasistencias"
    end
  elsif opcion == '3'
    #
  elsif opcion == '4' 
    puts 'Adios'
  else
    puts 'Ingrese una opción válida'
  end
end
