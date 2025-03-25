const { Stack } = require('@datastructures-js/stack');
const { Queue } = require('@datastructures-js/queue');
const { LinkedList } = require('@datastructures-js/linked-list');

// Create a stack and perform some operations
const stack = new Stack();
stack.push(1);
stack.push(2);
stack.pop();
const stackTop = stack.peek(); // Get the top element of the stack

// Create a queue and perform some operations
const queue = new Queue();
queue.enqueue(1);
queue.enqueue(2);
queue.dequeue();
const queueFront = queue.front(); // Get the front element of the queue

// Create a linked list and perform some operations
const linkedList = new LinkedList();
linkedList.insertFirst(1);
linkedList.insertLast(2);
linkedList.removeFirst();
const linkedListFirst = linkedList.head() ? linkedList.head().getValue() : -1; // Get the first element of the linked list

// Check the states of the data structures
if (stackTop === 1 && queueFront === 2 && linkedListFirst === 2) {
  console.log('OK');
}