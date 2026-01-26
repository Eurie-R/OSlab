#include <iostream>
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

    IntNode* createFirstNode(int value){
        head = new IntNode();
        head->data = value;
        head->next = NULL;
        return head;
    }

    IntNode* insertAfter(IntNode* node, int value){
        if(node == NULL) return NULL;
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

    IntNode* deleteNode(IntNode* head, int pos){
        if(head == NULL) return NULL;

        if(pos == 1){
            IntNode* temp = head;
            //move head to next node 
            head = head->next;
            delete temp;
            cout << "Node Deleted at position 1" << endl;
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
        if(current == NULL) return NULL;
        //Unlink the node from linked list
        previous->next = current->next;
        delete current;
        cout << "Node Deleted at position " << pos << endl;
        return head;

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

    cout << "Node at position 3: " << list.getNodeatPosition(3)->data << endl;

    //PRINT LIST
    IntNode* current = list.getFirstNode();
    cout << "Linked List: " << endl;
    while(current != NULL){
        cout << current->data << " ";
        current = list.getNodeAfter(current);
    }

    list.deleteNode(list.getFirstNode(), 4);
    list.deleteNode(list.getFirstNode(), 3);
    list.deleteNode(list.getFirstNode(), 2);
    list.deleteNode(list.getFirstNode(), 1);
}