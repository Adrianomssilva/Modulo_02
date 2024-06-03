class ContaCorrente

  attr_accessor :name, :saldo

  def initialize (name, saldo)
    @name = name
    @saldo = saldo
  end

  def sacar(valor)
    if @saldo >= valor
      @saldo = @saldo - valor
      puts @saldo
    else
    puts "Seu saldo é #{@saldo}, por isso não será completada a transação"
    end
  end

  def depositar(valor)
    @saldo = @saldo + valor
    puts @saldo
  end
end


user = ContaCorrente.new("Adriano", 500)
puts user.sacar(600)
user.sacar(100)
user.sacar(100)
user.depositar(500)
