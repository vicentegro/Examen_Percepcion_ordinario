int [] x = {4,12,9,23,6,91,2,54,37,6,1,5,78,87,25};

int [] finalx;

int posfinalx;
Node root; //Declarando nodo
Tree arbolbinario;

void setup(){
  
  posfinalx = 0;
  finalx = new int [x.length];
  root = new Node(x[0]); //Inicializar nodo
  arbolbinario = new Tree(root);
println(x);
println("-----------");

  
  for(int i = 1; i < x.length; i++){         // Construir arbol
    arbolbinario.createNode(arbolbinario.myNodes[0], x[i]);
  }
 for(int i = 0; i < x.length; i++){      // Ver atributos de nodos

    arbolbinario.printData(i);

   println("-----------");

 }
  
    arbolbinario.acomoda(arbolbinario.myNodes[0]);   // Ordenar numeros de "x"
  println(finalx);


}



void draw(){

}


   
