# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Component.destroy_all

Component.create([
  		  	{
  			 name: '6-Speed Automatic', 
  			 desc: 'This Aisin 6-speed can change gears automatically or let you control the shift points using the Sport mode. Prepare to experience maximum control and motoring exhilaration.',
  			 price: 1250.00, 
  			 category: 'equipment', 
  			 model: 'coupe', 
  			 icon: '/assets/equip-automatic-shifter-icon.png', 
  			 viewInt: '/assets/equip-automatic-shifter.png' 
  			},
  		  	{
  			 name: 'Alarm System', 
  			 desc: "Ultrasonic motion sensors register any unauthorized attempts to open the doors, bonnet, tailgate or windows. This system even has its own power supply, helping ensure it still works even if your MINI's battery has been removed.",
  			 price: 500.00, 
  			 category: 'equipment', 
  			 model: 'coupe', 
  			 icon: '/assets/equip-alarm-icon.png' 
  			},
  		  	{
  			 name: 'Rear Park Distance Control', 
  			 desc: "Using ultrasonic sensors to detect if there are any bumper-height obstacles behind your MINI, the rear Park Distance Control system adds an extra measure of security whenever you're backing up.",
  			 price: 500.00, 
  			 category: 'equipment', 
  			 model: 'coupe', 
  			 icon: '/assets/equip-rear-park-icon.png' 
  			},
  		  	{
  			 name: 'Map Light', 
  			 desc: "Sure, you could use it to read maps, but who needs maps? We use it to make sure our navigator isn't cheating us at blackjack. This easy-on-the-eyes halogen lamp adjusts easily to shine in any desired direction.",
  			 price: 26.00, 
  			 category: 'equipment', 
  			 model: 'coupe', 
  			 icon: '/assets/equip-map-light-icon.png', 
  			 viewInt: '/assets/equip-map-light.png', 
  			},
  		  	{
  			 name: 'Leatherette: Carbon Black', 
  			 desc: 'Our sleek Carbon Black Leatherette upholstery comes with matching black door casings. (Note: Leatherette seats do not contain real leather.)',
  			 price: 0.00, 
  			 category: 'interior', 
  			 model: 'coupe', 
  			 icon: '/assets/interior-black-leatherette-icon.png', 
  			 viewInt: '/assets/interior-black-leatherette-seat.png' 
  			},
  		  	{
  			 name: 'Leather/Cloth: Polar Beige', 
  			 desc: 'For a classic look, these Carbon Black cloth seats are contrasted by Polar Beige stitching and leather side supports, and come paired with your favorite Color Line and choice of Interior Surface options. (Note: This upholstery requires Sport Seats on Cooper models. All seating surfaces are cloth and leather; other components may be cloth or leatherette.)',
  			 price: 1000.00, 
  			 category: 'interior', 
  			 model: 'coupe', 
  			 icon: '/assets/interior-polar-beige-icon.png', 
  			 viewInt: '/assets/interior-polar-beige-seat.png', 
  			},
  		  	{
  			 name: 'Leather: Lounge Toffee', 
  			 desc: "You won't be able to keep your hands off this Toffee Lounge leather with contrasting pipe trim. Comes paired with your choice of Color Line and Interior Surface. (Note: This upholstery requires Sport Seats on Cooper models. All seating surfaces are leather; other components may be leather or leatherette.)",
  			 price: 2000.00, 
  			 category: 'interior', 
  			 model: 'coupe', 
  			 icon: '/assets/interior-toffee-icon.png', 
  			 viewInt: '/assets/interior-toffee-seat.png', 
  			},
  			{
  			 name: '15" 7-Hole', 
  			 desc: '15"x 5.5" alloy wheels in our 7-Hole design. Equipped with 175/65 R15 performance tires.',
  			 price: 0.00, 
  			 category: 'wheel', 
  			 model: 'coupe', 
  			 icon: '/assets/wheels-7hole-icon.png', 
  			 viewFront: '/assets/wheels-7hole-front.png', 
   			 viewRear: '/assets/wheels-7hole-rear.png', 
  			},
  			{
  			 name: '17" Conical Spoke', 
  			 desc: '17" x 7.0" alloy wheels in our Conical Spoke design. Equipped with 205/45 R17 performance runflat tires.',
  			 price: 1250.00, 
  			 category: 'wheel', 
  			 model: 'coupe', 
  			 icon: '/assets/wheels-conical-silver-icon.png', 
  			 viewFront: '/assets/wheels-conical-silver-front.png', 
   			 viewRear: '/assets/wheels-conical-silver-rear.png', 
  			 },
  			{
  			 name: '17" Twin Spoke Black', 
  			 desc: '17" x 7.0" alloy wheels in our MINI Yours Twin Spoke design. Equipped with 205/45 R17 performance runflat tires.',
  			 price: 1500.00, 
  			 category: 'wheel', 
  			 model: 'coupe', 
  			 icon: '/assets/wheels-twin-black-icon.png', 
  			 viewFront: '/assets/wheels-twin-black-front.png', 
   			 viewRear: '/assets/wheels-twin-black-rear.png', 
  			},
   			{
  			 name: 'Lightning Blue',
  			 desc: "METALLIC PAINT - Some claim it was Zeus' preferred color for the palace atop Mount Olympus, while others argue it was color of the horn from which Thor drank the ocean. One thing's for certain - Lightning Blue is a color worthy of its name.", 
  			 price: 500.00, 
  			 category: 'color', 
  			 model: 'coupe', 
  			 icon: '/assets/blue-color-med.png', 
  			 viewFront: '/assets/color-blue-front.png', 
  			 viewStripeFront: '/assets/stripe-blue-front.png',
   			 viewRear: '/assets/color-blue-rear.png', 
  			 viewStripeRear: '/assets/stripe-blue-rear.png',
  			 borderColor: 'blue'
  			},
  			{
  			 name: 'Chili Red', 
  			 price: 0.00, 
  			 desc: "NON-METALLIC PAINT - Fiery and feisty, Chili Red is eager to blaze a trail. Just make sure the gas pedal doesn't get too hot to handle, as MINIs in this bold color have a way of attracting a little extra attention - from admirers and Pamplona bulls alike.",
  			 category: 'color', 
  			 model: 'coupe', 
  			 icon: '/assets/red-color-med.png', 
  			 viewFront: '/assets/color-red-front.png', 
  			 viewStripeFront: '/assets/stripe-red-front.png',
   			 viewRear: '/assets/color-red-rear.png', 
  			 viewStripeRear: '/assets/stripe-red-rear.png',
  			 borderColor: 'red'
  			},
  			{
  			 name: 'Pepper White', 
  			 desc: "NON-METALLIC PAINT - Pepper White's timeless, understated style is underscored by an effortless gentility and freewheeling spirit. When paired with a black roof and bonnet stripes, this color wields all the power of a well-cut tux, with none of the dry cleaning bills. Your tailor would approve.",
  			 price: 0.00, 
  			 category: 'color', 
  			 model: 'coupe', 
  			 icon: '/assets/white-color-med.png', 
  			 viewFront: '/assets/color-white-front.png', 
  			 viewStripeFront: '/assets/stripe-white-front.png',
   			 viewRear: '/assets/color-white-rear.png', 
  			 viewStripeRear: '/assets/stripe-white-rear.png',
  			 borderColor: 'white'
  			 }
	])