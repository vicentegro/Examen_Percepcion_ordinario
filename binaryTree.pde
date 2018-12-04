class Tree {
  //Atributos
  Node [] myNodes; //Declarando Array de nodos

  //Constructor
  Tree(Node n) {
    myNodes = new Node[1];
    myNodes[0] = n;
  }

  //Métodos
  String checkSide(Node n, int val) {
    String res;
    if (val >= int(n.value)) { //compara el valor en el nodo con el valor del array inicial
      res = "left"; 
    } else {
      res = "right";
    }
    return res;
  }

  boolean checkEmpty(Node n, String side) {
    boolean empty = false;
    if (side == "left") {
      if (n.left == null) {
        empty = true;
      }
    }
    if (side == "right") {
      if (n.right == null) {
        empty = true;
      }
    }
    return empty;
  }

  void addLeftChild(Node n) {
    n.left = str(myNodes.length);
  }

  void addRightChild(Node n) {
    n.right = str(myNodes.length);
  }

  void createNode(Node n, int val) {
    String lado;
    lado = checkSide(n, val);
    if (lado == "left") {
      boolean vacio;
      vacio = checkEmpty(n, lado);
      if (vacio == true) {
        addLeftChild(n);
        Node nuevo;
        nuevo = new Node(myNodes.length, int(n.id), val);
        myNodes = (Node []) append(myNodes, nuevo);
      } else {
        createNode(myNodes[int(n.left)], val);
      }
    }



    if (lado == "right") {
      boolean vacio;
      vacio = checkEmpty(n, lado);
      if (vacio == true) {
        addRightChild(n);
        Node nuevo;
        nuevo = new Node(myNodes.length, int(n.id), val);
        myNodes = (Node []) append(myNodes, nuevo);
      } else {
        createNode(myNodes[int(n.right)], val);
      }
    }
  }




  void printData(int i) {
    println("#nodo: "+arbolito.myNodes[i].id);
    println("padre: "+arbolito.myNodes[i].parent);
    println("valor: "+arbolito.myNodes[i].value);
    println("nodo izquierdo: "+arbolito.myNodes[i].left);
    println("nodo derecho: "+arbolito.myNodes[i].right);
    println(arbolito.myNodes[i].order_done);
    println(arbolito.myNodes[i].left_checked);
    println(arbolito.myNodes[i].right_checked);
  }



  void orderValues(Node n) {

    if (n.left != null) {              //revisar si hay nodo Hijo a la Izquierda
      if (n.left_checked == true) {                 //revisar si ya se checó el nodo de la izquierda
        if (n.order_done == false) {                   //revisar si el valor del nodo ya fue ordenado en el array final
          saveValue(n); //si no es así, se guarda el valor
        }
      } else {
        gotoLeftNode(n); //si no fue ordenado, entonces nos vamos al nodo de la izquierda
      }
    } else {
      n.left_checked=true; //si no hay nodo a la izquierda, se toma que ya se revisó
    }

    if (n.order_done==false) {  //si el valor no fue ordenado, entonces se guarda 
      saveValue(n);
    }
    if (n.right == null) {    //Ahora se revisa si hay un nodo Hijo a la derecha
      n.right_checked=true;      //si no hay, se toma como revisado y nos vamos al nodo padre
      gotoParentNode(n);
    } 
    if (n.right_checked==false) {        //si hay nodo a la derecha, lo revisa si ya se ordenó 
    gotoRightNode(n);                       //si no, nos vamos a ese nodo
    }
    if (n.parent!=null) {            //si ya se revisó, ahora revisa si el nodo tiene un nodo padre, de ser asi, nos vamos a este
      gotoParentNode(n);
    } 
    
  }   

  void gotoLeftNode(Node n) {
    n.left_checked=true;
    orderValues(myNodes[int(n.left)]);
  }

  void gotoRightNode(Node n) {
    n.right_checked=true;
    orderValues(myNodes[int(n.right)]); 
  }

  void saveValue(Node n) {
    ordered_x[posordered_x]=int (n.value);
    n.order_done= true;
    posordered_x++;
  }

  void gotoParentNode(Node n) {

    orderValues(myNodes[int(n.parent)]);
  }
}
