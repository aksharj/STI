module ProductsHelper
  def status(product_status)
    case product_status
      when 1
        "Enabled"
      when 0
        "Disabled"
    end
  end
end
