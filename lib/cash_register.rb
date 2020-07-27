class CashRegister
  attr_accessor :total, :discount,

  def initialize(discount=0)
    @total=total
    @total=0
    @discount=discount
    @cash_register= []
  end

  def add_item(title, price, quantity=1)
    purchase={}
    purchase[:name] = title
    purchase[:price] = price
    purchase[:quantity] = quantity

    @cash_register <<  purchase

    @total += price * quantity

  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    elsif @total -= @total * @discount/100
      return "After the discount, the total comes to $#{@total}."
    else
      nil
    end
  end

  def items
  end



end
