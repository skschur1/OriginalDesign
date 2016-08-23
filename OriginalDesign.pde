int lightSwitchX = 50;
int lightBeamWidth = 0;
boolean lightSwitch = false;
void setup()
{
  size(600,400);
}
void draw()
{
	background(0);
	flashlight();
  	if(lightSwitch == true)
  	{
  		light();
  		lightBeamWidth = lightBeamWidth + 70;
  	}
  	else if(lightSwitch == false)
  	{
  		lightBeamWidth = 0;
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
	fill(255);
	noStroke();
	rect(121, 160, lightBeamWidth, 80);
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
	triangle()
}