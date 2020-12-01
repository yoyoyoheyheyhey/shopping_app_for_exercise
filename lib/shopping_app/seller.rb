require_relative "user"

# 売り手が作成されます。この時、super(name)でSellerが継承しているUserが呼ばれます。
class Seller < User
  def initialize(name)
    super(name)
  end

end
