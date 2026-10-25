void counter(){
  noFill();
  stroke(255, 71, 26);
  beginShape();
  vertex(250+100, 10);
  vertex(250+100, 50);
  vertex(250, 50);
  vertex(250, 90);
  vertex(550, 90);
  vertex(550, 50);
  vertex(550-100, 50);
  vertex(550-100, 10);
  vertex(250+100, 10);
  endShape();
  fill(255, 71, 26);
  textSize(20);
  textAlign(CENTER);
  text("Poäng", width/2, 36);
  text(V + " Vinster"  + "        " + F + " Förluster", width/2, 80);

//i gör så att man bara kan få 1 poång per spel
  if(text == Grattis && i < 1){ //texten blir bara "Grattis" när man vinner
    V ++; //antal vinseter
     i++;
  }if(text == synd && i < 1){ //textet blir bara "synd" när man förlorar
    F ++; //antal förluster
    i++;
  }
}
