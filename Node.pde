class Node {
  //Atributos

  String id;
  String parent;
  String value;
  String left;
  String right;
  boolean order_done; 
  boolean left_checked;
  boolean right_checked;

  //Constructor para un nodo raíz

  Node(int v) {
    id = "0";
    parent = null;
    value = str(v);
    left = null;
    right = null;
    order_done = false; 
    left_checked = false;
    right_checked = false;
  }

//Constructor para nodo rama

  Node(int i, int p, int v) {
    id = str(i);
    parent = str(p);
    value = str(v);
    left = null;
    right = null;  
    order_done = false;
    left_checked = false;
    right_checked = false;
  }



  //Métodos

}
