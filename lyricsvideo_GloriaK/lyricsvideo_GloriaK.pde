//sound files
import ddf.minim.*;     
//main-page icons
PImage img1, img2, img3,img4, img5, img6, img7, img8, img9, img10;      //normal
PImage img11, img12, img13, img14, img15, img16, img17, img18, img19;   //glowing
PImage imga, imgb, imgc, imgd, imge, imgf, imgg;           //song images
PImage img20, img21, img22, img23, img24, img25;
//time variables
boolean start = false;
int startTime;   
//different song screens 
boolean main = true;
boolean champagne = false;
boolean guitar = false;
boolean stereo = false;
boolean grave = false;
boolean polaroid = false;
boolean nyc = false;
boolean summer = false;
boolean sweater = false;
boolean down = false;
//text
int x;


//loading songs
Minim minim;
AudioPlayer song1;
AudioPlayer song2;
AudioPlayer song3;
AudioPlayer song4;
AudioPlayer song5;
AudioPlayer song6;
AudioPlayer song7;
AudioPlayer song8;
AudioPlayer song9;

void setup(){
  size(1000, 800);
  background(255);
  
  
  //loading icons on main page
  img1 = loadImage("stereo.png");          //lost in stereo
  img2 = loadImage("guitar.png");     //wake me up
  img3 = loadImage("champagne.jpeg");       //new years day
  img4 = loadImage("polaroid.png");        //golden days
  img5 = loadImage("shovel.png");          //six feet under
  img6 = loadImage("headstone.png");
  img7 = loadImage("nyc.png");         //twin skeletons
  img8 = loadImage("summer.png");
  img9 = loadImage("sweater.PNG");
  img10 = loadImage("down.JPG");
    //glowing icons
    img11 = loadImage("stereo2.png");     
    img12 = loadImage("guitar2.png");
    img13 = loadImage("champagne2.png");
    img14 = loadImage("polaroid2.png");
    img15 = loadImage("grave2.png");
    img16 = loadImage("nyc2.png");
    img17 = loadImage("summer2.png");
    img18 = loadImage("sweater2.png");
    img19 = loadImage("down2.png");  
  //lyrics pictures
  imga = loadImage("5.JPG");
  imgb = loadImage("2.png");
  imgc = loadImage("3.JPG");
  imgd = loadImage("4.png");
  imge = loadImage("a.png");
  imgf = loadImage("6.JPG");
  imgg = loadImage("g.JPG");
  img20 = loadImage("body.jpg");
  img21 = loadImage("glitter.png");
  img22 = loadImage("glitter2.png");
  img23 = loadImage("shoe.jpg");
  img24 = loadImage("candle.png");
  img25 = loadImage("balloons.png");
  
  //loading songs
  minim = new Minim(this);
  song1 = minim.loadFile("lost_in_stereo.mp3");
  minim = new Minim(this);
  song2 = minim.loadFile("wake_me_up.mp3");
  minim = new Minim(this);
  song3 = minim.loadFile("new_years_day.mp3");
  minim = new Minim(this);
  song4 = minim.loadFile("golden_days.mp3");
  minim = new Minim(this);
  song5 = minim.loadFile("six_feet_under.mp3");
  minim = new Minim(this);
  song6 = minim.loadFile("twin_skeletons.mp3");
  minim = new Minim(this);
  song7 = minim.loadFile("ikwydls.mp3"); 
  minim = new Minim(this);
  song8 = minim.loadFile("sweater_weather.mp3");
  minim = new Minim(this);
  song9 = minim.loadFile("down.mp3");
}

void draw(){
  
  //display icons on main page
  image(img1, 600, 50, 150, 150);
  image(img2, 650, 600, 250, 110);
  image(img3, 50, 150, 150, 150);
  image(img4, 800, 300, 115, 130);
  image(img6, 100, 500, 130, 130);
  image(img5, 150, 500, 130, 130);
  image(img7, 400, 400, 170, 120);
  image(img8, 310, 200, 180, 130);
  image(img9, 380, 630, 140, 120);
  image(img10, 620, 310, 120, 120);
  
 /*  animate
 
     if (start){
    size++;
      
    int time = millis() - startTime;         // total time in milliseconds - the time the mouse was pressed 
    if (time > 2500){
    size = 1;
      }   
     } 
 */
 
  // song1: lost in stereo 
  if (stereo){ 
    background(255);
    image(img1, 600, 50, 150, 150);
    if (start){
      int time = millis() - startTime;
      if (time > 4000){
      image(imga, 50, 50, 900, 700);
      }
      if (time > 7300){
      image(imgb, 50, 50, 900, 700); 
      }
      if (time > 7500){
      image(imgc, 50, 50, 900, 700);
      }
      if (time > 7900){
      image(imgd, 50, 50, 900, 700);
       }
      if (time > 8500){
      image(imgg, 0, 50, x, 700);     
      x = x+200;
      }
      if (time > 11200){
      image(imgf, 50, 50, 900, 700);
      }
      if (time > 13300){
      image(imgb, 50, 50, 900, 700); 
      }
      if (time > 13500){
      image(imgc, 50, 50, 900, 700);
      }
      if (time > 13900){
      image(imgd, 50, 50, 900, 700);
       }
      if (time > 14700){
      image(imgg, 40, 100, 9000, 500);  
      }
    }
  }
  
  //song 2: wake me up
  else if (guitar){
    background(255);
    image(img2, 650, 600, 250, 110);
    
  }
  
  //song 3: new years day
  else if (champagne){
    background(255);
    image(img3, 50, 150, 150, 150);
    int time = millis() - startTime;
      if (time > 4500){ 
      image(img21, 700, 600, 200, 200);
      image(img22, 50, 50, 300, 300);
      textSize(30);
      fill(0); 
      text("there's glitter on the floor after the party", 400, 400);
      }
      if (time > 11000){ 
      background(255);
      image(img21, 700, 600, 200, 200);
      image(img22, 50, 50, 300, 300);
      image(img23, 500, 600, 200, 200);
      textSize(30);
      fill(0); 
      text("girls carrying their shoes down in the lobby", 300, 400); 
      }
      if (time > 16000){ 
      background(255);
      image(img24, 700, 600, 200, 200);
      image(img25, 500, 100, 500, 300);
      textSize(30);
      fill(0); 
      text("candle wax and polaroids on the hard wood floor", 100, 500); 
      }
  }
  
  //song 4: golden days
  else if (polaroid){
    background(255);
    image(img4, 800, 300, 115, 130);
    
  }
  
  //song 5: six feet under
  else if (grave){
    background(255);
    image(img6, 100, 500, 130, 130);
    image(img5, 150, 500, 130, 130);
  }
  
  //song 6: twin skeletons
  else if (nyc){
    background(255);
    image(img7, 400, 400, 170, 120);
    
  }
  
  //song 7: i know what you did last summer
  else if (summer){
    background(255);
    image(img8, 310, 200, 180, 130);
    
  }
  
  //song 8: sweater weather
  else if (sweater){
    background(255);
    image(img9, 380, 630, 140, 120);
    
  }
  
  //song 9: down
  else if (down){
    background(0);
    image(img10, 620, 310, 120, 120);
    int time = millis() - startTime;
    if (time > 14000){
    textSize(30);
    fill(255);
    text("didn't even really wanna go", 20, 20);
    }
    if (time > 15000){
    textSize(30);
    fill(255);
    text("but if you get me out you get a show", 100, 50);
    }
    if (time > 19000){
    textSize(30);
    fill(255);
    text("theres so many bodies on the floor", 180, 80);
    image(img20, 400, 300);
    }
    if (time > 21000){
    textSize(30);
    fill(255);
    text("so", 400, 800);
    }
    if (time > 19000){
    textSize(30);
    fill(255);
    text("baby we should go and add some more", 180, 80);
    image(img20, 400, 300);
    }
    
  }
//  hover over icon, highlight and show name of song on main page
  if (mouseX > 610 && mouseX < 740 &&
      mouseY > 100 && mouseY < 200){
      image(img11, 532, 25, 285, 210);
     }
  else if(mouseX > 660 && mouseX < 840 &&
          mouseY > 600 && mouseY < 720){
     image(img12, 625, 575, 290, 150);
     }
  else if(mouseX > 65 && mouseX < 190 &&
          mouseY > 140 && mouseY < 310){
     image(img13, 15, 128, 220, 195);   
     }
  else if(mouseX > 805 && mouseX < 910 &&
          mouseY > 300 && mouseY < 430){
     image(img14, 775, 280, 190, 170);
     }      
  else if(mouseX > 100 && mouseX < 280 &&
          mouseY > 500 && mouseY < 630){
     image(img15, 85, 460, 210, 210);
     }
  else if(mouseX > 400 && mouseX < 580 &&
          mouseY > 400 && mouseY < 490){
      image(img16, 400, 400, 190, 145);
     }  
  else if(mouseX > 300 && mouseX < 480 &&
          mouseY > 200 && mouseY < 320){
      image(img17, 300, 190, 200, 150);
     }
  else if(mouseX > 380 && mouseX < 520 &&
          mouseY > 630 && mouseY < 750){
      image(img18, 365, 617, 170, 150);
     }
  else if(mouseX > 640 && mouseX < 720 &&
          mouseY > 310 && mouseY < 420){
      image(img19, 615, 300, 130, 135);
     }    
  }


// spacebar functionality
void keyPressed(){
  if (key == 32){
  song1.pause();      //pause the song that is playing
  song2.pause();
  song3.pause();
  song4.pause();
  song5.pause();
  song6.pause();
  song7.pause();
  song8.pause();
  song9.pause();
  reset();            //return to the main page
  }
}

void mousePressed(){
  //stops songs from overlapping
  song1.pause();
  song2.pause();
  song3.pause();
  song4.pause();
  song5.pause();
  song6.pause();
  song7.pause();
  song8.pause();
  song9.pause();
  
  //specific contraints to play each song
  if (mouseX > 610 && mouseX < 740 &&
      mouseY > 100 && mouseY < 200){
      song1.rewind();
      song1.play();  
      main = true;
      stereo = true; 
      start = true;
      startTime = millis();
      }
  else if(mouseX > 660 && mouseX < 840 &&
     mouseY > 600 && mouseY < 720){
      song2.rewind();
      song2.play();  
      stereo = false;
      guitar = true;
      }   
  else if(mouseX > 65 && mouseX < 190 &&
     mouseY > 140 && mouseY < 310){
      song3.rewind();
      song3.play(); 
      stereo = false;
      guitar = false;
      champagne = true;
      }
  else if(mouseX > 805 && mouseX < 910 &&
     mouseY > 300 && mouseY < 430){
      song4.rewind();
      song4.play();  
      stereo = false;
      guitar = false;
      champagne = false;
      polaroid = true;
      }  
  else if(mouseX > 100 && mouseX < 280 &&
     mouseY > 500 && mouseY < 630){
      song5.rewind();
      song5.play(); 
      stereo = false;
      guitar = false;
      champagne = false;
      polaroid = false;
      grave = true;
      
      }  
  else if(mouseX > 400 && mouseX < 580 &&
     mouseY > 400 && mouseY < 490){
      song6.rewind();
      song6.play();  
      stereo = false;
      guitar = false;
      champagne = false;
      polaroid = false;
      grave = false;
      nyc = true;
      } 
  else if(mouseX > 300 && mouseX < 480 &&
     mouseY > 200 && mouseY < 320){
      song7.rewind();
      song7.play();  
      stereo = false;
      guitar = false;
      champagne = false;
      polaroid = false;
      grave = false;
      nyc = false;
      summer = true;
      } 
  else if(mouseX > 380 && mouseX < 520 &&
     mouseY > 630 && mouseY < 750){
      song8.rewind();
      song8.play();  
      stereo = false;
      guitar = false;
      champagne = false;
      polaroid = false;
      grave = false;
      nyc = false;
      summer = false;
      sweater = true;
      } 
   else if(mouseX > 640 && mouseX < 720 &&
     mouseY > 310 && mouseY < 420){
      song9.rewind();
      song9.play();  
      stereo = false;
      guitar = false;
      champagne = false;
      polaroid = false;
      grave = false;
      nyc = false;
      summer = false;
      sweater = false;
      down = true;
      } 
}

void reset(){
  background(255);
  main = true;
  stereo = false;
  guitar = false;
  champagne = false;
  polaroid = false;
  grave = false;
  nyc = false;
  summer = false;
  sweater = false;
  down = false;
}
