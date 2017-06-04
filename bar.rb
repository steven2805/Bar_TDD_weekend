class Bar 

  attr_reader(:drinks,:drink2,:drink3,:drink4,:bar_profits)

  def initialize
    @drinks = {}
    @bar_profits = 0
  end 

  def add_drink_to_drinks_list(drink_name, price)
    @drinks[drink_name] = price
  end

  def adding_sale_to_profits(drink_name)
    if @drinks[drink_name]
      @bar_profits += @drinks[drink_name]
   
    end

  end 





end 
