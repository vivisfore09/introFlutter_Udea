
class Triangulo{

  late int ladoA;
  late int ladoB;
  late int ladoC;
  late String tipo;
  late String img;

  Triangulo(this.ladoA, this.ladoB, this.ladoC); //Constructor

//Triangulo: todos los lados son mayor a 0
//Equilatero: todos los lados son iguiales
//Isoceles: dos lados son iguales
//Escaleno: todos los lados son diferentes

void tipoTriangulo(){

  if(ladoA>0 && ladoB>0 && ladoC>0){
      if(ladoA==ladoB && ladoB==ladoC){
        tipo="Equilatero";
        img="assets/images/equilatero.png";
      }else if(ladoA==ladoB || ladoA==ladoC || ladoB==ladoC){
        tipo="Isoceles";
        img="assets/images/isoceles.png";
      }else{
        tipo="Escaleno";
        img="assets/images/escaleno.png";
      }
  }else{
    tipo="No es triangulo";
    img="assets/images/error.jpeg";
  }

}

}