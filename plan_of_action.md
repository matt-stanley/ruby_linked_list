You will need two classes:

    LinkedList class, which will represent the full list.
    Node class, containing a #value method and a link to the #next_node, set both as nil by default.

Build the following methods in your linked list class:

    #append(value) adds a new node containing value to the end of the list
    #prepend(value) adds a new node containing value to the start of the list
    #size returns the total number of nodes in the list
    #head returns the first node in the list
    #tail returns the last node in the list
    #at(index) returns the node at the given index
    #pop removes the last element from the list
    #contains?(value) returns true if the passed in value is in the list and otherwise returns false.
    #find(value) returns the index of the node containing value, or nil if not found.
    #to_s represent your LinkedList objects as strings, so you can print them out and preview them in the console. The format should be: ( value ) -> ( value ) -> ( value ) -> nil

Extra Credit

    #insert_at(value, index) that inserts the node with the provided value at the given index
    #remove_at(index) that removes the node at the given index. (You will need to update the links of your nodes in the list when you remove a node.)

********************************************************************************
PLAN OF ACTION
********************************************************************************

X = written

NEXT = 'next' attribute / pointer
HEAD = head node created at LinkedList creation.
TAIL = tail node created at LinkedList creation.

X - Creating a new LinkedList will create two nodes, HEAD and TAIL. HEAD's NEXT attribute will point to TAIL, which will point to nil.

X - #append will find the node whose NEXT is TAIL, X. It will create a new node with NEXT pointer of TAIL.
  It will set X's NEXT to the created node.

X - #prepend will set HEAD's NEXT to the created Node, who's NEXT will be set to HEAD's current NEXT.

MAY NEED REVISED
X - #size will traverse the list until it find the node whose NEXT is TAIL. It will return the number of iterations, being sure to exclude HEAD and TAIL in the count.

X - #head will return the node to which HEAD points.

X - #tail will return the node pointing to TAIL.

X - #at(index) will traverse the list 'index' number of times and return the node found.

X - #pop will find the element whose NEXT is TAIL and remove it. The element before it will have its NEXT set to TAIL.

X - #contains?(value) will traverse the list, only recursing when the value is not found. It will return TRUE when found and FALSE when TAIL is seen.

X - #find(value) will traverse the list until value is found, returning the number of iterations, being careful to exclude HEAD.

X - #to_s will traverse the list, concatenating each node's value. Format: "#{value} -> #{value} -> #{value}"

#insert_at(value, index) will create a node whose NEXT is the node returned by #at(index). The node #at(index - 1) will have its NEXT set to the New_Node.

#remove_at(index) will set NEXT #at(index - 1) to NEXT #at(index), then destroy the node #at(index).