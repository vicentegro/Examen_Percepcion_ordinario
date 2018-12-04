int [] x = {4,12,9,23,6,91,2,54,37,6,1,5,78,87,25};

int [] ordered_x;
int posordered_x;
Node root; //Declarando nodo
Tree arbolito;

void setup(){
  
  posordered_x = 0;
  ordered_x = new int [x.length];
  root = new Node(x[0]); //Inicializar nodo
  arbolito = new Tree(root);
println(x);
println("-----------");

  
  for(int i = 1; i < x.length; i++){         // Construir arbol
    arbolito.createNode(arbolito.myNodes[0], x[i]);
  }
 for(int i = 0; i < x.length; i++){      // Ver atributos de nodos

    arbolito.printData(i);

   println("-----------");

 }
  
    arbolito.orderValues(arbolito.myNodes[0]);   // Se ejecuta el codigo para ordenar los numeros de "x"
  println(ordered_x); //se imprime el array de x ya ordenado


}



void draw(){

}


   
