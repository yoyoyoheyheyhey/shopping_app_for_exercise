require_relative "user"
require_relative "cart"

class Customer < User
  attr_reader :cart

  # 顧客が作成されます。この時、super(name)でCustomerが継承しているUserが呼ばれます。
  def initialize(name)
    super(name)
    @cart = Cart.new(self)
  end

end
