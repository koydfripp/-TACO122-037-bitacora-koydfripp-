int ledPin = 13;
int tiempoPunto = 100;
int separador = 50;
int tiempoRaya = 500;
int finCaracter = 100;
int espacio = 500;

void setup()
{
   pinMode(ledPin,OUTPUT);

   Serial.begin(9600);
}

void loop()
{
    //la A en morse .-
    //llamamos la funcion punto para generar uno
    punto();
    
    raya();
    
    h();
    e();
    delay(finCaracter);
    Serial.println(" cierre");
    a();
    p();
    r();
    o();
    v();
    e();
    c();
    h();
    a();
    d();
    o();
    delay(finCaracter);
Serial.println(" cierre");
    l();
    a();
    s();
    delay(finCaracter);
Serial.println(" cierre");
    s();
    o();
    m();
    b();
    r();
    a();
    s();
    delay(finCaracter);



    //cerramos el caracter
    delay(finCaracter);
    Serial.println(" cierre");
}


void punto(){
    //crear una funcion que genere un punto
    //prendemos el punto
    digitalWrite(ledPin,HIGH);
    Serial.println("punto");
    //esperamos el punto encendido
    delay(tiempoPunto);
    //apagamos el punto
    digitalWrite(ledPin,LOW);
    //el espacio despues del punto
    delay(separador);
}

void raya(){
 //empezamos una raya
    digitalWrite(ledPin,HIGH);
    Serial.println("raya");
    //espero el tiempo de la raya
    delay(tiempoRaya);
    //apagamos la raya
    digitalWrite(ledPin,LOW);
}


void h(){
punto(); punto(); punto(); punto();
}


void e(){
punto();
}


void a(){
punto(); raya();
}


void p(){
punto(); raya(); raya(); punto();
}


void r(){
punto(); raya(); punto();
}


void o(){
 raya();raya();raya();
}


void v(){
punto(); punto(); punto(); raya();
}


void c(){
raya(); punto(); raya(); punto();
}


void d(){
raya(); punto(); punto();
}


void l(){
punto(); raya(); punto(); punto();
}


void s(){
punto(); punto(); punto();
}

void b(){
raya(); punto(); punto(); punto();
}


void m(){
raya(); raya();
}

