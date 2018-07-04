// class SortedCollection {
//   Function compare;

//   SortedCollection(int f(Object a, Object b)) {
//     compare = f;
//   }
// }

// // Initial, broken implementation.
// int sort(Object a, Object b) => 0;

// void main() {
//   SortedCollection coll = new SortedCollection(sort);
//   // All we know is that compare is a function,
//   // but what type of function?
//   assert(coll.compare is Function);
// }

typedef Compare = int Function(Object a, Object b);

class SortedCollection {
  Compare compare;

  SortedCollection(this.compare);
}

// Initial, broken implementation.
int sort(Object a, Object b) => 0;

void main() {
  SortedCollection coll = new SortedCollection(sort);
  assert(coll.compare is Function);
  assert(coll.compare is Compare);
}


// Because typedefs are simply aliases, they offer a way to check the type of any function. For example:

typedef Compare2<T> = int Function(T a, T b);
int sort2(int a, int b) => a - b;
assert(sort is Compare<int>); // True!