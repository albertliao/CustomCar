require 'spec_helper'

describe Component, :type => :model do

  it "should require a name field" do
  	comp = Component.new(
  			 desc: 'This Aisin 6-speed can change gears automatically or let you control the shift points using the Sport mode. Prepare to experience maximum control and motoring exhilaration.',
  			 price: 1250.00, 
  			 category: 'equipment', 
  			 model: 'coupe', 
  			 icon: '/assets/equip-automatic-shifter-icon.png', 
  			 viewInt: '/assets/equip-automatic-shifter.png')
  	expect(comp).to_not be_valid
  end

  it "should require a desc field" do
  	comp = Component.new(name: '6-Speed Automatic', 
  			 price: 1250.00, 
  			 category: 'equipment', 
  			 model: 'coupe', 
  			 icon: '/assets/equip-automatic-shifter-icon.png', 
  			 viewInt: '/assets/equip-automatic-shifter.png')
  	expect(comp).to_not be_valid
  end

  it "should require a price field" do
  	comp = Component.new(name: '6-Speed Automatic', 
  			 category: 'equipment', 
  			 model: 'coupe', 
  			 icon: '/assets/equip-automatic-shifter-icon.png', 
  			 viewInt: '/assets/equip-automatic-shifter.png')
  	expect(comp).to_not be_valid
  end

  it "should require a category field" do
  	comp = Component.new(name: '6-Speed Automatic', 
  			 price: 1250.00, 
  			 model: 'coupe', 
  			 icon: '/assets/equip-automatic-shifter-icon.png', 
  			 viewInt: '/assets/equip-automatic-shifter.png')
  	expect(comp).to_not be_valid
  end

   it "should require a model field" do
  	comp = Component.new(name: '6-Speed Automatic', 
  			 price: 1250.00, 
  			 category: 'equipment', 
  			 icon: '/assets/equip-automatic-shifter-icon.png', 
  			 viewInt: '/assets/equip-automatic-shifter.png')
  	expect(comp).to_not be_valid
  end

  it "should require a icon field" do
  	comp = Component.new(name: '6-Speed Automatic', 
  			 price: 1250.00, 
  			 category: 'equipment', 
  			 model: 'coupe', 
  			 viewInt: '/assets/equip-automatic-shifter.png')
  	expect(comp).to_not be_valid
  end

  it "should have a price that is numeric" do
  	comp = Component.new(name: '6-Speed Automatic', 
  			 desc: 'This Aisin 6-speed can change gears automatically or let you control the shift points using the Sport mode. Prepare to experience maximum control and motoring exhilaration.',
  			 price: 'Not a Number', 
  			 category: 'equipment', 
  			 model: 'coupe', 
  			 icon: '/assets/equip-automatic-shifter-icon.png', 
  			 viewInt: '/assets/equip-automatic-shifter.png')
  	expect(comp).to_not be_valid
  end

  it "should have a price that is greater than 0" do
  	comp = Component.new(name: '6-Speed Automatic', 
  			 desc: 'This Aisin 6-speed can change gears automatically or let you control the shift points using the Sport mode. Prepare to experience maximum control and motoring exhilaration.',
  			 price: -5.0, 
  			 category: 'equipment', 
  			 model: 'coupe', 
  			 icon: '/assets/equip-automatic-shifter-icon.png', 
  			 viewInt: '/assets/equip-automatic-shifter.png')
  	expect(comp).to_not be_valid
  end


end
