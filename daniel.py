class Carro:
    def __init__(self, nome: str, valor: int, marca: str):
        self.nome = nome
        self.valor = valor
        self.marca = marca
    
    def dizer_nome(self):
        print(f'Olá, meu nome é {self.nome}. Meu valor é {self.valor}. '
              f'E minha marca é {self.marca}.')
    
    def movimento(self, km: int):
        print(f'Estou percorrendo uma distância de {km} km com 1 litro.')
    
    def gasto(self, gasto: float):
        print(f'Meu gasto anual com o carro é de R$ {gasto}.')


carro = Carro(nome='Saveiro', valor=220, marca='Voyagem')

carro.dizer_nome()
carro.movimento(200)
carro.gasto(5000)
