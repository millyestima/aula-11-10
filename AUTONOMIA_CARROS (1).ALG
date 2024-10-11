algoritmo "autonomia_carros"
(primeira alteração)
// Declaração de variáveis
variaveis
    distancia, litros, autonomia: real
    mais_economico, menos_economico: real
    contador: inteiro

inicio
    mais_economico <- 0
    menos_economico <- 0
    contador <- 0

    // Loop para entrada de dados
    repita
        escreva("Digite a distância percorrida (0 para sair): ")
        leia(distancia)

        se distancia <> 0 entao
            escreva("Digite o total de litros de gasolina consumidos: ")
            leia(litros)

            // Calcula a autonomia
            autonomia <- distancia / litros

            // Inicializa mais_economico e menos_economico
            se contador = 0 entao
                mais_economico <- autonomia
                menos_economico <- autonomia
            senao
                se autonomia < mais_economico entao
                    mais_economico <- autonomia
                fimse
                se autonomia > menos_economico entao
                    menos_economico <- autonomia
                fimse
            fimse

            contador <- contador + 1
        fimse
    ate distancia = 0

    // Exibe os resultados
    se contador > 0 entao
        escreva("Carro mais econômico: ", mais_economico:0:2, " Km/L")
        escreva("Carro menos econômico: ", menos_economico:0:2, " Km/L")
    senao
        escreva("Nenhum carro foi registrado.")

fimalgoritmo
