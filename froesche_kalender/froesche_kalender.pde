// https://www.mathekalender.de/index.php?page=problem&problemID=126

int sekunden = 6000; //8*60*60;
int durchgaenge = 900000000;

int kgewinnt = 0;
int fgewinnt = 0;

for (int i = 1; i < durchgaenge; i++) {

  if (i % 1000000 == 0) println(durchgaenge, i, fgewinnt, kgewinnt,(float)kgewinnt/(kgewinnt+fgewinnt));
  int f = +20; //100;
  int k = -20; //-100;

  boolean ende_der_runde = false;
  boolean fzuerst = false;
  boolean kzuerst = false;

  int zaehler = 0;

  while (zaehler < sekunden && !ende_der_runde) {

    zaehler++; 


    if (f != 0) f += (random(1) < 1.0/3 ? 1 : -1);
    if (k != 0) k += (random(1) < 1.0/3 ? 1 : -1);

    if (k == 0 && f == 0) ende_der_runde = true;

    if (f*k == 0 && !ende_der_runde && !fzuerst && !kzuerst) {
      if (f == 0) fzuerst = true;
      else kzuerst = true;
    }
  }
  
  if (ende_der_runde && fzuerst) fgewinnt++;
  if (ende_der_runde && kzuerst) kgewinnt++;
}


println(durchgaenge, sekunden, fgewinnt, kgewinnt, (float)kgewinnt/(kgewinnt+fgewinnt));
