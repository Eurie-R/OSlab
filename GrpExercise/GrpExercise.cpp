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

};