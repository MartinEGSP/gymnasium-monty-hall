PImage goat, car, show, host;
String text, simuleringsText, nr;
String door3Wrong, door2Wrong, door1Wrong, again;
String Start = "Hej jag är din värd \n denna afton, klicka \n på en utav dörrarna"; //Ursprungs texten
String klick = "Om du vill du byta \n klicka på en ny annars \n klicka på samma igen";
String Grattis = "Gratulerar \n du vann!";
String synd = "Bättre lycka \n nästa gång";
String deleteNr = "_____";
String UpSimuleringsText = " "; // är texten där det står med/utan byte av dörr
color fel; //när fel dörrarna vissas
color door, door1, door2, door3; //dörrarna
color handtag, handtag1, handtag2, handtag3; // dörrhantagen
color vinst; //grön färg när vinnande dörr visas
color Knapp, KnappS, textFarg; //fill och Stroke för knapparna
color SimKnapp, SimTextFarg, stoppadSimKnapp, SimTextFargStoppad;
boolean klarKnapp, utanByte, medByte; //Knapparna i Simulering
boolean startSimulering, startaInteSimulering; //gör så att man  kan trycka på Simulering
boolean doorFirstPress, doorlose, door1lose, door2lose, door3lose;
int simuleringWinNumber, s;
int number, winner, loser; //Simulering, antalet gånger man vann/förlorade 
int i, V, F; // V = antal vinster, F = antal förluster
int doorWin; //tar fram siffran 0, 1 eller 2 vilket är vinande siffran


void setup() {
/** Allt detta kan ligga över setup men efetsom som man ska kunna spela flera
    gånger behöver dem ligga i setup så att man kan återställa dem när man kallar på setup
**/
    size(800, 600);
   
    fel = color(201, 27, 0);
    door = color(102, 68, 0);
    Knapp = color(255, 71, 26);
    vinst = color(28, 224, 2);
    KnappS = color(175, 30, 10);
    handtag = color(255,255,0);
    textFarg = color(0, 0, 102);
    SimTextFarg = color(0);
    stoppadSimKnapp = color(255, 71, 26, 60); //RGBA, A = alpha, transparant/synlighet    
    SimTextFargStoppad = color(0,0,0,60);
    SimKnapp = Knapp;
    
    i = 0;
    doorWin = int(random(3));
    doorlose = false;
    door1lose = false;
    door2lose = false;
    door3lose = false;
    doorFirstPress = false;
    startSimulering = false;
    startaInteSimulering = true;
    text = Start; //för att kunna få fram första texten vid omstarten
    again = "Spela igen";
   
    door1 = door;
    door2 = door;
    door3 = door;    
    door1Wrong = "1"; //byter ut siffran under dörren till text
    door2Wrong = "2"; 
    door3Wrong = "3"; 
    handtag1 = handtag;
    handtag2 = handtag; 
    handtag3 = handtag; 
    

//Simulering
    s = 0;
    number = 0;
    winner = 0;
    loser = 0; 
    klarKnapp = false; 
    utanByte = false; 
    medByte = false;
    nr = deleteNr; //nr blir senare siffran som användare väljer i Simuleringen (i string form)
    simuleringsText = UpSimuleringsText; //för att kunna få fram första texten vid omstarten
    
    goat = loadImage("goaty.png");
    car  = loadImage("bil.png");
    show = loadImage("background.jpg");
    host = loadImage("host.png");
}
 
void draw() {
  image(show, 0, 0, 801, 601); //bakgrunden
  fill(255, 71, 26); //text färg
  textSize(16); //text storlek
  textAlign(CENTER); //så att texten är centrerad
  text(text, 680, 280); //vart texten är placerad
  image(host, 650, 325, 140, 220);
    
  if(text == klick){
  SimKnapp = stoppadSimKnapp;
  startaInteSimulering = false;
  SimTextFarg = SimTextFargStoppad;
  }
  
  //kallar på voiden 
  counter();
  door();
  img();
  
  //Simulering knapp
  fill(SimKnapp);
  stroke(SimKnapp);
  rect(170-120, 530, 120, 40);
  fill(SimTextFarg);
  textSize(18);
  textAlign(CENTER);
  text("Simulering", 230-120, 555);
  
  if(startSimulering){
  simulering();
  }
  
  again(); //måste vara här så alltid syns
} 

void mouseClicked(){
//gör så att texten byts första gången och aktiverar andra klicket  
  if((mouseX > 70 && mouseX < 130) && (mouseY > 120 && mouseY < 220)){
   text = klick;
   doorFirstPress = true; //aktiverar andra klicket  
   door1 = color(125, 90, 20);
  } 
    if((mouseX > 70 && mouseX < 130) && (mouseY > 260 && mouseY < 360)){
    text = klick;
    doorFirstPress = true;  
    door2 = color(125, 90, 20);
  }
    if((mouseX > 70 && mouseX < 130) && (mouseY > 400 && mouseY < 500)){
    text = klick;
    doorFirstPress = true;
    door3 = color(125, 90, 20);
  }
    Functions(); 
    

//Spelläge knappen
   if ((mouseX > 630 && mouseX < 750) && (mouseY > 530 && mouseY < 570)){ //är positionen för själva knappen
    setup(); //setupen kallas och startar om spelet
   }
 
 
//Simulering 
//Simulerings knapp
  if(startaInteSimulering && (mouseX > 50 && mouseX <170) && (mouseY > 530 && mouseY < 570)){
    startSimulering = true; 
    again = "Spelläge";
  }
  //med byte knappen
     if((mouseX > 260 && mouseX < 350) && (mouseY > 510 && mouseY < 540)){
    medByte = true; 
  }
  //utan byte knappen
     if((mouseX > 360 && mouseX < 450) && (mouseY > 510 && mouseY < 540)){
    utanByte = true; 
  }
  //klar knappen
     if((mouseX > 460 && mouseX < 550) && (mouseY > 510 && mouseY < 540)){
    klarKnapp = true;
  }
}
