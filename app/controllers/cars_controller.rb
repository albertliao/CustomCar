class CarsController < ApplicationController
  def index
  end

  def new
  	@equip1 = {'category'=>'equipment','name'=>'Six-Speed Automatic', 'price'=>1250.00}.to_json
  	@equip2 = {'category'=>'equipment','name'=>'Chrome Line Exterior', 'price'=>150.00}.to_json
  	@equip3 = {'category'=>'equipment','name'=>'Sports Suspension', 'price'=>300.00}.to_json

  	@interiors = [
  		  	{
  			 'name' => 'Leatherette: Carbon Black', 
  			 'desc' => 'Our sleek Carbon Black Leatherette upholstery comes with matching black door casings. (Note: Leatherette seats do not contain real leather.)',
  			 'price' => 0.00, 
  			 'category' => 'interior', 
  			 'model' => 'coupe', 
  			 'icon' => '/assets/interior-black-leatherette-icon.png', 
  			 'viewInt' => '/assets/interior-black-leatherette-seat.png', 
  			},
  		  	{
  			 'name' => 'Leather/Cloth: Polar Beige', 
  			 'desc' => 'For a classic look, these Carbon Black cloth seats are contrasted by Polar Beige stitching and leather side supports, and come paired with your favorite Color Line and choice of Interior Surface options. (Note: This upholstery requires Sport Seats on Cooper models. All seating surfaces are cloth and leather; other components may be cloth or leatherette.)',
  			 'price' => 1000.00, 
  			 'category' => 'interior', 
  			 'model' => 'coupe', 
  			 'icon' => '/assets/interior-polar-beige-icon.png', 
  			 'viewInt' => '/assets/interior-polar-beige-seat.png', 
  			},
  		  	{
  			 'name' => 'Leather: Lounge Toffee', 
  			 'desc' => "You won't be able to keep your hands off this Toffee Lounge leather with contrasting pipe trim. Comes paired with your choice of Color Line and Interior Surface. (Note: This upholstery requires Sport Seats on Cooper models. All seating surfaces are leather; other components may be leather or leatherette.)",
  			 'price' => 2000.00, 
  			 'category' => 'interior', 
  			 'model' => 'coupe', 
  			 'icon' => '/assets/interior-toffee-icon.png', 
  			 'viewInt' => '/assets/interior-toffee-seat.png', 
  			}
  	]

  	@wheels = [
  			{
  			 'name' => '15" 7-Hole', 
  			 'desc' => '15"x 5.5" alloy wheels in our 7-Hole design. Equipped with 175/65 R15 performance tires.',
  			 'price' => 0.00, 
  			 'category' => 'wheel', 
  			 'model' => 'coupe', 
  			 'icon' => '/assets/wheels-7hole-icon.png', 
  			 'viewFront' => '/assets/wheels-7hole-front.png', 
   			 'viewRear' => '/assets/wheels-7hole-rear.png', 
  			},
  			{
  			 'name' => '17" Conical Spoke', 
  			 'desc' => '17" x 7.0" alloy wheels in our Conical Spoke design. Equipped with 205/45 R17 performance runflat tires.',
  			 'price' => 1250.00, 
  			 'category' => 'wheel', 
  			 'model' => 'coupe', 
  			 'icon' => '/assets/wheels-conical-silver-icon.png', 
  			 'viewFront' => '/assets/wheels-conical-silver-front.png', 
   			 'viewRear' => '/assets/wheels-conical-silver-rear.png', 
  			 },
  			{
  			 'name' => '17" Twin Spoke Black', 
  			 'desc' => '17" x 7.0" alloy wheels in our MINI Yours Twin Spoke design. Equipped with 205/45 R17 performance runflat tires.',
  			 'price' => 1500.00, 
  			 'category' => 'wheel', 
  			 'model' => 'coupe', 
  			 'icon' => '/assets/wheels-twin-black-icon.png', 
  			 'viewFront' => '/assets/wheels-twin-black-front.png', 
   			 'viewRear' => '/assets/wheels-twin-black-rear.png', 
  			}
  	]

  	@colors = [
  			{
  			 'name' => 'Chili Red', 
  			 'price' => 0.00, 
  			 'desc' => "NON-METALLIC PAINT - Fiery and feisty, Chili Red is eager to blaze a trail. Just make sure the gas pedal doesn't get too hot to handle, as MINIs in this bold color have a way of attracting a little extra attention - from admirers and Pamplona bulls alike.",
  			 'category' => 'color', 
  			 'model' => 'coupe', 
  			 'icon' => '/assets/red-color-med.png', 
  			 'viewFront' => '/assets/color-red-front.png', 
  			 'viewStripeFront' => '/assets/stripe-red-front.png',
   			 'viewRear' => '/assets/color-red-rear.png', 
  			 'viewStripeRear' => '/assets/stripe-red-rear.png',
  			 'borderColor' => 'red'
  			},
  			{
  			 'name' => 'Pepper White', 
  			 'desc' => "NON-METALLIC PAINT - Pepper White's timeless, understated style is underscored by an effortless gentility and freewheeling spirit. When paired with a black roof and bonnet stripes, this color wields all the power of a well-cut tux, with none of the dry cleaning bills. Your tailor would approve.",
  			 'price' => 0.00, 
  			 'category' => 'color', 
  			 'model' => 'coupe', 
  			 'icon' => '/assets/white-color-med.png', 
  			 'viewFront' => '/assets/color-white-front.png', 
  			 'viewStripeFront' => '/assets/stripe-white-front.png',
   			 'viewRear' => '/assets/color-white-rear.png', 
  			 'viewStripeRear' => '/assets/stripe-white-rear.png',
  			 'borderColor' => 'white'
  			 },
  			{
  			 'name' => 'Lightning Blue',
  			 'desc' => "METALLIC PAINT - Some claim it was Zeus' preferred color for the palace atop Mount Olympus, while others argue it was color of the horn from which Thor drank the ocean. One thing's for certain - Lightning Blue is a color worthy of its name.", 
  			 'price' => 500.00, 
  			 'category' => 'color', 
  			 'model' => 'coupe', 
  			 'icon' => '/assets/blue-color-med.png', 
  			 'viewFront' => '/assets/color-blue-front.png', 
  			 'viewStripeFront' => '/assets/stripe-blue-front.png',
   			 'viewRear' => '/assets/color-blue-rear.png', 
  			 'viewStripeRear' => '/assets/stripe-blue-rear.png',
  			 'borderColor' => 'blue'
  			}
  	]
  end

  def summary
  end
end
