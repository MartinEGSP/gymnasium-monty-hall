void Functions(){     
  if((mouseX > 70 && mouseX < 130) && (mouseY > 120 && mouseY < 200) && doorFirstPress){ 
//dörr 1 andra knapp tryck
  if(doorlose && doorWin == 0){ 
//Om förlade dörrar är klara och dörr 1 vann
  text = Grattis; //skriver ut gratulerar om klickar på rätt dörr
  }
    if(doorWin == 0){ //dörr 1 vann
      door3lose = true; //dörr 3 förlora
    }  
    if(doorWin == 1){ //dörr 2 vann      
      door3lose = true; //dörr 3 förlora
    }  
    if(doorWin == 2){ //dörr 3 vann     
      door2lose = true; //dörr 2 förlora
    } 
  }
  if((mouseX > 70 && mouseX < 130) && (mouseY > 260 && mouseY < 360) && doorFirstPress){
//dörr 2 andra knapp tryck
 if(doorlose && doorWin == 1){ 
//Om förlade dörrar är klara och dörr 1 vann
  text = Grattis;
  }  
    if(doorWin == 0){ //dörr 1 vann
      door3lose = true; //dörr 3 förlora
    }  
    if(doorWin == 1){ //dörr 2 vann
      door1lose = true; //dörr 1  förlora  
    }  
    if(doorWin == 2){ //dörr 3 vann
      door1lose = true; //dörr  1 förlora
    }
  }
   if((mouseX > 70 && mouseX < 130) && (mouseY > 400 && mouseY < 500) && doorFirstPress){
//dörr 3 andra knapp tryck
 if(doorlose && doorWin == 2){ 
//Om förlorade dörrar är klara och dörr 1 vann
  text = Grattis;
  }
    if(doorWin == 0){ //dörr 1 vann
      door2lose = true; //dörr 2 förlora 
    }  
    if(doorWin == 1){ //dörr 2 vann
      door1lose = true; //dörr 1 förlora
    }  
    if(doorWin == 2){ //dörr 3 vann
      door2lose = true; //dörr 2 förlora
    }
  }
  
if(doorlose){  
   if((doorWin == 0) && door2lose){ 
//om förlorade dörr är visad och dörr 1 vann och dörr 2 förlora vissa dörr 3
   door3lose = true; //dörr 3
  }if((doorWin == 0) && door3lose){
//om förlorade dörr är visad och dörr 1 vann och dörr 3 förlora vissa dörr 2
   door2lose = true; //dörr 2
  } 
  if((doorWin == 1) && door1lose){
   door3lose = true;
  }if((doorWin == 1) && door3lose){
   door1lose = true;
  } 
  if((doorWin == 2) && door1lose){
   door2lose = true;
  }if((doorWin == 2) && door2lose){
   door1lose = true;
  }
  
      if(doorFirstPress){
    //dörr 1
    if(doorWin == 0){ 
        handtag1 = vinst;
        door1 = vinst;  
        door1Wrong = "Denna dörr öppnas endast \ngenom svåra ekvationer";
   }//dörr 2
    if(doorWin == 1){ 
        handtag2 = vinst;
        door2 = vinst;  
        door2Wrong = "Denna dörr öppnas endast \ngenom svåra ekvationer";
   }//dörr 3
    if(doorWin == 2){ 
        handtag3 = vinst;
        door3 = vinst; 
        door3Wrong = "Denna dörr öppnas endast \ngenom svåra ekvationer";
   }  
  }  
} 
 
//Om felaktig dörr är vald
  if((mouseX > 70 && mouseX < 130) && (mouseY > 120 && mouseY < 220) && door1lose){
  text = synd; //Om man klickar på dörr 1 och det är fel
  } 
  if((mouseX > 70 && mouseX < 130) && (mouseY > 260 && mouseY < 360) && door2lose){
  text = synd; //Om man klickar på dörr 2 och det är fel
  }
  if((mouseX > 70 && mouseX < 130) && (mouseY > 400 && mouseY < 500) && door3lose){
  text = synd; //Om man klickar på dörr 3 och det är fel
  }
  
//färgen för fel dörrar är röd
  if(door1lose){
   door1 = fel; 
   handtag1 = fel; 
   doorlose = true;
   door1Wrong = "Denna dörr är öppnad och felaktig";
  }
  if(door2lose){
   door2 = fel; 
   handtag2 = fel; 
   doorlose = true;
   door2Wrong = "Denna dörr är öppnad och felaktig";
  }
  if(door3lose){
   door3 = fel; 
   handtag3 = fel; 
   doorlose = true;
   door3Wrong = "Denna dörr är öppnad och felaktig";
  }

}

void door(){
  
    stroke(0);
    textSize(16); 
    textAlign(LEFT); 
    
//dörr1
  fill(door1); //färg brun
  rect(70,120,60,100); //dörren
  fill(handtag1); //färg 
  ellipse(120,175,10,10); //dörrhandtag  
  fill(255, 71, 26); //text färg
  text(door1Wrong, 150, 185); //vart texten är placerad

//dörr2
  fill(door2); //färg brun
  rect(70,260,60,100); //dörren
  fill(handtag2); //färg
  ellipse(120,315,10,10); //dörrhandtag 
  fill(255, 71, 26); //text färg
  text(door2Wrong, 150, 325); //vart texten är placerad

//dörr3
  fill(door3); //färg brun
  rect(70,400,60,100); //dörren
  fill(handtag3); //färg 
  ellipse(120,455,10,10); //dörrhandtag 
  fill(255, 71, 26); //text färg
  text(door3Wrong, 150, 465); //vart texten är placerad
 
}
