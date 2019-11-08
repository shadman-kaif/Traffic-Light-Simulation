
View.Set("graphics, offscreenonly")

drawfillbox (0,0,1000,1000,green)
drawfillbox (240,0,400,500,black)
drawfillbox (0,150,1000,270,black)
% creates the green background and the black roads

drawfillbox (325,0,315,10,yellow)
drawfillbox (325,20,315,70,yellow)
drawfillbox (325,80,315,130,yellow)
drawfillbox (325,290,315,340,yellow)
drawfillbox (325,350,315,400,yellow)
% puts yellow lines on vertical road

drawfillbox (0,200,50,210,yellow)
drawfillbox (60,200,110,210,yellow)
drawfillbox (120,200,170,210,yellow)
drawfillbox (180,200,230,210,yellow)
drawfillbox (430,200,480,210,yellow)
drawfillbox (490,200,540,210,yellow)
drawfillbox (550,200,600,210,yellow)
drawfillbox (610,200,6500,210,yellow)
% puts yellow lines on horizontal road

drawfillbox (240,0,220,149,grey)
drawfillbox (420,0,400,149,grey)
drawfillbox (0,150,239,130,grey)
drawfillbox (0,270,239,290,grey)
drawfillbox (400,150,1000,130,grey)
drawfillbox (400,270,1000,290,grey)
drawfillbox (240,270,220,500,grey)
drawfillbox (400,270,420,500,grey)
% creates the sidewalk on the edges of the roads

drawfillbox (220,30,180,130,yellow)
drawfillbox (420,290,460,390,yellow)
drawfillbox (119,322,219,290,yellow)
drawfillbox (420,130,530,95,yellow)
% creates the yellow rectangles for the traffic lights

drawfilloval(200,83,10,10,43)
drawfilloval(200,112,10,10,red)
drawfilloval(200,55,10,10,green)
% puts the red, green and yellow lights on the south traffic light

drawfilloval(173,305,10,10,43)
drawfilloval(140,305,10,10,red)
drawfilloval(203,305,10,10,green)
% puts the red, green and yellow lights on the west traffic light

drawfilloval(440,335,10,10,43)
drawfilloval(440,366,10,10,red)
drawfilloval(440,305,10,10,green)
% puts the red, green and yellow lights on the north traffic light

drawfilloval(470,111,10,10,43)
drawfilloval(500,111,10,10,red)
drawfilloval(440,111,10,10,green)
% puts the red, green and yellow lights on the east traffic light


drawfillbox (240,280,315,270, white)
drawfillbox (330,140,400,150, white)
drawfillbox (240,150,230,200, white)
drawfillbox (400,210,410,270, white)
drawfillbox (220,290,420,295, white)
drawfillbox (220,125,420,130, white)
drawfillbox (215,125,220,290, white)
drawfillbox (420,125,425,290, white)
drawfillbox (400,280,315,275, white)
drawfillbox (240,140,330,145, white)
drawfillbox (240,270,235,200, white)
drawfillbox (400,210,405,150, white)
% draws the crosswalk

var school :int := Pic.FileNew ("School.jpg") 
Pic.Draw (school,-20,3,0)
% generates an image of a school at the specified coordinates 

var building :int := Pic.FileNew ("Building.jpg") 
Pic.Draw (building,90,16,0) 
% generates an image of a building at the specified coordinates 

var store :int := Pic.FileNew ("Store.jpg")
Pic.Draw (store,480,305,0)
% generates an image of a store at the specified coordinates  

var houses :int := Pic.FileNew ("Houses.jpg") 
Pic.Draw (houses,480,5,0)
% generates an image of houses at the specified coordinates  

var tree :int := Pic.FileNew ("Tree.jpg") 
Pic.Draw (tree,5,305,0) 
% generates an image of a tree at the specified coordinates

var tree2 :int := Pic.FileNew ("Tree.jpg") 
Pic.Draw (tree2,70,340,0) 
% generates an image of a tree at the specified coordinates

var tree3 :int := Pic.FileNew ("Tree.jpg") 
Pic.Draw (tree3,144,340,0) 
% generates an image of a tree at the specified coordinates

var south_light:= 0
procedure traffic_south(south_light:int)
if south_light= 0 then
drawfilloval(200, 112, 10, 10, brightred)
elsif south_light= 1 then
drawfilloval (200, 83, 10, 10, 42)
elsif south_light= 2 then
drawfilloval (200, 55, 10, 10, brightgreen)
elsif south_light= 3 then
drawfilloval(200, 112, 10, 10, red)
drawfilloval (200, 83, 10, 10, 43)
drawfilloval (200, 55, 10, 10, green)
end if
end traffic_south
% procedure controls the south traffic light
% remains dormant until the command "traffic_south(parameter)" is called
% putting the integers 0, 1, 2 as the parameters of the procedure turns on the red, yellow and green lights respectively
% putting the integer 3 as the parameter turns off all the lights

var west_light:= 0
procedure traffic_west(west_light:int)
if west_light= 0 then
drawfilloval(140,305,10,10, brightred)
elsif west_light= 1 then
drawfilloval(173,305,10,10, 42)
elsif west_light= 2 then
drawfilloval(203,305,10,10, brightgreen)
elsif west_light= 3 then
drawfilloval(140,305,10,10, red)
drawfilloval(173,305,10,10, 43)
drawfilloval(203,305,10,10, green)
end if
end traffic_west
% procedure controls the west traffic light
% remains dormant until the command "traffic_west(parameter)" is called
% putting the integers 0, 1, 2 as the parameters of the procedure turns on the red, yellow and green lights respectively
% putting the integer 3 as the parameter turns off all the lights

var north_light:= 0
procedure traffic_north(north_light:int)
if north_light= 0 then
drawfilloval(440,366,10,10, brightred)
elsif north_light= 1 then
drawfilloval(440,335,10,10, 42)
elsif north_light= 2 then
drawfilloval(440,305,10,10, brightgreen)
elsif north_light= 3 then
drawfilloval(440,366,10,10, red)
drawfilloval(440,335,10,10, 43)
drawfilloval(440,305,10,10, green)
end if
end traffic_north
% procedure controls north traffic light
% remains dormant until the command "traffic_north(parameter)" is called
% putting the integers 0, 1, 2 as the parameters of the procedure turns on the red, yellow and green lights respectively
% putting the integer 3 as the parameter turns off all the lights

var east_light:= 0
procedure traffic_east(east_light:int)
if east_light= 0 then
drawfilloval(500,111,10,10, brightred)
elsif east_light= 1 then
drawfilloval(470,111,10,10, 42)
elsif east_light= 2 then
drawfilloval(440,111,10,10, brightgreen)
elsif east_light= 3 then
drawfilloval(500,111,10,10, red)
drawfilloval(470,111,10,10, 43)
drawfilloval(440,111,10,10, green)
end if
end traffic_east
% procedure controls east traffic light
% remains dormant until the command "traffic_east(parameter)" is called
% putting the integers 0, 1, 2 as the parameters of the procedure turns on the red, yellow and green lights respectively
% putting the integer 3 as the parameter turns off all the lights

process playstuff 
	  Music.PlayFile ("vehicle002.wav")
end playstuff

process playstuff2
	  Music.PlayFile ("car-speed-01.wav")
end playstuff2

process playstuff3
	  Music.PlayFile ("Tank2.wav")
end playstuff3

procedure first_car

fork playstuff2

traffic_north(3)
traffic_south(3)
traffic_west(3)
traffic_east(3)

traffic_north(0)
traffic_south(0)
traffic_west(2)
traffic_east(2)

for y: 0..55
drawfillbox (240,0,400,500,black)
drawfillbox (325,0,315,10,yellow)
drawfillbox (325,20,315,70,yellow)
drawfillbox (325,80,315,130,yellow)
drawfillbox (325,290,315,340,yellow)
drawfillbox (325,350,315,400,yellow)

drawfillbox (240,280,315,270, white)
drawfillbox (330,140,400,150, white)
drawfillbox (240,150,230,200, white)
drawfillbox (400,210,410,270, white)
drawfillbox (220,290,420,295, white)
drawfillbox (220,125,420,130, white)
drawfillbox (215,125,220,290, white)
drawfillbox (420,125,425,290, white)
drawfillbox (400,280,315,275, white)
drawfillbox (240,140,330,145, white)
drawfillbox (240,270,235,200, white)
drawfillbox (400,210,405,150, white)

var car: int := Pic.FileNew ("silver_car_small.jpg")
Pic.Draw (car, 340, y, picCopy)
View.Update
delay(10)
end for

fork playstuff3

delay(3000)
traffic_north(3)
traffic_south(3)
traffic_west(3)
traffic_east(3)
traffic_north(2)
traffic_south(2)
traffic_west(0)
traffic_east(0)
View.Update

fork playstuff2

for y2: 55 .. 340
var car: int := Pic.FileNew ("silver_car_small.jpg")
Pic.Draw (car, 340, y2, picCopy)
View.Update
delay(10)

drawfillbox (240,0,400,500,black)
drawfillbox (325,0,315,10,yellow)
drawfillbox (325,20,315,70,yellow)
drawfillbox (325,80,315,130,yellow)
drawfillbox (325,290,315,340,yellow)
drawfillbox (325,350,315,400,yellow)

drawfillbox (240,280,315,270, white)
drawfillbox (330,140,400,150, white)
drawfillbox (240,150,230,200, white)
drawfillbox (400,210,410,270, white)
drawfillbox (220,290,420,295, white)
drawfillbox (220,125,420,130, white)
drawfillbox (215,125,220,290, white)
drawfillbox (420,125,425,290, white)
drawfillbox (400,280,315,275, white)
drawfillbox (240,140,330,145, white)
drawfillbox (240,270,235,200, white)
drawfillbox (400,210,405,150, white)
end for
end first_car

procedure second_car

fork playstuff

traffic_north(3)
traffic_south(3)
traffic_west(3)
traffic_east(3)

traffic_west(2)
traffic_east(2)
traffic_north(0)
traffic_south(0)

for x: 0..580
var x_value: int := 580 - x
var car_2: int := Pic.FileNew("car (2).jpg")
Pic.Draw (car_2, x_value, 160, picCopy)
View.Update
delay(9)
drawfillbox (0,150,1000,270,black)
drawfillbox (0,200,50,210,yellow)
drawfillbox (60,200,110,210,yellow)
drawfillbox (120,200,170,210,yellow)
drawfillbox (180,200,230,210,yellow)
drawfillbox (430,200,480,210,yellow)
drawfillbox (490,200,540,210,yellow)
drawfillbox (550,200,600,210,yellow)
drawfillbox (610,200,6500,210,yellow)

drawfillbox (240,280,315,270, white)
drawfillbox (330,140,400,150, white)
drawfillbox (240,150,230,200, white)
drawfillbox (400,210,410,270, white)
drawfillbox (220,290,420,295, white)
drawfillbox (220,125,420,130, white)
drawfillbox (215,125,220,290, white)
drawfillbox (420,125,425,290, white)
drawfillbox (400,280,315,275, white)
drawfillbox (240,140,330,145, white)
drawfillbox (240,270,235,200, white)
drawfillbox (400,210,405,150, white)
end for

traffic_west(3)
traffic_east(3)
traffic_west(1)
traffic_east(1)
View.Update
delay(1000)
traffic_west(3)
traffic_east(3)
traffic_north(3)
traffic_south(3)
traffic_west(0)
traffic_east(0)
traffic_north(2)
traffic_south(2)
View.Update
end second_car

first_car
second_car



