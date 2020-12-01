require_relative "item_manager"
require_relative "wallet"

class User
  include ItemManager

  attr_accessor :name
  attr_reader :wallet

  # ユーザが作成され、同時にそのユーザの財布も作成されます。ここでのselfにはSellerで作成されたsellerオブジェクトが入ります。
  def initialize(name)
    @name = name
    @wallet = Wallet.new(self)
  end

end
