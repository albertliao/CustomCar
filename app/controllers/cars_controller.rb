class CarsController < ApplicationController
  def index
  end

  def new
  	@red = {'name' => 'Blazing Red', 'price' => 500.00, 'category' => 'color'}.to_json
  	@white = {'name' => 'Pepper White', 'price' => 0.00, 'category' => 'color'}.to_json
  	@blue = {'name' => 'Deep Blue', 'price' => 500.00, 'category' => 'color'}.to_json

  	@wheel1 = {'category'=>'wheel','name'=>'Silver Heli Spoke', 'price'=>0.00}.to_json
  	@wheel2 = {'category'=>'wheel','name'=>'Silver Loop Spoke', 'price'=>750.00}.to_json
  	@wheel3 = {'category'=>'wheel','name'=>'Silver Victory Spoke', 'price'=>750.00}.to_json

  	@equip1 = {'category'=>'equipment','name'=>'Six-Speed Automatic', 'price'=>1250.00}.to_json
  	@equip2 = {'category'=>'equipment','name'=>'Chrome Line Exterior', 'price'=>150.00}.to_json
  	@equip3 = {'category'=>'equipment','name'=>'Sports Suspension', 'price'=>300.00}.to_json
  end

  def summary
  end
end
