bring cloud;

class A impl cloud.IQueueSetConsumerHandler {
  pub inflight handle(msg: str) {
    return;
  }
}

let x: cloud.IQueueSetConsumerHandler = new A();

let y = inflight () => {
  x.handle("hello world!");
};

interface I1 {
  method1(x: num): num;
}

interface I2 extends I1 {
  inflight method2(x: str): str;
}

interface I3 extends I2 {
  method3(x: Array<num>): Array<num>;
}

class r impl I3 {
  pub method1(x: num): num {
    return x;
  }
  pub inflight method2(x: str): str {
    return x;
  }
  pub method3(x: Array<num>): Array<num> {
    return x;
  }
}

// a variable of some interface type can be assigned a class instance that implements it.
interface IAnimal {
  inflight eat(): void;
}

class Dog impl IAnimal {
  pub inflight eat() {
    return;
  }
}

let z: IAnimal = new Dog();

// base class is checked for implemention of interface
class Terrier extends Dog {
  pub inflight eat() {
    return;
  }
}

let w: IAnimal = new Terrier();