#include <iostream>

// MARCELINO, Jaren
// PREDIGUA, Dave
// RAMOY, Lorenzo Uriel

using namespace std;

//Implement an IntNode struct that cointaains a piece of data (int) 
//Along with pointers to other nodes as you deem necessary

struct IntNode{
    int data;
    IntNode* next;
};

//IntList
// Create the first node of a linked list(return a pointer to the created IntNode)
//Insert a node after any other node (pass pointer of the other IntNode to this function; return a pointer to the new IntNode)
//Getting the first node (return a pointer, or NULL if it does not exist)
//Getting the node after any other node (return NULL if it does not exist)
//Deleting a node

struct IntList{
    IntNode* head;

    IntList(){
        head = NULL;
    }

    ~IntList() {
        IntNode* current = head;
        while (current != NULL) {
            IntNode* nextNode = current->next;
            delete current;
            current = nextNode;
        }
    }

    IntNode* createFirstNode(int value){
        if (head != NULL) {
            cout << "List already exists. Returning existing head." << endl;
            return head;
        }
        
        head = new IntNode();
        head->data = value;
        head->next = NULL;
        return head;
    }

    IntNode* insertAfter(IntNode* node, int value){
        if(node == NULL) {
            cout << "Cannot insert: Target node is null." << endl;
            return NULL;
        }
        //Create new node
        IntNode* newNode = new IntNode();
        //Set data of the inserted node
        newNode->data = value;
        //Set pointer of new node to the next of the previous node
        newNode->next = node->next;
        //Set next of the given node to the new node
        node->next = newNode;
        return newNode;
    }

    IntNode* getFirstNode(){
        return head;
    }

    IntNode* getNodeAfter(IntNode* node){
        if(node == NULL) return NULL;
        return node->next;
    }

    IntNode* getNodeatPosition(int pos){
        if(head == NULL) return NULL;

        IntNode* current = head;
        int count = 1;

        while(current !=NULL){
            if(count == pos){{
                return current;
            }}
            current = current->next;
            count++;
        }
        return NULL;
    }

    void deleteNode(int pos) {
        if(head == NULL) {
            cout << "Cannot delete, list is empty." << endl; 
            return;
        }
        if(pos < 1) {
            cout << "Cannot delete, invalid position." << endl;
            return;
        }

        //deleting head
        if(pos == 1){
            IntNode* temp = head;
            //move head to next node 
            head = head->next;
            delete temp;
            cout << "Node Deleted at position 1" << endl;
            return;
        }

        //Initialize head and previous pointers
        IntNode* current = head;
        IntNode* previous = NULL;
        //Iterator to traverse the list 
        int count = 1;

        //Traversal
        //Ex. pos = 5 
        while(current !=NULL && count < pos){
            previous = current;
            //Set current to next node 
            current = current->next;
            count++;
        }

        //If current is NULL, position is more than number of nodes
        if(current == NULL) {
            cout << "Position" << pos << " is out of bounds." << endl;
            return;
        }
        //Unlink the node from linked list
        previous->next = current->next;
        delete current;
        cout << endl;
        cout << "Node Deleted at position " << pos << endl;
    }

};

// IntStack
// This struct represents a stack of integers
// It has a pointer at the top of the stack
// It also counts the current size of the stack
// It can push and pop integers in and out of the stack
struct IntStack {

private:
    IntNode* top;   // Pointer to top of the stack
    int count;      // Tracks the current size

public:
    // Constructor
    // Initialize the stack
    IntStack() {
        top = NULL;
        count = 0;
    }

    // Destructor
    // Ensure no memory leaks
    ~IntStack() {
        while(top != NULL) {
            IntNode* temp = top;
            top = top->next;
            delete temp;
        }
    }

    // Push function
    // This add new node to the top of the stack
    void push(int value) {
        IntNode* newNode = new IntNode;
        newNode->data = value;
        newNode->next = top;
        top = newNode;
        count++;
    }

    // Pop function
    // This removes the top node of the stack
    int pop() {
        if (top == NULL) {
            cout << "The stack is empty. We can't pop anything." << endl;
            return -1;
        }

        // Move the top to the next node
        // Remove the old top node
        int poppedValue = top->data;
        IntNode* temp = top;
        top = top->next;
        delete temp;
        count--;
        return poppedValue;
    }

    // Current size
    // This returns the number of nodes in the stack
    int size() {
        return count;
    }
};

int main() {
    IntList list;

    //CREATE FIRST NODE 
    IntNode* firstNode = list.createFirstNode(10);
    list.insertAfter(firstNode, 20);
    IntNode* secondNode = list.getNodeAfter(firstNode);
    list.insertAfter(secondNode, 18);
    IntNode* thirdNode = list.getNodeAfter(secondNode);
    list.insertAfter(thirdNode, 25);

    if (list.getNodeatPosition(3) != NULL) {
        cout << "Node at position 3: " << list.getNodeatPosition(3)->data << endl;
    }

    //PRINT LIST
    IntNode* current = list.getFirstNode();
    cout << "Linked List: " << endl;
    while(current != NULL){
        cout << current->data << " ";
        current = list.getNodeAfter(current);
    }

    list.deleteNode(4);
    list.deleteNode(1);

    // Verify deleted
    cout << "List after deletion: ";
    current = list.getFirstNode();
    while(current != NULL){
        cout << current->data << " ";
        current = list.getNodeAfter(current);
    }
    cout << endl << endl;

    // STACK
    IntStack stack;

    // Push
    cout << "Pushing: 10 20 30 40 50" << endl;
    stack.push(10);
    stack.push(20);
    stack.push(30);
    stack.push(40);
    stack.push(50);

    // Current size
    cout << "Current size: " << stack.size() << endl;

    // Pop
    cout << "Popping: " << stack.pop() << endl;
    cout << "Popping: " << stack.pop() << endl;
    cout << "Current size: " << stack.size() << endl;
    cout << "Popping: " << stack.pop() << endl;
    cout << "Popping: " << stack.pop() << endl;
    cout << "Popping: " << stack.pop() << endl;
    cout << "Current size after popping: " << stack.size() << endl;
    stack.pop();

    return 0;
}