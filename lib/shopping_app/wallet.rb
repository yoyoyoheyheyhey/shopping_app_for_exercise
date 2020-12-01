require_relative "ownable"

class Wallet
  include Ownable

  attr_reader :balance

# !!!!!!!!!!!!!!!!!!!self.owner = ownerでどのようなことが行われているかわかりませんでした(Ownableの役割の解説がほしい)!!!!!!!!!!!!!!
# 財布は残高0の状態で作成されます。
  def initialize(owner)
    self.owner = owner
    @balance = 0
  end

  def deposit(amount)
    @balance += amount.to_i
  end

  def withdraw(amount)
    return unless @balance >= amount
    @balance -= amount.to_i
    amount
  end

end
