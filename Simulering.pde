void simulering(){  
  //simulerings ruta 
  fill(255, 51, 153);// bakgrunden
  rect(0,0,width,height);
  fill(textFarg);
  textSize(28);
  text("Simulering", width/2, 50);
  
  //informations rutan  
  fill(255, 184, 77);
  rect(width/2-160, 300, 320, 250 );
  fill(textFarg);
  textSize(17);  
  if(startaInteSimulering && klarKnapp && nr != deleteNr){ //Om nr inte är lika med reset nr
  text("Simuleringen kördes " + nr + " gånger", 400, 335);
  number = Integer.valueOf(nr); //görom nr från String till int (bokstav till siffra)
  
  if (utanByte){ //s gör samma som i fast för simuleringen
  while(number > s){ //medan nummret är mindra än s gör det under
//det vill säga så allting körs ända till s är lika stort som siffran man skrev
    s++; //s + 1 
    simuleringWinNumber = int( random(3) ); 
  if(simuleringWinNumber == 0){winner++;}
  else{loser++;}
 
   
  }}if (medByte){
  while(number > s){ //medan nummret är mindra än s gör den det under
    s++; //s + 1
    simuleringWinNumber = int( random(3) ); 
   if(simuleringWinNumber != 0){winner++;}
   else{loser++;}
  }}
 
}

  //förklarings texterna i rutan
  textAlign(LEFT);
  textSize(18);
  text("Instruktioner", 60, 90);
  text("OBS", 60, 215);
  textSize(14);
  text("• Skriv här antalet gånger som simuleringen ska köras " + nr, 60, 115);
  text("• Efter att du har valt hur många gånger simulering ska köras väljer du", 60, 135);
  text("   om simuleringen ska köras med eller utan byte av dörr ", 60, 155);
  text("• När du har valt klart så klicka på knappen KLAR", 60, 175);
  text("• För att sudda trycka på backspace", 60, 275);
  text("• För att gå ur simuleringen klicka på Spelläge", 60, 235);
  text("• För att köra simulering igen gå in & ur simulerings läge", 60, 255);
  text("Vinster", 290, 360); //informations rutan
  text("Förluster", 440, 360); //informations rutan
  textAlign(CENTER);
  text(winner, 310, 380); //informations rutan
  text(loser, 465, 380); //informations rutan
  text(simuleringsText, 400, 490);
 
  //med byte knappen
  stroke(KnappS);
  fill(Knapp);
  rect(260, 510, 80,30 );
  fill(textFarg);
  textSize(14);
  text("Med byte", 300, 530);
  
  //utan byte knappen
  fill(Knapp);
  rect(360, 510, 80,30 );
  fill(textFarg);
  textSize(14);
  text("Utan byte", 400, 530);
  
  //Klar knappen
  fill(Knapp);
  rect(460, 510, 80,30 );
  fill(textFarg);
  textSize(14);
  text("KLAR", 500, 530);
 
  if(keyCode == 8){ //sudda
  nr=deleteNr;
  }
  
  if(utanByte){
  simuleringsText = ("Utan byte av dörr");
  }
  if(medByte){
  simuleringsText = ("Med byte av dörr");
  }


}
void keyPressed(){
   if (nr == (deleteNr) ) {
    nr="";
  }
  
  if(startaInteSimulering && key>='0' && key<='9'){
    nr += key;
  }  
}

void again(){
  fill(Knapp);
  stroke(KnappS);
  rect(630, 530, 120, 40);
  textSize(18);
  fill(textFarg);
  text(again, 690, 555);
}
