
def read_alum(file_name)
    file = File.open(file_name, 'r')
    alum = file.readlines.map(&:chomp).map { |lines| lines.split(', ') }
    file.close
    alum
end



#1. metodo promedio


def promedio
    array = read_alum('alumnos.csv')
    array.each_with_index do |elemento, index|
        suma = 0
        acc = 0
        elemento.each_with_index do |ele, index|
            if index != 0
                suma += ele.to_f
                acc += 1
            end
        end
        puts "Alumno: #{elemento[0]} --promedio : #{suma.to_f/acc} "
    end
end


#2. metodo inasistencias 

def inasistencias
    array = read_alum('alumnos.csv')
    array.each_with_index do |alumnos,inasistencias|
        alumnos.count('A')
        puts "Alumno #{alumnos} --- inasistencias #{alumnos.count('A')}"
    end
end

   





#3. metodo aprobacion



def aprobacion
    array = read_alum('alumnos.csv')
    array.each_with_index do |elemento, index|
        suma = 0
        acc = 0
        elemento.each_with_index do |ele, index|
            if index != 0
                suma += ele.to_f
                acc += 1
            end
        end
        promediofinal = suma.to_f/acc
        puts "Alumno: #{elemento[0]} --promedio : #{suma.to_f/acc} " if promediofinal >= 5
    end
end










# Menu

condicion = 0

while condicion != 4
    
    puts 'Ingresa una opcion'
    puts '1)Promedio de alumnos'
    puts '2)Asistencia alumnos'
    puts '3)Alumnos aprobados'
    puts '4)Salir de menu'
    
    condicion = gets.chomp.to_i
    case condicion
    when 1
        puts "El promedio de cada alumno es:"
        promedio
        
    when 2
        puts "Las inasistencias de los alumnos son:"
        inasistencias
    when 3
        puts "Los alumnos con aprobacion son"
        aprobacion
    when 4
        puts 'Adios'
    else
        puts 'Opcion no valida por favor ingresa una opcion valida 1, 2, 3, o 4'
    end
end
