resultado = ""
loop do
    puts "-" * 30
    puts "CALCULADORA DO TERMINAL"
    puts "Para iniciar o cálculo, digite a opção numérica da operação:"
    puts "1 - Para operação de SOMA;"
    puts "2 - Para operação de SUBTRAÇÃO;"
    puts "3 - Para operação de MULTIPLICAÇÃO;"
    puts "4 - Para operação de DIVISÃO;"
    puts "0 - Para ENCERRAR O PROGRAMA."
    print "Opção: "

    operacao = gets.chomp.to_i

    case operacao
    when 1..4
        puts "Digite o PRIMEIRO número da operação:" 
        number1 = gets.chomp.to_i

        puts "Digite o SEGUNDO número da operação:"
        number2 = gets.chomp.to_i

        case operacao
        when 1
            resultado = "#{number1} + #{number2} = #{number1 + number2}"
            puts "O resultado da SOMA é: #{resultado}"
        when 2
            resultado = "#{number1} - #{number2} = #{number1 - number2}"
            puts "O resultado da SUBTRAÇÃO é: #{resultado}"
        when 3
            resultado = "#{number1} * #{number2} = #{number1 * number2}"
            puts "O resultado da MULTIPLICAÇÃO é: #{resultado}"
        when 4
            resultado = "#{number1} / #{number2} = #{number1 / number2}"
            puts "O resultado da DIVISÃO é: #{resultado}"
        end

    when 0
        puts "Programa encerrado com sucesso."
        break
    else
        puts "Opção inválida, digite novamente."
    end
    system "clear"
end