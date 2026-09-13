program PACMAN;

uses crt;

type

matrix = array [1..120,1..30] of char;

fruta = array  [1..8] of integer;


var


 num1,num2: integer;

 frutaX: fruta;

 frutaY : fruta;

  frutal: boolean;

 casilleros : matrix;

j,i,oky,i1,i2:integer;

xf1,xf2,xf3,yf1,yf2,yf3 , disix, disiy: integer;

movix1,movix2,movix3,moviy1,moviy2,moviy3 : integer;

x,y,xv,yv : integer;

mov: char;

pasosx,pasosy: integer;

pasos1,pasos2,pasos3 : boolean ;



conRE1,conRE2,conRE3: integer;

xfv1,xfv2,xfv3,yfv1,yfv2,yfv3: integer;

// NEW

camin1,camin2: integer;

guia1,guia2,guia3: boolean; //resultado

obsta: boolean;

pasar : boolean;

conRecu1,conRecu2,conRecu3 : integer;


imitador1,imitador2,imitador3  : boolean;

ult1,ult2,ult3 : integer;


// The New 52

 contFrutas:integer;


 muerte:boolean;

 vidas : integer;

 ganar: boolean;







procedure CreaMarco;
 begin
 textcolor(red);
 textbackground(red);          // Color

 for i1:= 21 to 24 do
  begin
     gotoxy(i1,14);
     write('O');    casilleros[i1,14]:='P';
    delay(2);
  end;


i2:= 13;
for i1:=4 to 13 do
  begin
   gotoxy(24,i2);
   write('O');    casilleros[24,i2]:='P';
   delay(3);
   i2:=i2-1;
  end;

for i1:= 25 to 95 do
  begin
   gotoxy(i1,4);
   write('O');      casilleros[i1,4]:='P';
  end;

for i1:=4 to 13 do
  begin
   gotoxy(96,i1);
   write('O');    casilleros[96,i1]:='P';
   delay(3);
  end;



for i1:= 96 to 99 do
  begin
     gotoxy(i1,14);
     write('O');    casilleros[i1,14]:='P';
     delay(2);
  end;


i2:=99;
for i1:= 96 to 99 do
  begin
     gotoxy(i2,16);
     write('O');          casilleros[i2,16]:='P';
     delay(2);
     i2:=i2-1;
  end;

for i1:=17 to 26 do
  begin
   gotoxy(96,i1);
   write('O');            casilleros[96,i1]:='P';
   delay(3);
  end;


i2:=95;
for i1:= 25 to 95 do
  begin
   gotoxy(i2,26);
   write('O');                      casilleros[i2,26]:='P';
   i2:=i2-1;

  end;


i2:=26;
for i1:=17 to 26 do
  begin
   gotoxy(24,i2);
   write('O');                      casilleros[24,i2]:='P';
   delay(3);
   i2:=i2-1;

  end;


i2:=24;
for i1:= 21 to 24 do
  begin
     gotoxy(i2,16);
     write('O');                     casilleros[i2,16]:='P';
     delay(2);
     i2:=i2-1;

  end;

 end;

procedure Relleno;
begin

 textbackground(blue);   //Color
 textcolor(blue);


oky:=5;              //y=5
 gotoxy(32+(25),oky);      casilleros[32+(25),oky]:='P';
  write('O');
 gotoxy(33+(25),oky);      casilleros[33+(25),oky]:='P';
 write('O');
 gotoxy(34+(25),oky);      casilleros[34+(25),oky]:='P';
 write('O');
 gotoxy(35+(25),oky);      casilleros[35+(25),oky]:='P';
 write('O');
 gotoxy(36+(25),oky);      casilleros[36+(25),oky]:='P';
 write('O');
 gotoxy(37+(25),oky);      casilleros[37+(25),oky]:='P';
 write('O');
 gotoxy(38+(25),oky);      casilleros[38+(25),oky]:='P';
 write('O');
 gotoxy(39+(25),oky);      casilleros[39+(25),oky]:='P';
 write('O');
 gotoxy(40+(25),oky);      casilleros[40+(25),oky]:='P';
 write('O');
 gotoxy(41+(25),oky);      casilleros[41+(25),oky]:='P';
 write('O');
 gotoxy(42+(25),oky);      casilleros[42+(25),oky]:='P';
 write('O');
 gotoxy(56+(25),oky);      casilleros[56+(25),oky]:='P';
 write('O');
 gotoxy(57+(25),oky);      casilleros[57+(25),oky]:='P';
 write('O');
 gotoxy(58+(25),oky);      casilleros[58+(25),oky]:='P';
 write('O');
oky:=6;               //y:6
 gotoxy(1+(25),oky);       casilleros[1+(25),oky]:='P';
 write('O');
 gotoxy(2+(25),oky);       casilleros[2+(25),oky]:='P';
 write('O');
 gotoxy(3+(25),oky);       casilleros[3+(25),oky]:='P';
 write('O');
 gotoxy(4+(25),oky);       casilleros[4+(25),oky]:='P';
 write('O');

 gotoxy(6+(25),oky);       casilleros[6+(25),oky]:='P';
 write('O');
 gotoxy(9+(25),oky);       casilleros[9+(25),oky]:='P';
 write('O');
 gotoxy(10+(25),oky);      casilleros[10+(25),oky]:='P';
 write('O');
 gotoxy(11+(25),oky);      casilleros[11+(25),oky]:='P';
 write('O');
 gotoxy(12+(25),oky);      casilleros[12+(25),oky]:='P';
 write('O');
 gotoxy(13+(25),oky);      casilleros[13+(25),oky]:='P';
 write('O');
 gotoxy(14+(25),oky);      casilleros[14+(25),oky]:='P';
 write('O');
 gotoxy(15+(25),oky);      casilleros[15+(25),oky]:='P';
 write('O');
 gotoxy(16+(25),oky);      casilleros[16+(25),oky]:='P';
 write('O');
 gotoxy(20+(25),oky);      casilleros[20+(25),oky]:='P';
 write('O');
 gotoxy(22+(25),oky);      casilleros[22+(25),oky]:='P';
 write('O');
 gotoxy(23+(25),oky);      casilleros[23+(25),oky]:='P';
 write('O');
 gotoxy(24+(25),oky);      casilleros[24+(25),oky]:='P';
 write('O');
 gotoxy(25+(25),oky);      casilleros[25+(25),oky]:='P';
 write('O');
 gotoxy(26+(25),oky);      casilleros[26+(25),oky]:='P';
 write('O');
 gotoxy(27+(25),oky);      casilleros[27+(25),oky]:='P';
 write('O');
 gotoxy(28+(25),oky);      casilleros[28+(25),oky]:='P';
 write('O');
 gotoxy(29+(25),oky);      casilleros[29+(25),oky]:='P';
 write('O');
 gotoxy(32+(25),oky);      casilleros[32+(25),oky]:='P';
 write('O');
 gotoxy(64+(25),oky);      casilleros[64+(25),oky]:='P';
 write('O');
 gotoxy(65+(25),oky);      casilleros[65+(25),oky]:='P';
 write('O');
 gotoxy(66+(25),oky);      casilleros[66+(25),oky]:='P';
 write('O');
 gotoxy(67+(25),oky);      casilleros[67+(25),oky]:='P';
 write('O');
 oky:=7;              //y=7
  gotoxy(1+(25),oky);      casilleros[1+(25),oky]:='P';
  write('O');
  gotoxy(6+(25),oky);      casilleros[6+(25),oky]:='P';
  write('O');
  gotoxy(16+(25),oky);     casilleros[16+(25),oky]:='P';
  write('O');
  gotoxy(19+(25),oky);     casilleros[19+(25),oky]:='P';
  write('O');
  gotoxy(20+(25),oky);     casilleros[20+(25),oky]:='P';
  write('O');
  gotoxy(34+(25),oky);     casilleros[34+(25),oky]:='P';
  write('O');
  gotoxy(36+(25),oky);     casilleros[36+(25),oky]:='P';
  write('O');
  gotoxy(37+(25),oky);     casilleros[37+(25),oky]:='P';
  write('O');
  gotoxy(38+(25),oky);     casilleros[38+(25),oky]:='P';
  write('O');
  gotoxy(46+(25),oky);     casilleros[46+(25),oky]:='P';
  write('O');
  gotoxy(47+(25),oky);     casilleros[47+(25),oky]:='P';
  write('O');
  gotoxy(48+(25),oky);     casilleros[48+(25),oky]:='P';
  write('O');
  gotoxy(49+(25),oky);     casilleros[49+(25),oky]:='P';
  write('O');
  gotoxy(50+(25),oky);     casilleros[50+(25),oky]:='P';
  write('O');
  gotoxy(51+(25),oky);     casilleros[51+(25),oky]:='P';
  write('O');
  gotoxy(52+(25),oky);     casilleros[52+(25),oky]:='P';
  write('O');
  gotoxy(58+(25),oky);     casilleros[58+(25),oky]:='P';
  write('O');
  gotoxy(59+(25),oky);     casilleros[59+(25),oky]:='P';
  write('O');
  gotoxy(60+(25),oky);     casilleros[60+(25),oky]:='P';
  write('O');
  gotoxy(61+(25),oky);     casilleros[61+(25),oky]:='P';
  write('O');
  gotoxy(65+(25),oky);     casilleros[65+(25),oky]:='P';
  write('O');
  gotoxy(66+(25),oky);     casilleros[66+(25),oky]:='P';
  write('O');
  gotoxy(67+(25),oky);     casilleros[67+(25),oky]:='P';
  write('O');
  gotoxy(68+(25),oky);     casilleros[68+(25),oky]:='P';
  write('O');
oky:=8;               //y=8
  gotoxy(1+(25),oky);      casilleros[1+(25),oky]:='P';
  write('O');
  gotoxy(3+(25),oky);      casilleros[3+(25),oky]:='P';
  write('O');
  gotoxy(4+(25),oky);      casilleros[4+(25),oky]:='P';
  write('O');
  gotoxy(6+(25),oky);      casilleros[6+(25),oky]:='P';
  write('O');
  gotoxy(8+(25),oky);      casilleros[8+(25),oky]:='P';
  write('O');
  gotoxy(9+(25),oky);      casilleros[9+(25),oky]:='P';
  write('O');
  gotoxy(10+(25),oky);     casilleros[10+(25),oky]:='P';
  write('O');
  gotoxy(11+(25),oky);     casilleros[11+(25),oky]:='P';
  write('O');
  gotoxy(12+(25),oky);     casilleros[12+(25),oky]:='P';
  write('O');
  gotoxy(13+(25),oky);     casilleros[13+(25),oky]:='P';
  write('O');
  gotoxy(14+(25),oky);     casilleros[14+(25),oky]:='P';
  write('O');
  gotoxy(16+(25),oky);     casilleros[16+(25),oky]:='P';
  write('O');
  gotoxy(17+(25),oky);     casilleros[17+(25),oky]:='P';
  write('O');
  gotoxy(20+(25),oky);     casilleros[20+(25),oky]:='P';
  write('O');
  gotoxy(22+(25),oky);     casilleros[22+(25),oky]:='P';
  write('O');
  gotoxy(23+(25),oky);     casilleros[23+(25),oky]:='P';
  write('O');
  gotoxy(24+(25),oky);     casilleros[24+(25),oky]:='P';
  write('O');
  gotoxy(25+(25),oky);     casilleros[25+(25),oky]:='P';
  write('O');
  gotoxy(26+(25),oky);     casilleros[26+(25),oky]:='P';
  write('O');
  gotoxy(28+(25),oky);     casilleros[28+(25),oky]:='P';
  write('O');
  gotoxy(29+(25),oky);     casilleros[29+(25),oky]:='P';
  write('O');
  gotoxy(30+(25),oky);     casilleros[30+(25),oky]:='P';
  write('O');
  gotoxy(31+(25),oky);     casilleros[31+(25),oky]:='P';
  write('O');
  gotoxy(34+(25),oky);     casilleros[34+(25),oky]:='P';
  write('O');
  gotoxy(36+(25),oky);     casilleros[36+(25),oky]:='P';
  write('O');
  gotoxy(37+(25),oky);     casilleros[37+(25),oky]:='P';
  write('O');
  gotoxy(38+(25),oky);     casilleros[38+(25),oky]:='P';
  write('O');
  gotoxy(39+(25),oky);     casilleros[39+(25),oky]:='P';
  write('O');
  gotoxy(40+(25),oky);     casilleros[40+(25),oky]:='P';
  write('O');
  gotoxy(52+(25),oky);     casilleros[52+(25),oky]:='P';
  write('O');
  gotoxy(55+(25),oky);     casilleros[55+(25),oky]:='P';
  write('O');
  gotoxy(56+(25),oky);     casilleros[56+(25),oky]:='P';
  write('O');
  gotoxy(58+(25),oky);     casilleros[58+(25),oky]:='P';
  write('O');
  gotoxy(66+(25),oky);     casilleros[66+(25),oky]:='P';
  write('O');
  gotoxy(67+(25),oky);     casilleros[67+(25),oky]:='P';
  write('O');
  gotoxy(68+(25),oky);     casilleros[68+(25),oky]:='P';
  write('O');
oky:=9;               //y=9
  gotoxy(1+(25),oky);      casilleros[1+(25),oky]:='P';
  write('O');
  gotoxy(3+(25),oky);      casilleros[3+(25),oky]:='P';
  write('O');
  gotoxy(4+(25),oky);      casilleros[4+(25),oky]:='P';
  write('O');
  gotoxy(6+(25),oky);      casilleros[6+(25),oky]:='P';
  write('O');
  gotoxy(14+(25),oky);     casilleros[14+(25),oky]:='P';
  write('O');
  gotoxy(20+(25),oky);     casilleros[20+(25),oky]:='P';
  write('O');
  gotoxy(24+(25),oky);     casilleros[24+(25),oky]:='P';
  write('O');
  gotoxy(25+(25),oky);     casilleros[25+(25),oky]:='P';
  write('O');
  gotoxy(26+(25),oky);     casilleros[26+(25),oky]:='P';
  write('O');
  gotoxy(34+(25),oky);     casilleros[34+(25),oky]:='P';
  write('O');
  gotoxy(42+(25),oky);     casilleros[42+(25),oky]:='P';
  write('O');
  gotoxy(43+(25),oky);     casilleros[43+(25),oky]:='P';
  write('O');
  gotoxy(44+(25),oky);     casilleros[44+(25),oky]:='P';
  write('O');
  gotoxy(45+(25),oky);     casilleros[45+(25),oky]:='P';
  write('O');
  gotoxy(46+(25),oky);     casilleros[46+(25),oky]:='P';
  write('O');
  gotoxy(47+(25),oky);     casilleros[47+(25),oky]:='P';
  write('O');
  gotoxy(48+(25),oky);     casilleros[48+(25),oky]:='P';
  write('O');
  gotoxy(49+(25),oky);     casilleros[49+(25),oky]:='P';
  write('O');
  gotoxy(50+(25),oky);     casilleros[50+(25),oky]:='P';
  write('O');
  gotoxy(52+(25),oky);     casilleros[52+(25),oky]:='P';
  write('O');
  gotoxy(58+(25),oky);     casilleros[58+(25),oky]:='P';
  write('O');
  gotoxy(61+(25),oky);     casilleros[61+(25),oky]:='P';
  write('O');
  gotoxy(62+(25),oky);     casilleros[62+(25),oky]:='P';
  write('O');
  gotoxy(63+(25),oky);     casilleros[63+(25),oky]:='P';
  write('O');
  gotoxy(64+(25),oky);     casilleros[64+(25),oky]:='P';
  write('O');
  gotoxy(68+(25),oky);     casilleros[68+(25),oky]:='P';
  write('O');
oky:= 10;            // y=10
  gotoxy(1+(25),oky);      casilleros[1+(25),oky]:='P';
  write('O');
  gotoxy(3+(25),oky);      casilleros[3+(25),oky]:='P';
  write('O');
  gotoxy(4+(25),oky);      casilleros[4+(25),oky]:='P';
  write('O');
  gotoxy(6+(25),oky);      casilleros[6+(25),oky]:='P';
  write('O');
  gotoxy(7+(25),oky);      casilleros[7+(25),oky]:='P';
  write('O');
  gotoxy(8+(25),oky);      casilleros[8+(25),oky]:='P';
  write('O');
  gotoxy(9+(25),oky);      casilleros[9+(25),oky]:='P';
  write('O');
  gotoxy(10+(25),oky);     casilleros[10+(25),oky]:='P';
  write('O');
  gotoxy(14+(25),oky);     casilleros[14+(25),oky]:='P';
  write('O');
  gotoxy(17+(25),oky);     casilleros[17+(25),oky]:='P';
  write('O');
  gotoxy(18+(25),oky);     casilleros[18+(25),oky]:='P';
  write('O');
  gotoxy(20+(25),oky);     casilleros[20+(25),oky]:='P';
  write('O');
  gotoxy(30+(25),oky);     casilleros[30+(25),oky]:='P';
  write('O');
  gotoxy(31+(25),oky);     casilleros[31+(25),oky]:='P';
  write('O');
  gotoxy(32+(25),oky);     casilleros[32+(25),oky]:='P';
  write('O');
  gotoxy(33+(25),oky);     casilleros[33+(25),oky]:='P';
  write('O');
  gotoxy(34+(25),oky);     casilleros[34+(25),oky]:='P';
  write('O');
  gotoxy(44+(25),oky);     casilleros[44+(25),oky]:='P';
  write('O');

  gotoxy(58+(25),oky);     casilleros[58+(25),oky]:='P';
  write('O');
  gotoxy(61+(25),oky);     casilleros[61+(25),oky]:='P';
  write('O');
  gotoxy(62+(25),oky);     casilleros[62+(25),oky]:='P';
  write('O');
  gotoxy(63+(25),oky);     casilleros[63+(25),oky]:='P';
  write('O');
  gotoxy(64+(25),oky);     casilleros[64+(25),oky]:='P';
  write('O');
oky:=11;              // y=11
  gotoxy(1+(25),oky);      casilleros[1+(25),oky]:='P';
  write('O');

  gotoxy(17+(25),oky);     casilleros[17+(25),oky]:='P';
  write('O');
  gotoxy(18+(25),oky);     casilleros[18+(25),oky]:='P';
  write('O');
  gotoxy(23+(25),oky);     casilleros[23+(25),oky]:='P';
  write('O');
  gotoxy(24+(25),oky);     casilleros[24+(25),oky]:='P';
  write('O');
  gotoxy(25+(25),oky);     casilleros[25+(25),oky]:='P';
  write('O');
  gotoxy(26+(25),oky);     casilleros[26+(25),oky]:='P';
  write('O');
  gotoxy(27+(25),oky);     casilleros[27+(25),oky]:='P';
  write('O');

  gotoxy(36+(25),oky);     casilleros[36+(25),oky]:='P';
  write('O');
  gotoxy(37+(25),oky);     casilleros[37+(25),oky]:='P';
  write('O');
  gotoxy(38+(25),oky);     casilleros[38+(25),oky]:='P';
  write('O');
  gotoxy(40+(25),oky);     casilleros[40+(25),oky]:='P';
  write('O');
  gotoxy(41+(25),oky);     casilleros[41+(25),oky]:='P';
  write('O');
  gotoxy(42+(25),oky);     casilleros[42+(25),oky]:='P';
  write('O');
  gotoxy(44+(25),oky);     casilleros[44+(25),oky]:='P';
  write('O');
  gotoxy(47+(25),oky);     casilleros[47+(25),oky]:='P';
  write('O');
  gotoxy(48+(25),oky);     casilleros[48+(25),oky]:='P';
  write('O');
  gotoxy(49+(25),oky);     casilleros[49+(25),oky]:='P';
  write('O');
  gotoxy(50+(25),oky);     casilleros[50+(25),oky]:='P';
  write('O');
  gotoxy(51+(25),oky);     casilleros[51+(25),oky]:='P';
  write('O');
  gotoxy(52+(25),oky);     casilleros[52+(25),oky]:='P';
  write('O');
  gotoxy(53+(25),oky);     casilleros[53+(25),oky]:='P';
  write('O');
  gotoxy(54+(25),oky);     casilleros[54+(25),oky]:='P';
  write('O');
  gotoxy(55+(25),oky);     casilleros[55+(25),oky]:='P';
  write('O');
  gotoxy(67+(25),oky);     casilleros[67+(25),oky]:='P';
  write('O');
  gotoxy(68+(25),oky);     casilleros[68+(25),oky]:='P';
  write('O');
oky:=12;                 // y=12
  gotoxy(1+(25),oky);      casilleros[1+(25),oky]:='P';
  write('O');
  gotoxy(3+(25),oky);      casilleros[3+(25),oky]:='P';
  write('O');
  gotoxy(4+(25),oky);      casilleros[4+(25),oky]:='P';
  write('O');
  gotoxy(5+(25),oky);      casilleros[5+(25),oky]:='P';
  write('O');
  gotoxy(6+(25),oky);      casilleros[6+(25),oky]:='P';
  write('O');
  gotoxy(7+(25),oky);      casilleros[7+(25),oky]:='P';
  write('O');
  gotoxy(8+(25),oky);      casilleros[8+(25),oky]:='P';
  write('O');
  gotoxy(9+(25),oky);      casilleros[9+(25),oky]:='P';
  write('O');
  gotoxy(10+(25),oky);     casilleros[10+(25),oky]:='P';
  write('O');
  gotoxy(11+(25),oky);     casilleros[11+(25),oky]:='P';
  write('O');
  gotoxy(12+(25),oky);     casilleros[12+(25),oky]:='P';
  write('O');
  gotoxy(13+(25),oky);     casilleros[13+(25),oky]:='P';
  write('O');
  gotoxy(14+(25),oky);     casilleros[14+(25),oky]:='P';
  write('O');
  gotoxy(17+(25),oky);     casilleros[17+(25),oky]:='P';
  write('O');
  gotoxy(18+(25),oky);     casilleros[18+(25),oky]:='P';
  write('O');
  gotoxy(29+(25),oky);     casilleros[29+(25),oky]:='P';
  write('O');
  gotoxy(31+(25),oky);     casilleros[31+(25),oky]:='P';
  write('O');
  gotoxy(32+(25),oky);     casilleros[32+(25),oky]:='P';
  write('O');
  gotoxy(33+(25),oky);     casilleros[33+(25),oky]:='P';
  write('O');
  gotoxy(34+(25),oky);     casilleros[34+(25),oky]:='P';
  write('O');
  gotoxy(41+(25),oky);     casilleros[41+(25),oky]:='P';
  write('O');
  gotoxy(42+(25),oky);     casilleros[42+(25),oky]:='P';
  write('O');
  gotoxy(44+(25),oky);     casilleros[44+(25),oky]:='P';
  write('O');

  gotoxy(67+(25),oky);     casilleros[67+(25),oky]:='P';
  write('O');
  gotoxy(68+(25),oky);     casilleros[68+(25),oky]:='P';
  write('O');
oky:= 13;              // y = 13

  gotoxy(1+(25),oky);     casilleros[1+(25),oky]:='P';
  write('O');
  gotoxy(3+(25),oky);     casilleros[3+(25),oky]:='P';
  write('O');
  gotoxy(27+(25),oky);    casilleros[27+(25),oky]:='P';
  write('O');
  gotoxy(29+(25),oky);    casilleros[29+(25),oky]:='P';
  write('O');

  gotoxy(33+(25),oky);    casilleros[33+(25),oky]:='P';
  write('O');
  gotoxy(34+(25),oky);    casilleros[34+(25),oky]:='P';
  write('O');
  gotoxy(44+(25),oky);    casilleros[44+(25),oky]:='P';
  write('O');
  gotoxy(46+(25),oky);    casilleros[46+(25),oky]:='P';
  write('O');
  gotoxy(47+(25),oky);    casilleros[47+(25),oky]:='P';
  write('O');
  gotoxy(49+(25),oky);    casilleros[49+(25),oky]:='P';
  write('O');
  gotoxy(50+(25),oky);    casilleros[50+(25),oky]:='P';
  write('O');
  gotoxy(51+(25),oky);    casilleros[51+(25),oky]:='P';
  write('O');
  gotoxy(52+(25),oky);    casilleros[52+(25),oky]:='P';
  write('O');
  gotoxy(54+(25),oky);    casilleros[54+(25),oky]:='P';
  write('O');
  gotoxy(55+(25),oky);    casilleros[55+(25),oky]:='P';
  write('O');
  gotoxy(56+(25),oky);    casilleros[56+(25),oky]:='P';
  write('O');
  gotoxy(57+(25),oky);    casilleros[57+(25),oky]:='P';
  write('O');
  gotoxy(58+(25),oky);    casilleros[58+(25),oky]:='P';
  write('O');
  gotoxy(59+(25),oky);    casilleros[59+(25),oky]:='P';
  write('O');
  gotoxy(60+(25),oky);    casilleros[60+(25),oky]:='P';
  write('O');
  gotoxy(61+(25),oky);    casilleros[61+(25),oky]:='P';
  write('O');
  gotoxy(62+(25),oky);    casilleros[62+(25),oky]:='P';
  write('O');
  gotoxy(65+(25),oky);    casilleros[65+(25),oky]:='P';
  write('O');
oky:= 14;             // y = 14
  gotoxy(1+(25),oky);     casilleros[1+(25),oky]:='P';
  write('O');
  gotoxy(3+(25),oky);     casilleros[3+(25),oky]:='P';
  write('O');
  gotoxy(6+(25),oky);     casilleros[6+(25),oky]:='P';
  write('O');
  gotoxy(7+(25),oky);     casilleros[7+(25),oky]:='P';
  write('O');
  gotoxy(8+(25),oky);     casilleros[8+(25),oky]:='P';
  write('O');
  gotoxy(9+(25),oky);     casilleros[9+(25),oky]:='P';
  write('O');
  gotoxy(10+(25),oky);    casilleros[10+(25),oky]:='P';
  write('O');
  gotoxy(13+(25),oky);    casilleros[13+(25),oky]:='P';
  write('O');
  gotoxy(14+(25),oky);    casilleros[14+(25),oky]:='P';
  write('O');
  gotoxy(15+(25),oky);    casilleros[15+(25),oky]:='P';
  write('O');
  gotoxy(16+(25),oky);    casilleros[16+(25),oky]:='P';
  write('O');
  gotoxy(17+(25),oky);    casilleros[17+(25),oky]:='P';
  write('O');
  gotoxy(18+(25),oky);    casilleros[18+(25),oky]:='P';
  write('O');
  gotoxy(19+(25),oky);    casilleros[19+(25),oky]:='P';
  write('O');
  gotoxy(20+(25),oky);    casilleros[20+(25),oky]:='P';
  write('O');
  gotoxy(21+(25),oky);    casilleros[21+(25),oky]:='P';
  write('O');
  gotoxy(23+(25),oky);    casilleros[23+(25),oky]:='P';
  write('O');
  gotoxy(24+(25),oky);    casilleros[24+(25),oky]:='P';
  write('O');
  gotoxy(25+(25),oky);    casilleros[25+(25),oky]:='P';
  write('O');
  gotoxy(27+(25),oky);    casilleros[27+(25),oky]:='P';
  write('O');
  gotoxy(30+(25),oky);    casilleros[30+(25),oky]:='P';
  write('O');
  gotoxy(31+(25),oky);    casilleros[31+(25),oky]:='P';
  write('O');

  gotoxy(38+(25),oky);    casilleros[38+(25),oky]:='P';
  write('O');
  gotoxy(39+(25),oky);    casilleros[39+(25),oky]:='P';
  write('O');
  gotoxy(44+(25),oky);    casilleros[44+(25),oky]:='P';
  write('O');
  gotoxy(46+(25),oky);    casilleros[46+(25),oky]:='P';
  write('O');
  gotoxy(49+(25),oky);    casilleros[49+(25),oky]:='P';
  write('O');
  gotoxy(54+(25),oky);    casilleros[54+(25),oky]:='P';
  write('O');
  gotoxy(59+(25),oky);    casilleros[59+(25),oky]:='P';
  write('O');
  gotoxy(60+(25),oky);    casilleros[60+(25),oky]:='P';
  write('O');
  gotoxy(61+(25),oky);    casilleros[61+(25),oky]:='P';
  write('O');
  gotoxy(65+(25),oky);    casilleros[65+(25),oky]:='P';
  write('O');
  gotoxy(66+(25),oky);    casilleros[66+(25),oky]:='P';
  write('O');
oky:= 15;             //  y = 15
  gotoxy(1+(25),oky);     casilleros[1+(25),oky]:='P';
  write('O');
  gotoxy(3+(25),oky);     casilleros[3+(25),oky]:='P';
  write('O');
  gotoxy(6+(25),oky);     casilleros[6+(25),oky]:='P';
  write('O');
  gotoxy(7+(25),oky);     casilleros[7+(25),oky]:='P';
  write('O');
  gotoxy(8+(25),oky);     casilleros[8+(25),oky]:='P';
  write('O');
  gotoxy(9+(25),oky);     casilleros[9+(25),oky]:='P';
  write('O');
  gotoxy(15+(25),oky);    casilleros[15+(25),oky]:='P';
  write('O');
  gotoxy(16+(25),oky);    casilleros[16+(25),oky]:='P';
  write('O');
  gotoxy(20+(25),oky);    casilleros[20+(25),oky]:='P';
  write('O');
  gotoxy(21+(25),oky);    casilleros[21+(25),oky]:='P';
  write('O');
  gotoxy(23+(25),oky);    casilleros[23+(25),oky]:='P';
  write('O');
  gotoxy(24+(25),oky);    casilleros[24+(25),oky]:='P';
  write('O');
  gotoxy(25+(25),oky);    casilleros[25+(25),oky]:='P';
  write('O');
  gotoxy(27+(25),oky);    casilleros[27+(25),oky]:='P';
  write('O');
  gotoxy(31+(25),oky);    casilleros[31+(25),oky]:='P';
  write('O');

  gotoxy(33+(25),oky);    casilleros[33+(25),oky]:='P';
  write('O');
  gotoxy(34+(25),oky);    casilleros[34+(25),oky]:='P';
  write('O');
  gotoxy(35+(25),oky);    casilleros[35+(25),oky]:='P';
  write('O');
  gotoxy(36+(25),oky);    casilleros[36+(25),oky]:='P';
  write('O');
  gotoxy(37+(25),oky);    casilleros[37+(25),oky]:='P';
  write('O');
  gotoxy(38+(25),oky);    casilleros[38+(25),oky]:='P';
  write('O');
  gotoxy(39+(25),oky);    casilleros[39+(25),oky]:='P';
  write('O');
  gotoxy(41+(25),oky);    casilleros[41+(25),oky]:='P';
  write('O');
  gotoxy(56+(25),oky);    casilleros[56+(25),oky]:='P';
  write('O');
  gotoxy(64+(25),oky);    casilleros[64+(25),oky]:='P';
  write('O');
  gotoxy(65+(25),oky);    casilleros[65+(25),oky]:='P';
  write('O');
oky:= 16;            //  y = 16
  gotoxy(1+(25),oky);     casilleros[1+(25),oky]:='P';
  write('O');
  gotoxy(12+(25),oky);    casilleros[12+(25),oky]:='P';
  write('O');
  gotoxy(15+(25),oky);    casilleros[15+(25),oky]:='P';
  write('O');
  gotoxy(16+(25),oky);    casilleros[16+(25),oky]:='P';
  write('O');
  gotoxy(23+(25),oky);    casilleros[23+(25),oky]:='P';
  write('O');
  gotoxy(24+(25),oky);    casilleros[24+(25),oky]:='P';
  write('O');
  gotoxy(25+(25),oky);    casilleros[25+(25),oky]:='P';
  write('O');
  gotoxy(27+(25),oky);    casilleros[27+(25),oky]:='P';
  write('O');


  gotoxy(41+(25),oky);    casilleros[41+(25),oky]:='P';
  write('O');

  gotoxy(47+(25),oky);    casilleros[47+(25),oky]:='P';
  write('O');
  gotoxy(48+(25),oky);    casilleros[48+(25),oky]:='P';
  write('O');
  gotoxy(50+(25),oky);    casilleros[50+(25),oky]:='P';
  write('O');
  gotoxy(51+(25),oky);    casilleros[51+(25),oky]:='P';
  write('O');
  gotoxy(52+(25),oky);    casilleros[52+(25),oky]:='P';
  write('O');

  gotoxy(65+(25),oky);    casilleros[65+(25),oky]:='P';
  write('O');
  gotoxy(67+(25),oky);    casilleros[67+(25),oky]:='P';
  write('O');
oky:= 17;             // y = 17
  gotoxy(3+(25),oky);     casilleros[3+(25),oky]:='P';
  write('O');
  gotoxy(4+(25),oky);     casilleros[4+(25),oky]:='P';
  write('O');
  gotoxy(5+(25),oky);     casilleros[5+(25),oky]:='P';
  write('O');
  gotoxy(6+(25),oky);     casilleros[6+(25),oky]:='P';
  write('O');
  gotoxy(7+(25),oky);     casilleros[7+(25),oky]:='P';
  write('O');
  gotoxy(8+(25),oky);     casilleros[8+(25),oky]:='P';
  write('O');
  gotoxy(9+(25),oky);     casilleros[9+(25),oky]:='P';
  write('O');
  gotoxy(10+(25),oky);    casilleros[10+(25),oky]:='P';
  write('O');
  gotoxy(12+(25),oky);    casilleros[12+(25),oky]:='P';
  write('O');
  gotoxy(21+(25),oky);    casilleros[21+(25),oky]:='P';
  write('O');
  gotoxy(30+(25),oky);    casilleros[30+(25),oky]:='P';
  write('O');
  gotoxy(33+(25),oky);    casilleros[33+(25),oky]:='P';
  write('O');
  gotoxy(34+(25),oky);    casilleros[34+(25),oky]:='P';
  write('O');
  gotoxy(37+(25),oky);    casilleros[37+(25),oky]:='P';
  write('O');
  gotoxy(38+(25),oky);    casilleros[38+(25),oky]:='P';
  write('O');
  gotoxy(39+(25),oky);    casilleros[39+(25),oky]:='P';
  write('O');
  gotoxy(41+(25),oky);    casilleros[41+(25),oky]:='P';
  write('O');
  gotoxy(43+(25),oky);    casilleros[43+(25),oky]:='P';
  write('O');
  gotoxy(44+(25),oky);    casilleros[44+(25),oky]:='P';
  write('O');
  gotoxy(45+(25),oky);    casilleros[45+(25),oky]:='P';
  write('O');
  gotoxy(46+(25),oky);    casilleros[46+(25),oky]:='P';
  write('O');
  gotoxy(47+(25),oky);    casilleros[47+(25),oky]:='P';
  write('O');
  gotoxy(48+(25),oky);    casilleros[48+(25),oky]:='P';
  write('O');
  gotoxy(52+(25),oky);    casilleros[52+(25),oky]:='P';
  write('O');
  gotoxy(53+(25),oky);    casilleros[53+(25),oky]:='P';
  write('O');
  gotoxy(54+(25),oky);    casilleros[54+(25),oky]:='P';
  write('O');
  gotoxy(55+(25),oky);    casilleros[55+(25),oky]:='P';
  write('O');
  gotoxy(56+(25),oky);    casilleros[56+(25),oky]:='P';
  write('O');
  gotoxy(59+(25),oky);    casilleros[59+(25),oky]:='P';
  write('O');
  gotoxy(60+(25),oky);    casilleros[60+(25),oky]:='P';
  write('O');
  gotoxy(61+(25),oky);    casilleros[61+(25),oky]:='P';
  write('O');
  gotoxy(67+(25),oky);    casilleros[67+(25),oky]:='P';
  write('O');
oky:= 18;             // y = 18
  gotoxy(12+(25),oky);    casilleros[12+(25),oky]:='P';
  write('O');
  gotoxy(13+(25),oky);    casilleros[13+(25),oky]:='P';
  write('O');
  gotoxy(14+(25),oky);    casilleros[14+(25),oky]:='P';
  write('O');
  gotoxy(15+(25),oky);    casilleros[15+(25),oky]:='P';
  write('O');
  gotoxy(16+(25),oky);    casilleros[16+(25),oky]:='P';
  write('O');
  gotoxy(17+(25),oky);    casilleros[17+(25),oky]:='P';
  write('O');
  gotoxy(18+(25),oky);    casilleros[18+(25),oky]:='P';
  write('O');
  gotoxy(19+(25),oky);    casilleros[19+(25),oky]:='P';
  write('O');
  gotoxy(21+(25),oky);    casilleros[21+(25),oky]:='P';
  write('O');
  gotoxy(23+(25),oky);    casilleros[23+(25),oky]:='P';
  write('O');
  gotoxy(24+(25),oky);    casilleros[24+(25),oky]:='P';
  write('O');
  gotoxy(25+(25),oky);    casilleros[25+(25),oky]:='P';
  write('O');
  gotoxy(26+(25),oky);    casilleros[26+(25),oky]:='P';
  write('O');
  gotoxy(27+(25),oky);    casilleros[27+(25),oky]:='P';
  write('O');
  gotoxy(28+(25),oky);    casilleros[28+(25),oky]:='P';
  write('O');
  gotoxy(30+(25),oky);    casilleros[30+(25),oky]:='P';
  write('O');
  gotoxy(31+(25),oky);    casilleros[31+(25),oky]:='P';
  write('O');
  gotoxy(34+(25),oky);    casilleros[34+(25),oky]:='P';
  write('O');
  gotoxy(41+(25),oky);    casilleros[41+(25),oky]:='P';
  write('O');
  gotoxy(61+(25),oky);    casilleros[61+(25),oky]:='P';
  write('O');
  gotoxy(66+(25),oky);    casilleros[66+(25),oky]:='P';
  write('O');
  gotoxy(67+(25),oky);    casilleros[67+(25),oky]:='P';
  write('O');
oky:= 19;             // y = 19
  gotoxy(2+(25),oky);     casilleros[2+(25),oky]:='P';
  write('O');
  gotoxy(3+(25),oky);     casilleros[3+(25),oky]:='P';
  write('O');
  gotoxy(4+(25),oky);     casilleros[4+(25),oky]:='P';
  write('O');
  gotoxy(5+(25),oky);     casilleros[5+(25),oky]:='P';
  write('O');
  gotoxy(6+(25),oky);     casilleros[6+(25),oky]:='P';
  write('O');
  gotoxy(7+(25),oky);     casilleros[7+(25),oky]:='P';
  write('O');
  gotoxy(9+(25),oky);     casilleros[9+(25),oky]:='P';
  write('O');
  gotoxy(19+(25),oky);    casilleros[19+(25),oky]:='P';
  write('O');
  gotoxy(21+(25),oky);    casilleros[21+(25),oky]:='P';
  write('O');
  gotoxy(25+(25),oky);    casilleros[25+(25),oky]:='P';
  write('O');
  gotoxy(26+(25),oky);    casilleros[26+(25),oky]:='P';
  write('O');
  gotoxy(27+(25),oky);    casilleros[27+(25),oky]:='P';
  write('O');
  gotoxy(28+(25),oky);    casilleros[28+(25),oky]:='P';
  write('O');
  gotoxy(34+(25),oky);    casilleros[34+(25),oky]:='P';
  write('O');
  gotoxy(37+(25),oky);    casilleros[37+(25),oky]:='P';
  write('O');
  gotoxy(38+(25),oky);    casilleros[38+(25),oky]:='P';
  write('O');
  gotoxy(39+(25),oky);    casilleros[39+(25),oky]:='P';
  write('O');
  gotoxy(40+(25),oky);    casilleros[40+(25),oky]:='P';
  write('O');
  gotoxy(41+(25),oky);    casilleros[41+(25),oky]:='P';
  write('O');
  gotoxy(42+(25),oky);    casilleros[42+(25),oky]:='P';
  write('O');
  gotoxy(43+(25),oky);    casilleros[43+(25),oky]:='P';
  write('O');
  gotoxy(44+(25),oky);    casilleros[44+(25),oky]:='P';
  write('O');
  gotoxy(47+(25),oky);    casilleros[47+(25),oky]:='P';
  write('O');
  gotoxy(48+(25),oky);    casilleros[48+(25),oky]:='P';
  write('O');
  gotoxy(49+(25),oky);    casilleros[49+(25),oky]:='P';
  write('O');
  gotoxy(50+(25),oky);    casilleros[50+(25),oky]:='P';
  write('O');
  gotoxy(51+(25),oky);    casilleros[51+(25),oky]:='P';
  write('O');
  gotoxy(52+(25),oky);    casilleros[52+(25),oky]:='P';
  write('O');
  gotoxy(53+(25),oky);    casilleros[53+(25),oky]:='P';
  write('O');
  gotoxy(56+(25),oky);    casilleros[56+(25),oky]:='P';
  write('O');
  gotoxy(65+(25),oky);    casilleros[65+(25),oky]:='P';
  write('O');
  gotoxy(66+(25),oky);    casilleros[66+(25),oky]:='P';
  write('O');
  gotoxy(67+(25),oky);    casilleros[67+(25),oky]:='P';
  write('O');
oky:= 20;              // y = 20
  gotoxy(2+(25),oky);     casilleros[2+(25),oky]:='P';
  write('O');
  gotoxy(9+(25),oky);     casilleros[9+(25),oky]:='P';
  write('O');
  gotoxy(14+(25),oky);    casilleros[14+(25),oky]:='P';
  write('O');
  gotoxy(15+(25),oky);    casilleros[15+(25),oky]:='P';
  write('O');
  gotoxy(19+(25),oky);    casilleros[19+(25),oky]:='P';
  write('O');
  gotoxy(21+(25),oky);    casilleros[21+(25),oky]:='P';
  write('O');

  gotoxy(34+(25),oky);    casilleros[34+(25),oky]:='P';
  write('O');
  gotoxy(36+(25),oky);    casilleros[36+(25),oky]:='P';
  write('O');
  gotoxy(37+(25),oky);    casilleros[37+(25),oky]:='P';
  write('O');
  gotoxy(44+(25),oky);    casilleros[44+(25),oky]:='P';
  write('O');
  gotoxy(47+(25),oky);    casilleros[47+(25),oky]:='P';
  write('O');
  gotoxy(56+(25),oky);    casilleros[56+(25),oky]:='P';
  write('O');
  gotoxy(59+(25),oky);    casilleros[59+(25),oky]:='P';
  write('O');
  gotoxy(60+(25),oky);    casilleros[60+(25),oky]:='P';
  write('O');
  gotoxy(66+(25),oky);    casilleros[66+(25),oky]:='P';
  write('O');
  gotoxy(67+(25),oky);    casilleros[67+(25),oky]:='P';
  write('O');
oky:= 21;             // y = 21
  gotoxy(2+(25),oky);     casilleros[2+(25),oky]:='P';
  write('O');
  gotoxy(6+(25),oky);     casilleros[6+(25),oky]:='P';
  write('O');
  gotoxy(7+(25),oky);     casilleros[7+(25),oky]:='P';
  write('O');
  gotoxy(8+(25),oky);     casilleros[8+(25),oky]:='P';
  write('O');
  gotoxy(9+(25),oky);     casilleros[9+(25),oky]:='P';
  write('O');
  gotoxy(10+(25),oky);    casilleros[10+(25),oky]:='P';
  write('O');
  gotoxy(11+(25),oky);    casilleros[11+(25),oky]:='P';
  write('O');
  gotoxy(12+(25),oky);    casilleros[12+(25),oky]:='P';
  write('O');
  gotoxy(14+(25),oky);    casilleros[14+(25),oky]:='P';
  write('O');
  gotoxy(15+(25),oky);    casilleros[15+(25),oky]:='P';
  write('O');
  gotoxy(17+(25),oky);    casilleros[17+(25),oky]:='P';
  write('O');
  gotoxy(19+(25),oky);    casilleros[19+(25),oky]:='P';
  write('O');
  gotoxy(21+(25),oky);    casilleros[21+(25),oky]:='P';
  write('O');
  gotoxy(22+(25),oky);    casilleros[22+(25),oky]:='P';
  write('O');
  gotoxy(23+(25),oky);    casilleros[23+(25),oky]:='P';
  write('O');
  gotoxy(24+(25),oky);    casilleros[24+(25),oky]:='P';
  write('O');
  gotoxy(25+(25),oky);    casilleros[25+(25),oky]:='P';
  write('O');
  gotoxy(26+(25),oky);    casilleros[26+(25),oky]:='P';
  write('O');
  gotoxy(27+(25),oky);    casilleros[27+(25),oky]:='P';
  write('O');
  gotoxy(28+(25),oky);    casilleros[28+(25),oky]:='P';
  write('O');
  gotoxy(29+(25),oky);    casilleros[29+(25),oky]:='P';
  write('O');
  gotoxy(30+(25),oky);    casilleros[30+(25),oky]:='P';
  write('O');
  gotoxy(31+(25),oky);    casilleros[31+(25),oky]:='P';
  write('O');
  gotoxy(32+(25),oky);    casilleros[32+(25),oky]:='P';
  write('O');
  gotoxy(39+(25),oky);    casilleros[39+(25),oky]:='P';
  write('O');
  gotoxy(40+(25),oky);    casilleros[40+(25),oky]:='P';
  write('O');
  gotoxy(42+(25),oky);    casilleros[42+(25),oky]:='P';
  write('O');
  gotoxy(44+(25),oky);    casilleros[44+(25),oky]:='P';
  write('O');
  gotoxy(47+(25),oky);    casilleros[47+(25),oky]:='P';
  write('O');
  gotoxy(49+(25),oky);    casilleros[49+(25),oky]:='P';
  write('O');
  gotoxy(50+(25),oky);    casilleros[50+(25),oky]:='P';
  write('O');
  gotoxy(51+(25),oky);    casilleros[51+(25),oky]:='P';
  write('O');
  gotoxy(53+(25),oky);    casilleros[53+(25),oky]:='P';
  write('O');
  gotoxy(56+(25),oky);    casilleros[56+(25),oky]:='P';
  write('O');

  gotoxy(58+(25),oky);    casilleros[58+(25),oky]:='P';
  write('O');
  gotoxy(59+(25),oky);    casilleros[59+(25),oky]:='P';
  write('O');
  gotoxy(60+(25),oky);    casilleros[60+(25),oky]:='P';
  write('O');
  gotoxy(61+(25),oky);    casilleros[61+(25),oky]:='P';
  write('O');
  gotoxy(62+(25),oky);    casilleros[62+(25),oky]:='P';
  write('O');
  gotoxy(63+(25),oky);    casilleros[63+(25),oky]:='P';
  write('O');
  gotoxy(67+(25),oky);    casilleros[67+(25),oky]:='P';
  write('O');
oky:= 22;            // y = 22
  gotoxy(1+(25),oky);     casilleros[1+(25),oky]:='P';
  write('O');
  gotoxy(2+(25),oky);     casilleros[2+(25),oky]:='P';
  write('O');
  gotoxy(6+(25),oky);     casilleros[6+(25),oky]:='P';
  write('O');
  gotoxy(14+(25),oky);    casilleros[14+(25),oky]:='P';
  write('O');
  gotoxy(15+(25),oky);    casilleros[15+(25),oky]:='P';
  write('O');
  gotoxy(17+(25),oky);    casilleros[17+(25),oky]:='P';
  write('O');
  gotoxy(37+(25),oky);    casilleros[37+(25),oky]:='P';
  write('O');
  gotoxy(39+(25),oky);    casilleros[39+(25),oky]:='P';
  write('O');
  gotoxy(40+(25),oky);    casilleros[40+(25),oky]:='P';
  write('O');
  gotoxy(42+(25),oky);    casilleros[42+(25),oky]:='P';
  write('O');
  gotoxy(44+(25),oky);    casilleros[44+(25),oky]:='P';
  write('O');
  gotoxy(47+(25),oky);    casilleros[47+(25),oky]:='P';
  write('O');
  gotoxy(50+(25),oky);    casilleros[50+(25),oky]:='P';
  write('O');
  gotoxy(51+(25),oky);    casilleros[51+(25),oky]:='P';
  write('O');
  gotoxy(53+(25),oky);    casilleros[53+(25),oky]:='P';
  write('O');
  gotoxy(54+(25),oky);    casilleros[54+(25),oky]:='P';
  write('O');
oky:= 23;             // y = 23
  gotoxy(6+(25),oky);     casilleros[6+(25),oky]:='P';
  write('O');
  gotoxy(8+(25),oky);     casilleros[8+(25),oky]:='P';
  write('O');
  gotoxy(11+(25),oky);    casilleros[11+(25),oky]:='P';
  write('O');
  gotoxy(14+(25),oky);    casilleros[14+(25),oky]:='P';
  write('O');
  gotoxy(17+(25),oky);    casilleros[17+(25),oky]:='P';
  write('O');
  gotoxy(19+(25),oky);    casilleros[19+(25),oky]:='P';
  write('O');
  gotoxy(20+(25),oky);    casilleros[20+(25),oky]:='P';
  write('O');
  gotoxy(21+(25),oky);    casilleros[21+(25),oky]:='P';
  write('O');
  gotoxy(22+(25),oky);    casilleros[22+(25),oky]:='P';
  write('O');
  gotoxy(23+(25),oky);    casilleros[23+(25),oky]:='P';
  write('O');
  gotoxy(24+(25),oky);    casilleros[24+(25),oky]:='P';
  write('O');
  gotoxy(25+(25),oky);    casilleros[25+(25),oky]:='P';
  write('O');
  gotoxy(27+(25),oky);    casilleros[27+(25),oky]:='P';
  write('O');
  gotoxy(28+(25),oky);    casilleros[28+(25),oky]:='P';
  write('O');
  gotoxy(30+(25),oky);    casilleros[30+(25),oky]:='P';
  write('O');
  gotoxy(31+(25),oky);    casilleros[31+(25),oky]:='P';
  write('O');
  gotoxy(32+(25),oky);    casilleros[32+(25),oky]:='P';
  write('O');
  gotoxy(33+(25),oky);    casilleros[33+(25),oky]:='P';
  write('O');
  gotoxy(34+(25),oky);    casilleros[34+(25),oky]:='P';
  write('O');
  gotoxy(35+(25),oky);    casilleros[35+(25),oky]:='P';
  write('O');
  gotoxy(37+(25),oky);    casilleros[37+(25),oky]:='P';
  write('O');
  gotoxy(39+(25),oky);    casilleros[39+(25),oky]:='P';
  write('O');
  gotoxy(40+(25),oky);    casilleros[40+(25),oky]:='P';
  write('O');
  gotoxy(42+(25),oky);    casilleros[42+(25),oky]:='P';
  write('O');
  gotoxy(44+(25),oky);    casilleros[44+(25),oky]:='P';
  write('O');
  gotoxy(47+(25),oky);    casilleros[47+(25),oky]:='P';
  write('O');
  gotoxy(51+(25),oky);    casilleros[51+(25),oky]:='P';
  write('O');
  gotoxy(53+(25),oky);    casilleros[53+(25),oky]:='P';
  write('O');
  gotoxy(54+(25),oky);    casilleros[54+(25),oky]:='P';
  write('O');
  gotoxy(64+(25),oky);    casilleros[64+(25),oky]:='P';
  write('O');
  gotoxy(65+(25),oky);    casilleros[65+(25),oky]:='P';
  write('O');
  gotoxy(66+(25),oky);    casilleros[66+(25),oky]:='P';
  write('O');
oky:= 24;            // y = 24
  gotoxy(2+(25),oky);     casilleros[2+(25),oky]:='P';
  write('O');
  gotoxy(4+(25),oky);     casilleros[4+(25),oky]:='P';
  write('O');
  gotoxy(5+(25),oky);     casilleros[5+(25),oky]:='P';
  write('O');
  gotoxy(6+(25),oky);     casilleros[6+(25),oky]:='P';
  write('O');
  gotoxy(8+(25),oky);     casilleros[8+(25),oky]:='P';
  write('O');
  gotoxy(11+(25),oky);    casilleros[11+(25),oky]:='P';
  write('O');
  gotoxy(31+(25),oky);    casilleros[31+(25),oky]:='P';
  write('O');
  gotoxy(32+(25),oky);    casilleros[32+(25),oky]:='P';
  write('O');
  gotoxy(37+(25),oky);    casilleros[37+(25),oky]:='P';
  write('O');
  gotoxy(39+(25),oky);    casilleros[39+(25),oky]:='P';
  write('O');
  gotoxy(59+(25),oky);    casilleros[59+(25),oky]:='P';
  write('O');
  gotoxy(61+(25),oky);    casilleros[61+(25),oky]:='P';
  write('O');
  gotoxy(65+(25),oky);    casilleros[65+(25),oky]:='P';
  write('O');
  gotoxy(66+(25),oky);    casilleros[66+(25),oky]:='P';
  write('O');
oky:= 25;            // y = 25
  gotoxy(2+(25),oky);     casilleros[2+(25),oky]:='P';
  write('O');
  gotoxy(17+(25),oky);    casilleros[17+(25),oky]:='P';
  write('O');
  gotoxy(22+(25),oky);    casilleros[22+(25),oky]:='P';
  write('O');
  gotoxy(23+(25),oky);    casilleros[23+(25),oky]:='P';
  write('O');
  gotoxy(24+(25),oky);    casilleros[24+(25),oky]:='P';
  write('O');
  gotoxy(25+(25),oky);    casilleros[25+(25),oky]:='P';
  write('O');
  gotoxy(42+(25),oky);    casilleros[42+(25),oky]:='P';
  write('O');
  gotoxy(44+(25),oky);    casilleros[44+(25),oky]:='P';
  write('O');
  gotoxy(48+(25),oky);    casilleros[48+(25),oky]:='P';
  write('O');
  gotoxy(49+(25),oky);    casilleros[49+(25),oky]:='P';
  write('O');
  gotoxy(50+(25),oky);    casilleros[50+(25),oky]:='P';
  write('O');
  gotoxy(51+(25),oky);    casilleros[51+(25),oky]:='P';
  write('O');
  gotoxy(52+(25),oky);    casilleros[52+(25),oky]:='P';
  write('O');
  gotoxy(55+(25),oky);    casilleros[55+(25),oky]:='P';
  write('O');
  gotoxy(56+(25),oky);    casilleros[56+(25),oky]:='P';
  write('O');
  gotoxy(59+(25),oky);    casilleros[59+(25),oky]:='P';
  write('O');
  gotoxy(61+(25),oky);    casilleros[61+(25),oky]:='P';
  write('O');
  gotoxy(69+(25),oky);    casilleros[69+(25),oky]:='P';
  write('O');
  gotoxy(70+(25),oky);    casilleros[70+(25),oky]:='P';
  write('O');


   textbackground(black);








end;


function verificar (x,y,mov:integer) : boolean;
  begin

    case (mov) of


     1: begin

       if((casilleros[x+1,y]='A')or (casilleros[x+1,y]='O') or (casilleros[x+1,y]='*')) then          //and (casilleros[x+1,y]<>'u')
      verificar:= true
     else
       verificar:= false;

     end;

     2: begin

       if((casilleros[x-1,y]='A')or(casilleros[x-1,y]='O') or (casilleros[x-1,y]='*') )then        //  (casilleros[x-1,y]<>'u')
      verificar:= true
     else
       verificar:= false;

     end;

     3: begin

        if((casilleros[x,y-1]='A')or(casilleros[x,y-1]='O') or (casilleros[x,y-1]='*')) then    // (casilleros[x,y-1]<>'u')
      verificar:= true
     else
       verificar:= false;

        end;

     4: begin

        if((casilleros[x,y+1]='A')or(casilleros[x,y+1]='O') or (casilleros[x,y+1]='*')  )then   // (casilleros[x,y+1]<>'u')
      verificar:= true
     else
       verificar:= false;


       end;

    end;


  end;

 // to bien?

procedure OrientacionF1;
 begin

  IF (xf1 >= x) then

       disix:=xf1-x
    Else             // disi x
      disix:=x-xf1;

  IF (yf1>=y) then

      disiy:=yf1-y
    Else               // disi y
      disiy:= y - yf1;
// SE ALADOR

   IF (disix=0) then
       movix1:=3

     Else if( (sqrt(sqr((xf1+1)-x))) < disix   ) then

         movix1 := 1                                    //movi x

        Else
           movix1:= 2;


   IF (disiy=0) then
       moviy1:=3

     Else if( (sqrt(sqr((yf1+1)-y))) < disiy   ) then

         moviy1 := 2                                    // movi y

        Else
           moviy1:= 1;

 end;

procedure OrientacionF2;
 begin

  IF (xf2 >= x) then

       disix:=xf2-x
    Else             // disi x
      disix:=x-xf2;

  IF (yf2>=y) then

      disiy:=yf2-y
    Else               // disi y
      disiy:= y - yf2;
// SE ALADOR

   IF (disix=0) then
       movix2:=3

     Else if( (sqrt(sqr((xf2+1)-x))) < disix   ) then

         movix2 := 1                                    //movi x

        Else
           movix2:= 2;


   IF (disiy=0) then
       moviy2:=3

     Else if( (sqrt(sqr((yf2+1)-y))) < disiy   ) then

         moviy2 := 2                                    // movi y

        Else
           moviy2:= 1;

 end;

procedure OrientacionF3;
 begin

  IF (xf3 >= x) then

       disix:=xf3-x
    Else             // disi x
      disix:=x-xf3;

  IF (yf3>=y) then

      disiy:=yf3-y
    Else               // disi y
      disiy:= y - yf3;
// SE ALADOR

   IF (disix=0) then
       movix3:=3

     Else if( (sqrt(sqr((xf3+1)-x))) < disix   ) then

         movix3 := 1                                    //movi x

        Else
           movix3:= 2;


   IF (disiy=0) then
       moviy3:=3

     Else if( (sqrt(sqr((yf3+1)-y))) < disiy   ) then

         moviy3 := 2                                    // movi y

        Else
           moviy3:= 1;

 end;


procedure EncuentraSalida(fantasma: integer); //cambia PASOS
 begin

   case fantasma of

    1: begin

        if((movix1=1)and (moviy1=1)) then //Arriba y Der
            begin
             i:=0;
             pasosx:=0;
             pasosy:=0;
             obsta:= false;
             pasar := false;

             while(pasar= false) and (obsta=false) do //pasos x
                begin

                 if(verificar(xf1-i,yf1,2)) then
                     if(verificar(xf1-i,yf1,3) ) then
                         pasar:= true
                      else pasosx:= pasosx+1

                else obsta:= true;

                 i:=i+1;

                end;

             if ((obsta=true)and (pasosx=0)) then
                 pasosx:=pasosx+1000
                 else if(obsta=true) then
                   pasosx:= pasosx + 500;

             if(pasar=false) then
                  pasosx:= pasosx+ 1000;

             i:=0;
             obsta:= false;
             pasar := false;

             while((pasar= false) and  (obsta= false)) do //pasos y
                begin
                    if(verificar(xf1,yf1+i,4)) then

                          if(verificar(xf1,yf1+i,1)) then
                            pasar:= true

                        else pasosy:= pasosy+1



                     else obsta:= true;

                i:=i+1;
                end;


              if ((obsta=true)and (pasosy=0)) then
                 pasosy:=pasosy+1000
                 else if(obsta=true) then
                   pasosy:= pasosy + 500;

             if(pasar=false) then
                  pasosy:= pasosy+ 1000;


             if(pasosx>=pasosy) then
                pasos1:= true
              else
                 pasos1:= false;

            end;


        if((movix1=2)and (moviy1=1)) then //Arriba y Izq
            begin
             i:=0;
             pasosx:=0;
             pasosy:=0;
             obsta:= false;
             pasar := false;

             while(pasar= false) and (obsta=false) do //pasos x
                begin

                 if(verificar(xf1+i,yf1,2)) then
                     if(verificar(xf1+i,yf1,3) ) then
                         pasar:= true
                      else pasosx:= pasosx+1

                else obsta:= true;

                 i:=i+1;

                end;

              if ((obsta=true)and (pasosx=0)) then
                 pasosx:=pasosx+1000
                 else if(obsta=true) then
                   pasosx:= pasosx + 500;

             if(pasar=false) then
                  pasosx:= pasosx+ 1000;

             i:=0;
             obsta:= false;
             pasar := false;

             while((pasar= false) and (obsta= false)) do //pasos y
                begin
                    if(verificar(xf1,yf1+i,4)) then
                        if(verificar(xf1,yf1+i,2)) then
                            pasar:= true

                        else pasosy:= pasosy+1

                     else obsta:= true;

                i:=i+1;
                end;

              if ((obsta=true)and (pasosy=0)) then
                 pasosy:=pasosy+1000
                 else if(obsta=true) then
                   pasosy:= pasosy + 500;

             if(pasar=false) then
                  pasosy:= pasosy+ 1000;

             if(pasosx>=pasosy) then
                pasos1:= true
              else
                 pasos1:= false;

            end;


        if((movix1=1)and (moviy1=2)) then //Abajo y Der
            begin
             i:=0;
             pasosx:=0;
             pasosy:=0;
             obsta:= false;
             pasar := false;

             while(pasar= false) and (obsta=false) do //pasos x
                begin

                 if(verificar(xf1-i,yf1,2)) then
                     if(verificar(xf1-i,yf1,4) ) then
                         pasar:= true
                      else pasosx:= pasosx+1

                else obsta:= true;

                 i:=i+1;

                end;


              if ((obsta=true)and (pasosx=0)) then
                 pasosx:=pasosx+1000
                 else if(obsta=true) then
                   pasosx:= pasosx + 500;

             if(pasar=false) then
                  pasosx:= pasosx+ 1000;


             i:=0;
             obsta:= false;
             pasar := false;

             while((pasar= false) and (obsta= false)) do //pasos y
                begin
                    if(verificar(xf1,yf1-i,3)) then
                        if(verificar(xf1,yf1-i,1)) then
                            pasar:= true

                        else pasosy:= pasosy+1

                     else obsta:= true;

                i:=i+1;
                end;


              if ((obsta=true)and (pasosy=0)) then
                 pasosy:=pasosy + 1000
                 else if(obsta=true) then
                   pasosy:= pasosy + 500;

             if(pasar=false) then
                  pasosy:= pasosy+ 1000;


             if(pasosx>=pasosy) then
                pasos1:= true
              else
                 pasos1:= false;

            end;


         if((movix1=2)and (moviy1=2)) then //Abajo y Izq
            begin
             i:=0;
             pasosx:=0;
             pasosy:=0;
             obsta:= false;
             pasar := false;

             while(pasar= false) and (obsta=false) do //pasos x
                begin

                 if(verificar(xf1+i,yf1,1)) then
                     if(verificar(xf1+i,yf1,4) ) then
                         pasar:= true
                      else pasosx:= pasosx+1

                else obsta:= true;

                 i:=i+1;

                end;


               if ((obsta=true)and (pasosx=0)) then
                 pasosx:=pasosx+1000
                 else if(obsta=true) then
                   pasosx:= pasosx + 500;

             if(pasar=false) then
                  pasosx:= pasosx+ 1000;


             i:=0;
             obsta:= false;
             pasar := false;

             while((pasar= false) and (obsta= false)) do //pasos y
                begin
                    if(verificar(xf1,yf1-i,3)) then
                        if(verificar(xf1,yf1-i,2)) then
                            pasar:= true

                        else pasosy:= pasosy+1

                     else obsta:= true;

                i:=i+1;
                end;


               if ((obsta=true)and (pasosy = 0)) then
                 pasosy:=pasosy+1000
                 else if(obsta=true) then
                   pasosy:= pasosy + 500;

             if(pasar=false) then
                  pasosy:= pasosy+ 1000;


             if(pasosx>=pasosy) then
                pasos1:= true
              else
                 pasos1:= false;

            end;



        end;

   2: begin

        if((movix2=1)and (moviy2=1)) then //Arriba y Der
            begin
             i:=0;
             pasosx:=0;
             pasosy:=0;
             obsta:= false;
             pasar := false;

             while(pasar= false) and (obsta=false) do //pasos x
                begin

                 if(verificar(xf2-i,yf2,2)) then
                     if(verificar(xf2-i,yf2,3) ) then
                         pasar:= true
                      else pasosx:= pasosx+1

                else obsta:= true;

                 i:=i+1;

                end;


               if ((obsta=true)and (pasosx=0)) then
                 pasosx:=pasosx+1000
                 else if(obsta=true) then
                   pasosx:= pasosx + 500;

             if(pasar=false) then
                  pasosx:= pasosx+ 1000;


             i:=0;
             obsta:= false;
             pasar := false;

             while((pasar= false)and (obsta= false)) do //pasos y
                begin
                    if(verificar(xf2,yf2+i,4)) then

                          if(verificar(xf2,yf2+i,1)) then
                            pasar:= true

                        else pasosy:= pasosy+1



                     else obsta:= true;

                i:=i+1;
                end;


              if ((obsta=true)and (pasosy=0)) then
                 pasosy:=pasosy+1000
                 else if(obsta=true) then
                   pasosy := pasosy + 500;

             if(pasar=false) then
                  pasosy:= pasosy+ 1000;


             if(pasosx>=pasosy) then
                pasos2:= true
              else
                 pasos2:= false;

            end;


        if((movix2=2)and (moviy2=1)) then //Arriba y Izq
            begin
             i:=0;
             pasosx:=0;
             pasosy:=0;
             obsta:= false;
             pasar := false;

             while(pasar= false) and (obsta=false) do //pasos x
                begin

                 if(verificar(xf2+i,yf2,2)) then
                     if(verificar(xf2+i,yf2,3) ) then
                         pasar:= true
                      else pasosx:= pasosx+1

                else obsta:= true;

                 i:=i+1;

                end;

              if ((obsta=true)and (pasosx=0)) then
                 pasosx:=pasosx+1000
                 else if(obsta=true) then
                   pasosx:= pasosx + 500;

             if(pasar=false) then
                  pasosx:= pasosx+ 1000;

             i:=0;
             obsta:= false;
             pasar := false;

             while((pasar= false) and (obsta= false)) do //pasos y
                begin
                    if(verificar(xf2,yf2+i,4)) then
                        if(verificar(xf2,yf2+i,2)) then
                            pasar:= true

                        else pasosy:= pasosy+1

                     else obsta:= true;

                i:=i+1;
                end;

               if ((obsta=true)and (pasosy=0)) then
                 pasosy:=pasosy+1000
                 else if(obsta=true) then
                   pasosy:= pasosy + 500;

             if(pasar=false) then
                  pasosy:= pasosy+ 1000;



             if(pasosx>=pasosy) then
                pasos2:= true
              else
                 pasos2:= false;

            end;


        if((movix2=1)and (moviy2=2)) then //Abajo y Der
            begin
             i:=0;
             pasosx:=0;
             pasosy:=0;
             obsta:= false;
             pasar := false;

             while(pasar= false) and (obsta=false) do //pasos x
                begin

                 if(verificar(xf2-i,yf2,2)) then
                     if(verificar(xf2-i,yf2,4) ) then
                         pasar:= true
                      else pasosx:= pasosx+1

                else obsta:= true;

                 i:=i+1;

                end;


              if ((obsta=true)and (pasosx=0)) then
                 pasosx:=pasosx+1000
                 else if(obsta=true) then
                   pasosx:= pasosx + 500;

             if(pasar=false) then
                  pasosx:= pasosx+ 1000;


             i:=0;
             obsta:= false;
             pasar := false;

             while((pasar= false) and (obsta= false)) do //pasos y
                begin
                    if(verificar(xf2,yf2-i,3)) then
                        if(verificar(xf2,yf2-i,1)) then
                            pasar:= true

                        else pasosy:= pasosy+1

                     else obsta:= true;

                i:=i+1;
                end;


              if ((obsta=true)and (pasosy=0)) then
                 pasosy:=pasosy+1000
                 else if(obsta=true) then
                   pasosy:= pasosy + 500;

             if(pasar=false) then
                  pasosy:= pasosy+ 1000;



             if(pasosx>=pasosy) then
                pasos2:= true
              else
                 pasos2:= false;

            end;


          if((movix2=2)and (moviy2=2)) then //Abajo y Izq
            begin
             i:=0;
             pasosx:=0;
             pasosy:=0;
             obsta:= false;
             pasar := false;

             while ((pasar= false) and (obsta=false)) do //pasos x
                begin

                 if(verificar(xf2+i,yf2,1)) then
                     if(verificar(xf2+i,yf2,4) ) then
                         pasar:= true
                      else pasosx:= pasosx+1

                else obsta:= true;

                 i:=i+1;

                end;


              if ((obsta=true)and (pasosx=0)) then
                 pasosx:=pasosx+1000
                 else if(obsta=true) then
                   pasosx:= pasosx + 500;

             if(pasar=false) then
                  pasosx:= pasosx+ 1000;


             i:=0;
             obsta:= false;
             pasar := false;

             while((pasar= false) and (obsta= false)) do //pasos y
                begin
                    if(verificar(xf2,yf2-i,3)) then
                        if(verificar(xf2,yf2-i,2)) then
                            pasar:= true

                        else pasosy:= pasosy+1

                     else obsta:= true;

                i:=i+1;
                end;


               if ((obsta=true)and (pasosy=0)) then
                 pasosy:=pasosy+1000
                 else if(obsta=true) then
                   pasosy:= pasosy + 500;

             if(pasar=false) then
                  pasosy:= pasosy+ 1000;


             if(pasosx>=pasosy) then
                pasos2:= true
              else
                 pasos2:= false;

            end;




       end;

  3:    begin

        if((movix3=1)and (moviy3=1)) then //Arriba y Der
            begin
             i:=0;
             pasosx:=0;
             pasosy:=0;
             obsta:= false;
             pasar := false;

             while(pasar= false) and (obsta=false) do //pasos x
                begin

                 if(verificar(xf3-i,yf3,2)) then
                     if(verificar(xf3-i,yf3,3) ) then
                         pasar:= true
                      else pasosx:= pasosx+1

                else obsta:= true;

                 i:=i+1;

                end;


              if ((obsta=true)and (pasosx=0)) then
                 pasosx:=pasosx+1000
                 else if(obsta=true) then
                   pasosx:= pasosx + 500;

             if(pasar=false) then
                  pasosx:= pasosx+ 1000;


             i:=0;
             obsta:= false;
             pasar := false;

             while((pasar= false) and (obsta= false)) do //pasos y
                begin
                    if(verificar(xf3,yf3+i,4)) then

                          if(verificar(xf3,yf3+i,1)) then
                            pasar:= true

                        else pasosy:= pasosy+1



                     else obsta:= true;

                i:=i+1;
                end;


              if ((obsta=true)and (pasosy=0)) then
                 pasosy:=pasosy+1000
                 else if(obsta=true) then
                   pasosy:= pasosy + 500;

             if(pasar=false) then
                  pasosy:= pasosy+ 1000;



             if(pasosx>=pasosy) then
                pasos3:= true
              else
                 pasos3:= false;

            end;


        if((movix3=2)and (moviy3=1)) then //Arriba y Izq
            begin
             i:=0;
             pasosx:=0;
             pasosy:=0;
             obsta:= false;
             pasar := false;

             while(pasar= false) and (obsta=false) do //pasos x
                begin

                 if(verificar(xf3+i,yf3,2)) then
                     if(verificar(xf3+i,yf3,3) ) then
                         pasar:= true
                      else pasosx:= pasosx+1

                else obsta:= true;

                 i:=i+1;

                end;

               if ((obsta=true)and (pasosx=0)) then
                 pasosx:=pasosx+1000
                 else if(obsta=true) then
                   pasosx:= pasosx + 500;

             if(pasar=false) then
                  pasosx:= pasosx+ 1000;


             i:=0;
             obsta:= false;
             pasar := false;

             while((pasar= false) and (obsta= false)) do //pasos y
                begin
                    if(verificar(xf3,yf3+i,4)) then
                        if(verificar(xf3,yf3+i,2)) then
                            pasar:= true

                        else pasosy:= pasosy+1

                     else obsta:= true;

                i:=i+1;
                end;


               if ((obsta=true)and (pasosy=0)) then
                 pasosy:=pasosy+1000
                 else if(obsta=true) then
                   pasosy:= pasosy + 500;

             if(pasar=false) then
                  pasosy:= pasosy+ 1000;


             if(pasosx>=pasosy) then
                pasos3:= true
              else
                 pasos3:= false;

            end;


        if((movix3=1)and (moviy3=2)) then //Abajo y Der
            begin
             i:=0;
             pasosx:=0;
             pasosy:=0;
             obsta:= false;
             pasar := false;

             while(pasar= false) and (obsta=false) do //pasos x
                begin

                 if(verificar(xf3-i,yf3,2)) then
                     if(verificar(xf3-i,yf3,4) ) then
                         pasar:= true
                      else pasosx:= pasosx+1

                else obsta:= true;

                 i:=i+1;

                end;


               if ((obsta=true)and (pasosx=0)) then
                 pasosx:=pasosx+1000
                 else if(obsta=true) then
                   pasosx:= pasosx + 500;

             if(pasar=false) then
                  pasosx:= pasosx+ 1000;


             i:=0;
             obsta:= false;
             pasar := false;

             while((pasar= false) and (obsta= false)) do //pasos y
                begin
                    if(verificar(xf3,yf3-i,3)) then
                        if(verificar(xf3,yf3-i,1)) then
                            pasar:= true

                        else pasosy:= pasosy+1

                     else obsta:= true;

                i:=i+1;
                end;


               if ((obsta=true)and (pasosy=0)) then
                 pasosy:=pasosy+1000
                 else if(obsta=true) then
                   pasosy:= pasosy + 500;

             if(pasar=false) then
                  pasosy:= pasosy+ 1000;


             if(pasosx>=pasosy) then
                pasos3:= true
              else
                 pasos3:= false;

            end;


           if((movix3=2)and (moviy3=2)) then //Abajo y Izq
            begin
             i:=0;
             pasosx:=0;
             pasosy:=0;
             obsta:= false;
             pasar := false;

             while ((pasar= false) and (obsta=false)) do //pasos x
                begin

                 if(verificar(xf3+i,yf3,1)) then
                     if(verificar(xf3+i,yf3,4) ) then
                         pasar:= true
                      else pasosx:= pasosx+1

                else obsta:= true;

                 i:=i+1;

                end;


               if ((obsta=true)and (pasosx=0)) then
                 pasosx:=pasosx+1000
                 else if(obsta=true) then
                   pasosx:= pasosx + 500;

             if(pasar=false) then
                  pasosx:= pasosx+ 1000;


             i:=0;
             obsta:= false;
             pasar := false;

             while((pasar= false) and (obsta= false)) do //pasos y
                begin
                    if(verificar(xf3,yf3-i,3)) then
                        if(verificar(xf3,yf3-i,2)) then
                            pasar:= true

                        else pasosy:= pasosy+1

                     else obsta:= true;

                i:=i+1;
                end;


               if ((obsta=true)and (pasosy=0)) then
                 pasosy:=pasosy+1000
                 else if(obsta=true) then
                   pasosy:= pasosy + 500;

             if(pasar=false) then
                  pasosy:= pasosy+ 1000;



             if(pasosx>=pasosy) then
                pasos3:= true
              else
                 pasos3:= false;

            end;



        end;


 end;
end;

procedure RastreaSalida (fantasma : integer);
 begin



  case fantasma of

   1:
      begin

        camin1:= 0;
        camin2:=0;

        if((movix1=3) and (moviy1=1)) then    // X exacta y arriba
          begin
            i:=0;
            obsta:= false;
            pasar:= false;

            while ((pasar=false)and(obsta= false)) do   //izq
             begin

             if(verificar(xf1-i,yf1,2)) then
                 if(verificar(xf1-i,yf1,3)) then
                    pasar:= true

                    else camin1:= camin1+1

             else  obsta:= true;

             i:=i+1;
            end;

         if((obsta=true )and( camin1=0)) then
                   camin1:=camin1 + 1000
                else  if(obsta= true) then
                  camin1:=camin1+500;

         if(pasar=false) then
            camin1:=camin1 +1000;


          i:=0;
          obsta:= false;
          pasar:= false;

          while ((pasar=false)and(obsta= false)) do   //der
             begin

             if(verificar(xf1+i,yf1,1)) then
                 if(verificar(xf1+i,yf1,3)) then
                    pasar:= true

                    else camin2:= camin2+1

             else  obsta:= true;

             i:=i+1;
            end;

          if((obsta=true )and( camin2=0)) then
                   camin2:=camin2 + 1000
                else  if(obsta= true) then
                  camin2:=camin2+500;

         if(pasar=false) then
            camin2:=camin2 +1000;




         IF (camin2<=camin1) then
              guia1:= true
           ELSE
               guia1:= false;

          end;



        if((movix1=3) and (moviy1=2)) then    // X exacta y abajo
          begin
            i:=0;
            obsta:= false;
            pasar:= false;

            while ((pasar=false)and(obsta= false)) do   //izq
             begin

             if(verificar(xf1-i,yf1,2)) then
                 if(verificar(xf1-i,yf1,4)) then
                    pasar:= true

                    else camin1:= camin1+1

             else  obsta:= true;

             i:=i+1;
            end;


          if((obsta=true )and( camin1=0)) then
                   camin1:=camin1 + 1000
                else  if(obsta= true) then
                  camin1:=camin1+500;

         if(pasar=false) then
            camin1:=camin1 +1000;


          i:=0;
          obsta:= false;
          pasar:= false;

          while ((pasar=false)and(obsta= false)) do   //der
             begin

             if(verificar(xf1+i,yf1,1)) then
                 if(verificar(xf1+i,yf1,4)) then
                    pasar:= true

                    else camin2:= camin2+1

             else  obsta:= true;

             i:=i+1;
            end;

         if((obsta=true )and( camin2=0)) then
                   camin2:=camin2 + 1000
                else  if(obsta= true) then
                  camin2:=camin2+500;

         if(pasar=false) then
            camin2:=camin2 +1000;



         IF (camin2<=camin1) then
              guia1:= true
           ELSE  guia1:= false;

          end;


      if((moviy1=3) and (movix1=1)) then    // Y exacta y Der
          begin
            i:=0;
            obsta:= false;
            pasar:= false;

            while ((pasar=false) and (obsta= false)) do   //abajo
             begin

             if(verificar(xf1,yf1+i,4)) then
                 if(verificar(xf1,yf1+i,1)) then
                    pasar:= true

                    else camin1:= camin1+1

             else  obsta:= true;

             i:=i+1;
            end;


           if((obsta=true )and( camin1=0)) then
                   camin1:=camin1 + 1000
                else  if(obsta= true) then
                  camin1:=camin1+500;

         if(pasar=false) then
            camin1:=camin1 +1000;


          i:=0;
          obsta:= false;
          pasar:= false;

          while ((pasar=false)and(obsta= false)) do   // arriba
             begin

             if(verificar(xf1,yf1-i,3)) then
                 if(verificar(xf1,yf1-i,1)) then
                    pasar:= true

                    else camin2:= camin2+1

             else  obsta:= true;

             i:=i+1;
            end;

          if((obsta=true )and( camin2=0)) then
                   camin2:=camin2 + 1000
                else  if(obsta= true) then
                  camin2:=camin2+500;

         if(pasar=false) then
            camin2:=camin2 +1000;


         IF (camin2<=camin1) then
              guia1:= true
           ELSE  guia1:= false;

          end;




      if((moviy1=3) and (movix1=2)) then    // Y exacta y Izq
          begin
            i:=0;
            obsta:= false;
            pasar:= false;

            while ((pasar=false) and (obsta= false)) do   //abajo
             begin

             if(verificar(xf1,yf1+i,4)) then
                 if(verificar(xf1,yf1+i,2)) then
                    pasar:= true

                    else camin1:= camin1+1

             else  obsta:= true;

             i:=i+1;
            end;


           if((obsta=true )and( camin1=0)) then
                   camin1:=camin1 + 1000
                else  if(obsta= true) then
                  camin1:=camin1+500;

         if(pasar=false) then
            camin1:=camin1 +1000;



          i:=0;
          obsta:= false;
          pasar:= false;

          while ((pasar=false) and (obsta= false)) do   // arriba
             begin

             if(verificar(xf1,yf1-i,3)) then
                 if(verificar(xf1,yf1-i,2)) then
                    pasar:= true

                    else camin2:= camin2+1

             else  obsta:= true;

             i:=i+1;
            end;


         if((obsta=true )and( camin2=0)) then
                   camin2:=camin2 + 1000
                else  if(obsta= true) then
                  camin2:=camin2+500;

         if(pasar=false) then
            camin2:=camin2 +1000;



         IF (camin2<=camin1) then
              guia1 := true
           ELSE  guia1:= false;

          end;


      end;


   2:  begin

        camin1:=0;
        camin2:=0;

        if((movix2=3) and (moviy2=1)) then    // X exacta y arriba
          begin
            i:=0;
            obsta:= false;
            pasar:= false;

            while ((pasar=false)and(obsta= false)) do   //izq
             begin

             if(verificar(xf2-i,yf2,2)) then
                 if(verificar(xf2-i,yf2,3)) then
                    pasar:= true

                    else camin1:= camin1+1

             else  obsta:= true;

             i:=i+1;
            end;

         if((obsta=true )and( camin1=0)) then
                   camin1:=camin1 + 1000
                else  if(obsta= true) then
                  camin1:=camin1+500;

         if(pasar=false) then
            camin1:=camin1 +1000;


          i:=0;
          obsta:= false;
          pasar:= false;

          while ((pasar=false)and(obsta= false)) do   //der
             begin

             if(verificar(xf2+i,yf2,1)) then
                 if(verificar(xf2+i,yf2,3)) then
                    pasar:= true

                    else camin2:= camin2+1

             else  obsta:= true;

             i:=i+1;
            end;

         if((obsta=true )and( camin2=0)) then
                   camin2:=camin2 + 1000
                else  if(obsta= true) then
                  camin2:=camin2+500;

         if(pasar=false) then
            camin2:=camin2 +1000;

         IF (camin2<=camin1) then
              guia2:= true
           ELSE
               guia2:= false;

          end;



        if((movix2=3) and (moviy2=2)) then    // X exacta y abajo
          begin
            i:=0;
            obsta:= false;
            pasar:= false;

            while ((pasar=false) and (obsta= false)) do   //izq
             begin

             if(verificar(xf2-i,yf2,2)) then
                 if(verificar(xf2-i,yf2,4)) then
                    pasar:= true

                    else camin1:= camin1+1

             else  obsta:= true;

             i:=i+1;
            end;

         if((obsta=true )and( camin1=0)) then
                   camin1:=camin1 + 1000
                else  if(obsta= true) then
                  camin1:=camin1+500;

         if(pasar=false) then
            camin1:=camin1 +1000;


          i:=0;
          obsta:= false;
          pasar:= false;

          while ((pasar=false) and (obsta= false)) do   //der
             begin

             if(verificar(xf2+i,yf2,1)) then
                 if(verificar(xf2+i,yf2,4)) then
                    pasar:= true

                    else camin2:= camin2+1

             else  obsta:= true;

             i:=i+1;
            end;

         if((obsta=true )and( camin2=0)) then
                   camin2:=camin2 + 1000
                else  if(obsta= true) then
                  camin2:=camin2+500;

         if(pasar=false) then
            camin2:=camin2 +1000;

         IF (camin2<=camin1) then
              guia2:= true
           ELSE  guia2:= false;

          end;


      if((moviy2=3) and (movix2=1)) then    // Y exacta y Der
          begin
            i:=0;
            obsta:= false;
            pasar:= false;

            while ((pasar=false) and (obsta= false)) do   //abajo
             begin

             if(verificar(xf2,yf2+i,4)) then
                 if(verificar(xf2,yf2+i,1)) then
                    pasar:= true

                    else camin1:= camin1+1

             else  obsta:= true;

             i:=i+1;
            end;

         if((obsta=true )and( camin1=0)) then
                   camin1:=camin1 + 1000
                else  if(obsta= true) then
                  camin1:=camin1+500;

         if(pasar=false) then
            camin1:=camin1 +1000;


          i:=0;
          obsta:= false;
          pasar:= false;

          while ((pasar=false) and (obsta= false)) do   // arriba
             begin

             if(verificar(xf2,yf2-i,3)) then
                 if(verificar(xf2,yf2-i,1)) then
                    pasar:= true

                    else camin2:= camin2+1

             else  obsta:= true;

             i:=i+1;
            end;

         if((obsta=true )and( camin2=0)) then
                   camin2:=camin2 + 1000
                else  if(obsta= true) then
                  camin2:=camin2+500;

         if(pasar=false) then
            camin2:=camin2 +1000;

         IF (camin2<=camin1) then
              guia2:= true
           ELSE  guia2:= false;

          end;



      if((moviy2=3) and (movix2=2)) then    // Y exacta y Izq
          begin
            i:=0;
            obsta:= false;
            pasar:= false;

            while ((pasar=false) and (obsta= false)) do   //abajo
             begin

             if(verificar(xf2,yf2+i,4)) then
                 if(verificar(xf2,yf2+i,2)) then
                    pasar:= true

                    else camin1:= camin1+1

             else  obsta:= true;

             i:=i+1;
            end;

         if((obsta=true )and( camin1=0)) then
                   camin1:=camin1 + 1000
                else  if(obsta= true) then
                  camin1:=camin1+500;

         if(pasar=false) then
            camin1:=camin1 +1000;


          i:=0;
          obsta:= false;
          pasar:= false;

          while ((pasar=false) and (obsta= false)) do   // arriba
             begin

             if(verificar(xf2,yf2-i,3)) then
                 if(verificar(xf2,yf2-i,2)) then
                    pasar:= true

                    else camin2:= camin2+1

             else  obsta:= true;

             i:=i+1;
            end;

         if((obsta=true )and( camin2=0)) then
                   camin2:=camin2 + 1000
                else  if(obsta= true) then
                  camin2:=camin2+500;

         if(pasar=false) then
            camin2:=camin2 +1000;

         IF (camin2<=camin1) then
              guia2 := true
           ELSE  guia2:= false;

          end;


      end;


   3:   begin

         camin1:= 0;
        camin2:=0;

        if((movix3=3) and (moviy3=1)) then    // X exacta y arriba
          begin
            i:=0;
            obsta:= false;
            pasar:= false;

            while ((pasar=false) and (obsta= false)) do   //izq
             begin

             if(verificar(xf3-i,yf3,2)) then
                 if(verificar(xf3-i,yf3,3)) then
                    pasar:= true

                    else camin1:= camin1+1

             else  obsta:= true;

             i:=i+1;
            end;

         if((obsta=true )and( camin1=0)) then
                   camin1:=camin1 + 1000
                else  if(obsta= true) then
                  camin1:=camin1+500;

         if(pasar=false) then
            camin1:=camin1 +1000;


          i:=0;
          obsta:= false;
          pasar:= false;

          while ((pasar=false)and(obsta= false)) do   //der
             begin

             if(verificar(xf3+i,yf3,1)) then
                 if(verificar(xf3+i,yf3,3)) then
                    pasar:= true

                    else camin2:= camin2+1

             else  obsta:= true;

             i:=i+1;
            end;

         if((obsta=true )and( camin2=0)) then
                   camin2:=camin2 + 1000
                else  if(obsta= true) then
                  camin2:=camin2+500;

         if(pasar=false) then
            camin2:=camin2 +1000;

         IF (camin2<=camin1) then
              guia3:= true
           ELSE
               guia3:= false;

          end;



       if((movix3=3) and (moviy3=2)) then    // X exacta y abajo
          begin
            i:=0;
            obsta:= false;
            pasar:= false;

            while ((pasar=false)and(obsta= false)) do   //izq
             begin

             if(verificar(xf3-i,yf3,2)) then
                 if(verificar(xf3-i,yf3,4)) then
                    pasar:= true

                    else camin1:= camin1+1

             else  obsta:= true;

             i:=i+1;
            end;

         if((obsta=true )and( camin1=0)) then
                   camin1:=camin1 + 1000
                else  if(obsta= true) then
                  camin1:=camin1+500;

         if(pasar=false) then
            camin1:=camin1 +1000;


          i:=0;
          obsta:= false;
          pasar:= false;

          while ((pasar=false)and (obsta= false)) do   //der
             begin

             if(verificar(xf3+i,yf3,1)) then
                 if(verificar(xf3+i,yf3,4)) then
                    pasar:= true

                    else camin2:= camin2+1

             else  obsta:= true;

             i:=i+1;
            end;

         if((obsta=true )and( camin2=0)) then
                   camin2:=camin2 + 1000
                else  if(obsta= true) then
                  camin2:=camin2+500;

         if(pasar=false) then
            camin2:=camin2 +1000;



         IF (camin2<=camin1) then
              guia3:= true
           ELSE  guia3:= false;

          end;


      if((moviy3=3) and (movix3=1)) then    // Y exacta y Der
          begin
            i:=0;
            obsta:= false;
            pasar:= false;

            while ((pasar=false) and (obsta= false)) do   //abajo
             begin

             if(verificar(xf3,yf3+i,4)) then
                 if(verificar(xf3,yf3+i,1)) then
                    pasar:= true

                    else camin1:= camin1+1

             else  obsta:= true;

             i:=i+1;
            end;

          if((obsta=true )and( camin1=0)) then
                   camin1:=camin1 + 1000
                else  if(obsta= true) then
                  camin1:=camin1+500;

         if(pasar=false) then
            camin1:=camin1 +1000;



          i:=0;
          obsta:= false;
          pasar:= false;

          while ((pasar=false)and(obsta= false)) do   // arriba
             begin

             if(verificar(xf3,yf3-i,3)) then
                 if(verificar(xf3,yf3-i,1)) then
                    pasar:= true

                    else camin2:= camin2+1

             else  obsta:= true;

             i:=i+1;
            end;


         if((obsta=true )and( camin2=0)) then
                   camin2:=camin2 + 1000
                else  if(obsta= true) then
                  camin2:=camin2+500;

         if(pasar=false) then
            camin2:=camin2 +1000;


         IF (camin2<=camin1) then
              guia3:= true
           ELSE  guia3:= false;

          end;




      if((moviy3=3) and (movix3=2)) then    // Y exacta y Izq
          begin


            i:=0;
            obsta:= false;
            pasar:= false;

            while ((pasar=false) and (obsta= false)) do   //abajo
             begin

             if(verificar(xf3,yf3+i,4)) then
                 if(verificar(xf3,yf3+i,2)) then
                    pasar:= true

                    else camin1:= camin1+1

             else  obsta:= true;

             i:=i+1;
            end;


          if((obsta=true )and( camin1=0)) then
                   camin1:=camin1 + 1000
                else  if(obsta= true) then
                  camin1:=camin1+500;

         if(pasar=false) then
            camin1:=camin1 +1000;


          i:=0;
          obsta:= false;
          pasar:= false;

          while ((pasar=false) and (obsta= false)) do   // arriba
             begin

             if(verificar(xf3,yf3-i,3)) then
                 if(verificar(xf3,yf3-i,2)) then
                    pasar:= true

                    else camin2:= camin2+1

             else  obsta:= true;

             i:=i+1;
            end;


          if((obsta=true )and( camin2=0)) then
                   camin2:=camin2 + 1000
                else  if(obsta= true) then
                  camin2:=camin2+500;

         if(pasar=false) then
            camin2:=camin2 +1000;






         IF (camin2<=camin1) then
              guia3 := true
           ELSE  guia3:= false;

          end;


      end;



  end;




 end;


procedure recuperar (fantasma: integer);
 begin
   case (fantasma) of

    1:
      begin

      if(conRecu1=0 ) then
       RastreaSalida(1);

       if((movix1=3)and (moviy1=1)) then//X exacta y Arriba
          begin
              if(verificar(xf1,yf1,3)) then
               begin
                   yf1:=yf1-1;           // Rompe Arriba
                   conRecu1:=0;
                   imitador1:=true;
                   ult1:=3;
               end
                else
                    begin

                      if((guia1= true) and (verificar(xf1,yf1,1))) then
                          xf1:=xf1+1
                    else if((guia1 = false) and (verificar(xf1,yf1,2))) then
                        xf1:=xf1-1

                       else if((xf1=xfv1)and(yf1=yfv1)) then
                         begin
                          OrientacionF1;
                         conRecu1:=-1;
                         end;

                       conRecu1:=conRecu1+1;
                    end;
          end;



        if((movix1=3)and (moviy1=2)) then  //   X exacta y Abajo
          begin
              if(verificar(xf1,yf1,4)) then
               begin
                   yf1:=yf1+1;           // Rompe Abajo
                   conRecu1:=0;
                   imitador1:=true;
                    ult1:=4;
               end
                else begin

                     if((guia1= true) and (verificar(xf1,yf1,1))) then
                          xf1:=xf1+1
                    else if((guia1 = false) and (verificar(xf1,yf1,2)))  then
                        xf1:=xf1-1

                        else if((xf1=xfv1)and(yf1=yfv1)) then
                           begin
                          OrientacionF1;
                         conRecu1:=-1;
                         end;


                     conRecu1:= conRecu1+1;
                     end;
          end;

        if((moviy1=3)and (movix1=1)) then //Y exacta y Der
          begin
              if(verificar(xf1,yf1,1)) then
               begin
                   xf1:=xf1+1;           // Rompe Der
                   conRecu1:=0;
                   imitador1:=true;
                    ult1:=1;
               end
                else
                     begin

                      if((guia1= true) and (verificar(xf1,yf1,3))) then
                          yf1:=yf1-1
                    else if((guia1 = false) and (verificar(xf1,yf1,4)))  then
                        yf1:=yf1+1

                        else if((xf1=xfv1)and(yf1=yfv1)) then
                            begin
                          OrientacionF1;
                         conRecu1:=-1;
                         end;


                     conRecu1:=conRecu1+1;
                     end;
          end;

         if((moviy1=3)and (movix1=2)) then //Y exacta y Izq
          begin
              if(verificar(xf1,yf1,2)) then
               begin
                   xf1:=xf1-1;           // Rompe Izq
                   conRecu1:=0;
                   imitador1:=true;
                    ult1:=2;
               end
                else
                   begin

                   if((guia1= true) and (verificar(xf1,yf1,3))) then
                          yf1:=yf1-1
                    else if((guia1 = false) and (verificar(xf1,yf1,4))) then
                        yf1:=yf1+1

                      else if((xf1=xfv1)and(yf1=yfv1)) then
                          begin
                          OrientacionF1;
                         conRecu1:=-1;
                         end;


                 conRecu1:=conRecu1+1;
                   end;

          end;
      end;


  2:   begin

      if(conRecu2=0 ) then
       RastreaSalida(2);

       if((movix2=3)and (moviy2=1)) then //X exacta y Arriba
          begin
              if(verificar(xf2,yf2,3)) then
               begin
                   yf2:=yf2-1;           // Rompe Arriba
                   conRecu2:=0;
                   imitador2:=true;
                    ult2:=3;
               end
                else
                    begin

                      if((guia2= true) and (verificar(xf2,yf2,1))) then
                          xf2:=xf2+1
                    else if((guia2 = false) and (verificar(xf2,yf2,2))) then
                        xf2:=xf2-1

                        else if((xf2=xfv2)and(yf2=yfv2)) then
                          begin
                          OrientacionF2;
                         conRecu2:=-1;
                         end;


                       conRecu2:=conRecu2+1;
                    end;
          end;



        if((movix2=3)and (moviy2=2)) then //   X exacta y Abajo
          begin
              if(verificar(xf2,yf2,4)) then
               begin
                   yf2:=yf2+1;           // Rompe Abajo
                   conRecu2:=0;
                  imitador2:=true;
                  ult2:=4;
               end
                else begin

                     if((guia2= true) and (verificar(xf2,yf2,1))) then
                          xf2:=xf2+1
                    else if((guia2 = false) and (verificar(xf2,yf2,2))) then
                        xf2:=xf2-1

                        else if((xf2=xfv2)and(yf2=yfv2)) then
                           begin
                          OrientacionF2;
                         conRecu2:=-1;
                         end;


                     conRecu2:= conRecu2+1;
                     end;
          end;

        if((moviy2=3)and (movix2=1)) then //Y exacta y Der
          begin
              if(verificar(xf2,yf2,1)) then
               begin
                   xf2:=xf2+1;           // Rompe Der
                   conRecu2:=0;
                   imitador2:=true;
                   ult2:=1;
               end
                else
                     begin

                      if((guia2= true) and (verificar(xf2,yf2,3))) then
                          yf2:=yf2-1
                    else if((guia2 = false) and (verificar(xf2,yf2,4))) then
                        yf2:=yf2+1

                        else if((xf2=xfv2)and(yf2=yfv2)) then
                             begin
                          OrientacionF2;
                         conRecu2:=-1;
                         end;


                     conRecu2:=conRecu2+1;
                     end;
          end;

         if((moviy2=3)and (movix2=2)) then //Y exacta y Izq
          begin
              if(verificar(xf2,yf2,2)) then
               begin
                   xf2:=xf2-1;           // Rompe Izq
                   conRecu2:=0;
                   imitador2:=true;
                   ult2:=2;
               end
                else
                   begin

                   if((guia2= true) and (verificar(xf2,yf2,3))) then
                          yf2:=yf2-1
                    else if((guia2 = false) and (verificar(xf2,yf2,4)))  then
                        yf2:=yf2+1

                       else if((xf2=xfv2)and(yf2=yfv2)) then
                           begin
                          OrientacionF2;
                         conRecu2:=-1;
                         end;


                 conRecu2:=conRecu2+1;
                   end;

          end;
      end;

  3:   begin

      if(conRecu3=0 ) then
       RastreaSalida(3);

       if((movix3=3)and (moviy3=1)) then //X exacta y Arriba
          begin
              if(verificar(xf3,yf3,3)) then
               begin
                   yf3:=yf3-1;           // Rompe Arriba
                   conRecu3:=0;
                   imitador3:=true;
                   ult3:=3;
               end
                else
                    begin

                      if((guia3= true) and (verificar(xf3,yf3,1))) then
                          xf3:=xf3+1
                    else if((guia3 = false) and (verificar(xf3,yf3,2))) then
                        xf3:=xf3-1

                       else if((xf3=xfv3)and(yf3=yfv3)) then
                         begin
                          OrientacionF3;
                         conRecu3:=-1;
                         end;


                       conRecu3:=conRecu3+1;
                    end;
          end;



        if((movix3=3)and (moviy3=2)) then //   X exacta y Abajo
          begin
              if(verificar(xf3,yf3,4)) then
               begin
                   yf3:=yf3+1;           // Rompe Abajo
                   conRecu3:=0;
                   imitador3:=true;
                   ult3:=4;
               end
                else begin

                     if((guia3= true) and (verificar(xf3,yf3,1))) then
                          xf3:=xf3+1
                    else if((guia3 = false) and (verificar(xf3,yf3,2))) then
                        xf3:=xf3-1


                       else if((xf3=xfv3)and(yf3=yfv3)) then
                           begin
                          OrientacionF3;
                         conRecu3:=-1;
                         end;


                     conRecu3:= conRecu3+1;
                     end;
          end;

        if((moviy3=3)and (movix3=1)) then //Y exacta y Der
          begin
              if(verificar(xf3,yf3,1)) then
               begin
                   xf3:=xf3+1;           // Rompe Der
                   conRecu3:=0;
                   imitador3:=true;
                   ult3:=1;
               end
                else
                     begin

                      if((guia3= true) and (verificar(xf3,yf3,3))) then
                          yf3:=yf3-1
                    else if((guia3 = false) and (verificar(xf3,yf3,4))) then
                        yf3:=yf3+1


                       else if((xf3=xfv3)and(yf3=yfv3)) then
                            begin
                          OrientacionF3;
                         conRecu3:=-1;
                         end;


                     conRecu3:=conRecu3+1;
                     end;
          end;

         if((moviy3=3)and (movix3=2)) then //Y exacta y Izq
          begin
              if(verificar(xf3,yf3,2)) then
               begin
                   xf3:=xf3-1;           // Rompe Izq
                   conRecu3:=0;
                   imitador3:=true;
                   ult3:=2;
               end
                else
                   begin

                   if((guia3= true) and (verificar(xf3,yf3,3))) then
                      begin
                          yf3:=yf3-1;
                      end
                    else if((guia3 = false) and (verificar(xf3,yf3,4)))  then
                       begin
                        yf3:=yf3+1;

                       end
                       else if((xf3=xfv3)and(yf3=yfv3)) then
                          begin
                          OrientacionF3;
                         conRecu3:=-1;
                         end;


                 conRecu3:=conRecu3+1;
                   end;

          end;
      end;


   end;
 end;


procedure Recuperar20 (fantasma : integer);
 begin
  case fantasma of

   1: begin

        if(conRE1=0) then
           EncuentraSalida(1);



         if((movix1=1)and(moviy1=1)) then //arriba y  der
             if((pasos1=true) and (verificar(xf1,yf1,1))) then
               begin
                xf1:=xf1+1;                // rompe der
                conRE1:=0;
                imitador1:=true;
                ult1:=1;
              end

              else if((pasos1=false)and (verificar(xf1,yf1,3))) then
                  begin
                     yf1:=yf1-1;
                      conRE1:=0;           // rompe arriba
                     imitador1:=true;
                     ult1:=3;
                   end
                      else
                             begin
                             if((pasos1=true) and (verificar(xf1,yf1,4))) then

                                yf1:=yf1+1

                             else  if((pasos1=false) and (verificar(xf1,yf1,2))) then

                               xf1:=xf1-1;

                              conRE1:=conRE1+1;
                             end;


         if((movix1=2)and(moviy1=1)) then //arriba y  izq
             if((pasos1=true) and (verificar(xf1,yf1,2))) then
               begin
                xf1:=xf1-1;                // rompe  izq
                conRE1:=0;
                imitador1:=true;
                ult1:=2;
              end

              else if((pasos1=false)and (verificar(xf1,yf1,3))) then
                  begin
                     yf1:=yf1-1;
                      conRE1:=0;           // rompe arriba
                     imitador1:=true;
                     ult1:=3;
                   end
                      else
                             begin
                             if((pasos1=true)and (verificar(xf1,yf1,4))) then

                                yf1:=yf1+1

                             else if((pasos1=false)and (verificar(xf1,yf1,1))) then

                               xf1:=xf1+1;

                              conRE1:=conRE1+1;
                             end;


              if((movix1=1)and(moviy1=2)) then       //abajo y  der
             if((pasos1=true) and (verificar(xf1,yf1,1))) then
               begin
                xf1:=xf1+1;                // rompe  der
                conRE1:=0;
                imitador1:=true;
                ult1:=1;
              end

              else if((pasos1=false)and (verificar(xf1,yf1,4))) then
                  begin
                     yf1:=yf1+1;
                      conRE1:=0;           // rompe abajo
                      imitador1:=true;
                      ult1:=4;
                   end
                      else
                             begin
                             if((pasos1=true) and (verificar(xf1,yf1,3))) then

                                yf1:=yf1-1

                             else  if((pasos1=false) and (verificar(xf1,yf1,2))) then

                               xf1:=xf1-1;

                              conRE1:=conRE1+1;
                             end;


              if((movix1=2)and(moviy1=2)) then       //abajo y  izq
             if((pasos1=true) and (verificar(xf1,yf1,2))) then
               begin
                xf1:=xf1-1;                // rompe  izq
                conRE1:=0;
                imitador1:=true;
                ult1:=2;
              end

              else if((pasos1=false)and (verificar(xf1,yf1,4))) then
                  begin
                     yf1:=yf1+1;
                      conRE1:=0;           // rompe abajo
                     imitador1:=true;
                     ult1:=4;
                   end
                      else
                             begin
                             if ((pasos1=true) and (verificar(xf1,yf1,3))) then

                                yf1:=yf1-1

                             else if  ((pasos1=false) and (verificar(xf1,yf1,1))) then

                               xf1:=xf1+1;

                              conRE1:=conRE1+1;
                             end;





      end;

  2:
      begin
        if(conRE2=0) then
           EncuentraSalida(2);



         if((movix2=1)and(moviy2=1)) then //arriba y  der
             if((pasos2=true) and (verificar(xf2,yf2,1))) then
               begin
                xf2:=xf2+1;                // rompe der
                conRE2:=0;
                imitador2:=true;
                ult2:=1;
              end

              else if((pasos2=false)and (verificar(xf2,yf2,3))) then
                  begin
                     yf2:=yf2-1;
                      conRE2:=0;           // rompe arriba
                      imitador2:=true;
                      ult2:=3;
                   end
                      else
                             begin
                             if ((pasos2=true) and (verificar(xf2,yf2,4))) then

                                yf2:=yf2+1

                             else   if ((pasos2=false) and (verificar(xf2,yf2,2))) then

                               xf2:=xf2-1;

                              conRE2:=conRE2+1;
                             end;


         if((movix2=2)and(moviy2=1)) then //arriba y  izq
             if((pasos2=true) and (verificar(xf2,yf2,2))) then
               begin
                xf2:=xf2-1;                // rompe  izq
                conRE2:=0;
                 imitador2:=true;
                 ult2:=2;
              end

              else if((pasos2=false)and (verificar(xf2,yf2,3))) then
                  begin
                     yf2:=yf2-1;
                      conRE2:=0;           // rompe arriba
                      imitador2:=true;
                      ult2:=3;
                   end
                      else
                             begin
                             if((pasos2=true) and (verificar(xf2,yf2,4))) then

                                yf2:=yf2+1

                             else   if((pasos2=false) and (verificar(xf2,yf2,1))) then

                               xf2:=xf2+1;

                              conRE2:=conRE2+1;
                             end;


              if((movix2=1)and(moviy2=2)) then       //abajo y  der
             if((pasos2=true) and (verificar(xf2,yf2,1))) then
               begin
                xf2:=xf2+1;                // rompe  der
                conRE2:=0;
                 imitador2:=true;
                 ult2:=1;
              end

              else if((pasos2=false)and (verificar(xf2,yf2,4))) then
                  begin
                     yf2:=yf2+1;
                      conRE2:=0;           // rompe abajo
                      imitador2:=true;
                      ult2:=4;
                   end
                      else
                             begin
                             if ((pasos2=true) and (verificar(xf2,yf2,3))) then

                                yf2:=yf2-1

                             else   if ((pasos2=false) and (verificar(xf2,yf2,2))) then

                               xf2:=xf2-1;

                              conRE2:=conRE2+1;
                             end;


              if((movix2=2)and(moviy2=2)) then       //abajo y  izq
             if((pasos2=true) and (verificar(xf2,yf2,2))) then
               begin
                xf2:=xf2-1;                // rompe  izq
                conRE2:=0;
                 imitador2:=true;
                 ult2:=2;
              end

              else if((pasos2=false)and (verificar(xf2,yf2,4))) then
                  begin
                     yf2:=yf2+1;
                      conRE2:=0;           // rompe abajo
                      imitador2:=true;
                      ult2:=4;
                   end
                      else
                             begin
                             if ((pasos2=true) and (verificar(xf2,yf2,3))) then

                                yf2:=yf2-1

                             else   if ((pasos2= false) and (verificar(xf2,yf2,1))) then

                               xf2:=xf2+1;

                              conRE2:=conRE2+1;
                             end;


                       end;


    3:   begin
        if(conRE3=0) then
           EncuentraSalida(3);



         if((movix3=1)and(moviy3=1)) then //arriba y  der
             if((pasos3=true) and (verificar(xf3,yf3,1))) then
               begin
                xf3:=xf3+1;                // rompe der
                conRE3:=0;
                 imitador3:=true;
                 ult3:=1;
              end

              else if((pasos3=false)and (verificar(xf3,yf3,3))) then
                  begin
                     yf3:=yf3-1;
                      conRE3:=0;           // rompe arriba
                     imitador3:=true;
                     ult3:=3;
                   end
                      else
                             begin
                             if ((pasos3=true) and (verificar(xf3,yf3,4))) then

                                yf3:=yf3+1

                             else  if ((pasos3=false ) and (verificar(xf3,yf3,2))) then

                               xf3:=xf3-1;

                              conRE3:=conRE3+1;
                             end;


         if((movix3=2)and(moviy3=1)) then //arriba y  izq
             if((pasos3=true) and (verificar(xf3,yf3,2))) then
               begin
                xf3:=xf3-1;                // rompe  izq
                conRE3:=0;
                imitador3:=true;
                ult3:=2;
              end

              else if((pasos3=false)and (verificar(xf3,yf3,3))) then
                  begin
                     yf3:=yf3-1;
                      conRE3:=0;           // rompe arriba
                      imitador3:=true;
                      ult3:=3;
                   end
                      else
                             begin
                             if((pasos3=true) and (verificar(xf3,yf3,4)))   then

                                yf3:=yf3+1

                             else   if((pasos3=false) and (verificar(xf3,yf3,1)))   then

                               xf3:=xf3+1;

                              conRE3:=conRE3+1;
                             end;


              if((movix3=1)and(moviy3=2)) then       //abajo y  der
             if((pasos3=true) and (verificar(xf3,yf3,1))) then
               begin
                xf3:=xf3+1;                // rompe  der
                conRE3:=0;
                imitador3:=true;
                ult3:=1;
              end

              else if((pasos3=false)and (verificar(xf3,yf3,4))) then
                  begin
                     yf3:=yf3+1;
                      conRE3:=0;           // rompe abajo
                     imitador3:=true;
                     ult3:=4;
                   end
                      else
                             begin
                             if ((pasos3=true) and (verificar(xf3,yf3,3))) then

                                yf3:=yf3-1

                             else  if ((pasos3=false) and (verificar(xf3,yf3,2))) then

                               xf3:=xf3-1;

                              conRE3:=conRE3+1;
                             end;


           if((movix3=2)and(moviy3=2)) then               //abajo y  izq
             if((pasos3=true) and (verificar(xf3,yf3,2))) then
               begin
                xf3:=xf3-1;                // rompe  izq
                conRE3:=0;
                imitador3:=true;
                ult3:=2;
              end

              else if((pasos3=false)and (verificar(xf3,yf3,4))) then
                  begin
                     yf3:=yf3+1;
                      conRE3:=0;           // rompe abajo
                      imitador3:=true;
                      ult3:=4;
                   end
                      else
                             begin
                             if ((pasos3=true) and (verificar(xf3,yf3,3))) then

                                yf3:=yf3-1

                             else  if ((pasos3=false) and (verificar(xf3,yf3,1))) then

                               xf3:=xf3+1;

                              conRE3:=conRE3+1;
                             end;

                end;
   end;

 end;


procedure mueve(fantasma : integer);
begin


 case (fantasma) of


  1:
      begin

       if((movix1=3)and (moviy1<>3)) then
          begin
             if((moviy1=1)and (verificar(xf1,yf1,3))) then
                  yf1:=yf1-1

             else  if((moviy1=2)and (verificar(xf1,yf1,4))) then
                     yf1:=yf1+1

                    else    recuperar(1);

          end;                                              // 1 orientacion

       if((moviy1=3)and (movix1<>3)) then
         begin
          if((movix1=1)and (verificar(xf1,yf1,1))) then
                xf1:=xf1+1

             else if((movix1=2) and (verificar(xf1,yf1,2))) then
                 xf1:=xf1-1

                   else recuperar(1);
         end;

      if ((movix1<>3) and (moviy1<>3))  then
        begin
           if((movix1=1) and (moviy1=1)) then// arriba y der
              begin
               if(verificar(xf1,yf1,1)) then
                    xf1:=xf1+1
               else if(verificar(xf1,yf1,3)) then
                    yf1:=yf1-1
                        else    Recuperar20(1);
              end;

           if((movix1=2) and (moviy1=1)) then  //arriba e izq
              begin
                if(verificar(xf1,yf1,2)) then
                    xf1:=xf1-1
                else if(verificar(xf1,yf1,3)) then
                    yf1:=yf1-1
                        else   Recuperar20(1);

              end;

          if((movix1=1) and (moviy1=2)) then //abajo y der
             begin
               if(verificar(xf1,yf1,1)) then
                   xf1:=xf1+1

               else if(verificar(xf1,yf1,4)) then
                    yf1:=yf1+1
                         else   Recuperar20(1);
             end;

          if((movix1=2) and (moviy1=2)) then //abajo y izq
             begin
               if(verificar(xf1,yf1,2)) then
                   xf1:=xf1-1

               else if(verificar(xf1,yf1,4)) then
                    yf1:=yf1+1
                         else   Recuperar20(1);
             end;

        end;

        end;

  2:  begin

       if((movix2=3)and (moviy2<>3)) then
          begin
             if((moviy2=1)and (verificar(xf2,yf2,3))) then
                  yf2:=yf2-1

             else  if((moviy2=2)and (verificar(xf2,yf2,4))) then
                     yf2:=yf2+1

                    else    recuperar(2);

          end;                                              // 1 orientacion

       if((moviy2=3)and (movix2<>3)) then
         begin
          if((movix2=1)and (verificar(xf2,yf2,1))) then
                xf2:=xf2+1

             else if((movix2=2) and (verificar(xf2,yf2,2))) then
                 xf2:=xf2-1

                   else recuperar(2);
         end;

      if ((movix2<>3) and (moviy2<>3))  then
        begin
           if((movix2=1) and (moviy2=1)) then// arriba y der
              begin
               if(verificar(xf2,yf2,1)) then
                    xf2:=xf2+1
               else if(verificar(xf2,yf2,3)) then
                    yf2:=yf2-1
                        else    Recuperar20(2);
              end;

           if((movix2=2) and (moviy2=1)) then  //arriba e izq
              begin
                if(verificar(xf2,yf2,2)) then
                    xf2:=xf2-1
                else if(verificar(xf2,yf2,3)) then
                    yf2:=yf2-1
                        else   Recuperar20(2);

              end;

          if((movix2=1) and (moviy2=2)) then //abajo y der
             begin
               if(verificar(xf2,yf2,1)) then
                   xf2:=xf2+1

               else if(verificar(xf2,yf2,4)) then
                    yf2:=yf2+1
                         else   Recuperar20(2);
             end;

          if((movix2=2) and (moviy2=2)) then //abajo y izq
             begin
               if(verificar(xf2,yf2,2)) then
                   xf2:=xf2-1

               else if(verificar(xf2,yf2,4)) then
                    yf2:=yf2+1
                         else   Recuperar20(2);
             end;

        end;

        end;

   3:   begin

       if((movix3=3)and (moviy3<>3)) then
          begin
             if((moviy3=1)and (verificar(xf3,yf3,3))) then
                  yf3:=yf3-1

             else  if((moviy3=2)and (verificar(xf3,yf3,4))) then
                     yf3:=yf3+1

                    else    recuperar(3);

          end;                                              // 1 orientacion

       if((moviy3=3)and (movix3<>3)) then
         begin
          if((movix3=1)and (verificar(xf3,yf3,1))) then
                xf3:=xf3+1

             else if((movix3=2) and (verificar(xf3,yf3,2))) then
                 xf3:=xf3-1

                   else recuperar(3);
         end;

      if ((movix3<>3) and (moviy3<>3))  then
        begin
           if((movix3=1) and (moviy3=1)) then// arriba y der
              begin
               if(verificar(xf3,yf3,1)) then
                    xf3:=xf3+1
               else if(verificar(xf3,yf3,3)) then
                    yf3:=yf3-1
                        else    Recuperar20(3);
              end;

           if((movix3=2) and (moviy3=1)) then  //arriba e izq
              begin
                if(verificar(xf3,yf3,2)) then
                    xf3:=xf3-1
                else if(verificar(xf3,yf3,3)) then
                    yf3:=yf3-1
                        else   Recuperar20(3);

              end;

          if((movix3=1) and (moviy3=2)) then //abajo y der
             begin
               if(verificar(xf3,yf3,1)) then
                   xf3:=xf3+1

               else if(verificar(xf3,yf3,4)) then
                    yf3:=yf3+1
                         else   Recuperar20(3);
             end;

          if((movix3=2) and (moviy3=2)) then //abajo y izq
             begin
               if(verificar(xf3,yf3,2)) then
                   xf3:=xf3-1

               else if(verificar(xf3,yf3,4)) then
                    yf3:=yf3+1
                         else   Recuperar20(3);
             end;

        end;

        end;


end;

end;


procedure escribe;
 begin

  if ((xf1<>xfv1)or(yf1<>yfv1)) then
    begin
    textcolor(cyan);
  gotoxy(xf1,yf1);    casilleros[xf1,yf1]:='u';
  write('u');
  textcolor(white);

    end;

 if ((xf2<>xfv2)or(yf2<>yfv2)) then
    begin
    textcolor(brown);
  gotoxy(xf2,yf2);   casilleros[xf2,yf2]:='u';
  write('u');
  textcolor(white);

    end;


  if ((xf3<>xfv3)or(yf3<>yfv3)) then
     begin
     textcolor(green);
  gotoxy(xf3,yf3);   casilleros[xf3,yf3]:='u';
  write('u');
  textcolor(white);

     end;                       // solo fantasmas

 end;

procedure borra;
 begin
  if ((xf1<>xfv1)or(yf1<>yfv1)) then
   begin
   gotoxy(xfv1,yfv1);  casilleros[xfv1,yfv1]:='A';
   write(' ');

   end;

  if ((xf2<>xfv2)or(yf2<>yfv2)) then
    begin
    gotoxy(xfv2,yfv2);   casilleros[xfv2,yfv2]:='A';
 write(' ');

    end;


 if ((xf3<>xfv3)or(yf3<>yfv3)) then
      begin
      gotoxy(xfv3,yfv3);  casilleros[xfv3,yfv3]:='A';       // solo fantasmas
    write(' ');
      end;





 //igualo
  xfv1:=xf1;
  yfv1:=yf1;
  xfv2:=xf2;
  yfv2:=yf2;
  xfv3:=xf3;
  yfv3:=yf3;

 end;


procedure CreaFrutas;
 begin
  for i:=1 to 8 do
    begin
       while (frutal= false) do
          begin
        num1:=0;
        num2:=0;

      num1:= random(95);

      num2:= random(24) ;
       if((num1>=25) and (num2>=5)) then
           if(casilleros [num1,num2]='A') then
                  frutal:= true;

          end;

       frutaX[i]:= num1;
       frutaY[i]:= num2;

       casilleros [num1,num2]:= '*';
       frutal:= false;

    end;
 end;


procedure MuestraFrutas;
 begin


    textcolor(LightRed);
    for i:=1 to 8 do
      begin
        gotoxy(frutaX[i],frutaY[i]);
        write('*');

      end;

 end;


procedure SubperFrutas;
begin

  for i:=1 to 8 do
    begin                                                                 //  (casilleros[frutaX[i],frutaY[i]]='u')

    if((frutaX[i]<>104)and (frutaY[i]<>104)) then
      begin
       if (casilleros[frutaX[i],frutaY[i]]='A') then
        begin
         textcolor(LightRed);
         gotoxy(frutaX[i],frutaY[i]);
          write('*');
         casilleros[frutaX[i],frutaY[i]]:='*';
        end
       else if (casilleros[frutaX[i],frutaY[i]]='O') then
            begin
                  frutaX[i]:= 104;
                  frutaY[i]:= 104;

                  contFrutas:=contFrutas+1;

            end;


      end;
    end;


end;



function preguntador(fantasma : integer): boolean;
 begin

 case fantasma of

  1:  if(imitador1=true) then
         begin

       if((ult1=1)and(verificar(xf1,yf1,1))) then
         begin
          xf1:=xf1+1;
          preguntador:= true;
         end;

        if((ult1=2)and(verificar(xf1,yf1,2))) then
          begin
            xf1:=xf1-1;
            preguntador:= true;
          end;

       if((ult1=3)and(verificar(xf1,yf1,3))) then
           begin
             yf1:=yf1-1;
              preguntador:= true;
           end;

       if((ult1=4)and(verificar(xf1,yf1,4))) then
         begin
             yf1:=yf1+1;
             preguntador:= true;
          end;

      ult1:=0;
      imitador1:=false;

      if(not(preguntador=true))  then
          preguntador:=false;

      end

    else  begin
          preguntador:= false;
          ult1:=0;
          imitador1:=false;
           end;

  2:   if(imitador2= true) then
          begin

       if((ult2=1)and(verificar(xf2,yf2,1))) then
         begin
          xf2:=xf2+1;
          preguntador:= true;
         end;

        if((ult2=2)and(verificar(xf2,yf2,2))) then
          begin
            xf2:=xf2-1;
            preguntador:= true;
          end;

       if((ult2=3)and(verificar(xf2,yf2,3))) then
           begin
             yf2:=yf2-1;
              preguntador:= true;
           end;

       if((ult2=4)and(verificar(xf2,yf2,4))) then
         begin
             yf2:=yf2+1;
             preguntador:= true;
          end;

      ult2:=0;
      imitador2:=false;
       if(not(preguntador=true))  then
          preguntador:=false;


      end

  else  begin
        preguntador:= false;
        ult1:=0;
        imitador2:=false;
        end;

  3:  if(imitador3= true) then
           begin

       if((ult3=1)and(verificar(xf3,yf3,1))) then
         begin
          xf3:=xf3+1;
          preguntador:= true;
         end;

        if((ult3=2)and(verificar(xf3,yf3,2))) then
          begin
            xf3:=xf3-1;
            preguntador:= true;
          end;

       if((ult3=3)and(verificar(xf3,yf3,3))) then
           begin
             yf3:=yf3-1;
              preguntador:= true;
           end;

       if((ult3=4)and(verificar(xf3,yf3,4))) then
         begin
             yf3:=yf3+1;
             preguntador:= true;
          end;

      ult3:=0;
      imitador3:=false;

       if(not(preguntador=true))  then
          preguntador:=false;

      end

   else  begin
         preguntador:= false;
         ult1:=0;
        imitador3:=false;
         end;


  end;

 end;


procedure leer;
begin

 mov:=' ';
 if (keypressed) then
    mov:=readkey;


  case mov of

  'w': begin
        if(verificar(x,y,3)) then
        begin

          yv:=y;
        y:=y-1;

        end;
       end;

  'a':  begin
        if(verificar(x,y,2)) then
         begin

         xv:=x;
         x:=x-1;

         end;
        end;

  'd': begin
        if (verificar(x,y,1)) then
            begin
            xv:=x;
            x:=x+1;
           end;
       end;

  's': begin

        if(verificar(x,y,4)) then
           begin
            yv:=y;
            y:=y+1;
            end;
        end;
  end;


end;


procedure PacMan;
begin
  leer;

 textcolor(yellow);
  gotoxy(x,y);    casilleros[x,y]:='O';  //Crea
  write('O');
  textcolor(white);


 if((x<>xv)or(y<>yv)) then
   begin

 gotoxy(xv,yv);  casilleros[xv,yv]:='A';  //Destruye
 write(' ');

  xv:=x;   //Iguala
  yv:= y;

  end;
end;


procedure Comprueba;
 begin
 if((xf1=x)and(yf1=y)) then
      muerte:=true;

 if((xf2=x)and(yf2=y)) then
      muerte:=true;

 if((xf3=x)and(yf3=y)) then
      muerte:=true;
 end;


procedure escribePri;
 begin
  textcolor(cyan);
  gotoxy(xf1,yf1);    casilleros[xf1,yf1]:='u';
  write('u');
  textcolor(white);

   textcolor(brown);
  gotoxy(xf2,yf2);   casilleros[xf2,yf2]:='u';
  write('u');
  textcolor(white);

  textcolor(green);
  gotoxy(xf3,yf3);   casilleros[xf3,yf3]:='u';
  write('u');
  textcolor(white);        // solo fantasmas



 end;


procedure Comprobador20;
begin

if((x=21) and (y=15)) then
   begin
   x:=97;
  gotoxy(xv,yv);  casilleros[xv,yv]:='A';
 write(' ');
   end;
if((x=99) and (y=15)) then
  begin
   x:=23;
   gotoxy(xv,yv);  casilleros[xv,yv]:='A';
 write(' ');
  end;
end;


begin
 ganar:=false;
 vidas:=3;
 while ((vidas>0)and (ganar=false)) do
    begin

      xf1:=25;       xfv1:=25;
 yf1:=5;        yfv1:=5;
 xf2:=25;       xfv2:=25;
 yf2:=25;       yfv2:=25;
 xf3:=94;       xfv3:=94;
 yf3:=7;        yfv3:=7;

 x:= 55;
 y:= 15;

 for i:=1 to 120 do
   for j:=1 to 30 do
    casilleros[i,j]:= 'A';


  CreaMarco;

  Relleno;

  escribePri;

  randomize;

  CreaFrutas;

  MuestraFrutas;





 while((contFrutas<7) and (muerte= false)) do
  begin

 gotoxy(1,1);
 textcolor(cyan);
 writeln('Frutas Capturadas : ',contFrutas);

 gotoxy(70,1);
 textcolor(yellow);
 writeln('Vidas : ',vidas);

  delay (155);
  PacMan;
  Comprueba;
  SubperFrutas;



    if (not((conRE1>0) or (conRecu1>0))) then
        orientacionf1;

    if (not((conRE2>0) or (conRecu2>0))) then
        orientacionf2;

    if (not((conRE3>0) or (conRecu3>0))) then
        orientacionf3;


  Comprobador20;


  if(conRecu1>0) then
     recuperar(1)

   else if(conRE1>0) then
        Recuperar20(1)

     else  if(preguntador(1)=false) then
             mueve(1);
   delay(10);

   Comprueba;
   PacMan;
   Comprueba;
   SubperFrutas;

  if(conRecu2>0) then
     recuperar(2)

   else if(conRE2>0) then
        Recuperar20(2)

     else if(preguntador(2)=false) then
              mueve(2);
  delay(10);

  if(conRecu3>0) then
     recuperar(3)

   else if(conRE3>0) then
        Recuperar20(3)
     else
           if (preguntador(3)=false) then
               mueve(3);

  delay(10);


  Comprobador20;

   escribe;

   Comprueba;

   borra;



      end;


  if(muerte=true) then
    vidas:=vidas-1;

 Sound(320);
 Delay(250);
 NoSound;

 clrscr();

 if((contFrutas=7) and (muerte=false)) then
    begin
    clrscr();
    textcolor(green);
    gotoxy(55,15);
    write('GANASTE');
    ganar:= true;
    gotoxy(1,30);
    end;

  muerte:=false;


   clrscr();
    end;

 if(vidas=0) then
    begin
     clrscr();
     textcolor(red);
    gotoxy(55,15);
    write('PERDISTE');
    gotoxy(1,30);
    end;
 readln;
end.