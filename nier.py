class ContaBancaria:
      
 def __init__(self, donodaconta, saldo_inicial=0):
        self.__titular = donodaconta
        self.__saldo = saldo_inicial  # O atributo __saldo é privado (encapsulado) por convenção.
        print(f"Conta de {self.__titular} criada com sucesso.")

    # Método para depositar dinheiro
 def depositar(self, valor):
        if valor > 0:
            self.__saldo += valor
            print(f"Depósito de R${valor:.2f} realizado.")
        else:
            print("O valor do depósito deve ser positivo.")

    # Método para sacar dinheiro
 def sacar(self, valor):    
        if valor > 0 and valor <= self.__saldo:
            self.__saldo -= valor
            print(f"Saque de R${valor:.2f} realizado.")
            return True
        else:
            print("Saldo insuficiente ou valor de saque inválido.")
            return False

    # Método para obter o saldo (getter)
 def get_saldo(self):
        return self.__saldo
 
 # Uso da classe
minha_conta = ContaBancaria("DANIEL", 200)

minha_conta.depositar(50)
print(f"Saldo atual: R${minha_conta.get_saldo():.2f}")

minha_conta.sacar(70)
print(f"Saldo atual: R${minha_conta.get_saldo():.2f}")

minha_conta.sacar(20)  
print(f"Saldo atual: R${minha_conta.get_saldo():.2f}")
