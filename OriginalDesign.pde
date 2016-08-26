int lightSwitchX = 50;
int lightBeamWidth = 0;
int rainbowWidth = 0;
boolean lightSwitch = false;
void setup()
{
  size(600,400);
}
void draw()
{
	background(0);
	flashlight();
	if(lightBeamWidth == 210)
  	{
  		rainbow();
  		rainbowWidth = rainbowWidth + 70;
  	}
  	prism();
  	if(lightSwitch == true)
  	{
  		light();
  		while (lightBeamWidth < 210)
  		{
  			lightBeamWidth = lightBeamWidth + 70;
  		}
  	}
  	else if(lightSwitch == false)
  	{
  		lightBeamWidth = 0;
  		rainbowWidth = 0;
  	}

}
void flashlight()
{
	fill(38,38,243);
	stroke(0);
	rect(20, 175, 75, 50);
	beginShape();
		vertex(95, 175);
		vertex(120, 155);
		vertex(120, 245);
		vertex(95, 225);
		vertex(95,175);
	endShape();
	fill(185);
	rect(lightSwitchX, 195, 20, 10);
}
void light()
{
	fill(255,255,255,250);
	noStroke();
	rect(121, 165, lightBeamWidth, 70);
}
void mouseClicked()
{
	if(lightSwitch == false && mouseX > 50 && mouseX < 70 && mouseY > 195 && mouseY < 205)
	{
		lightSwitch = true;
		lightSwitchX = 65;
	}
	else if(lightSwitch == true && mouseY > 195 && mouseY < 205 && mouseX > 65 && mouseX < 85)
	{
		lightSwitch = false;
		lightSwitchX = 50;
	}
}
void prism()
{
	fill(200);
	stroke(0);
	triangle(335,260, 385, 260, 360, 200);
	beginShape();
		vertex(335, 260);
		vertex(285, 180);
		vertex(310, 120);
		vertex(360, 200);
	endShape();
}
void rainbow()
{
	noStroke();
	fill(255, 0, 0);
	rect(332, 165, rainbowWidth, 10);
	fill(255, 119, 0);
	rect(332, 175, rainbowWidth, 10);
	fill(252, 236, 14);
	rect(332, 185, rainbowWidth, 10);
	fill(0, 255, 0);
	rect(332, 195, rainbowWidth, 10);
	fill(0, 0, 255);
	rect(332, 205, rainbowWidth, 10);
	fill(97, 6, 255);
	rect(332, 215, rainbowWidth, 10);
	fill(169, 14, 252);
	rect(332, 225, rainbowWidth, 10);
}