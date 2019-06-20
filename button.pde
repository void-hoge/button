button button1;

void setup(){
    size(300, 300);
    button1 = new button();
}

void draw(){
    button1.circleButton(100.0, 100.0, 100.0, 100.0, color(255), color(127), "pressed", "released", 10);
}

class button{
    button(){}

    boolean rectButton(float x, float y, float w, float h, color pressedColor, color releasedColor, String pressedText, String releasedText, int size){
        rectMode(CORNER);
        textAlign(CENTER);
        textSize(size);
        noStroke();
        if (mousePressed&&(mouseX > x)&&(mouseX < x+w)&&(mouseY > y)&&(mouseY < y+h)){
            fill(pressedColor);
            rect(x, y, w, h);
            fill(0);
            text(pressedText, x+w/2, y+h/2);
            return true;
        }else{
            fill(releasedColor);
            rect(x, y, w, h);
            fill(0);
            text(releasedText, x+w/2, y+h/2);
            return false;
        }
    }

    boolean circleButton(float x, float y, float radius, color pressedColor, color releasedColor, String pressedText, String releasedText, int size){
        ellipseMode(CENTER);
        textAlign(CENTER);
        textSize(size);
        noStroke();
        if (mousePressed&&(dist(mouseX, mouseY, x, y)<radius)){
            fill(pressedColor);
            ellipse(x, y, radius, radius);
            fill(0);
            text(pressedText, x, y);
            return true;
        }else{
            fill(releasedColor);
            ellipse(x, y, radius, radius);
            fill(0);
            text(releasedText, x, y);
            return false;
        }
    }
}
