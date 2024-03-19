version 1.0

struct FooStruct {
  int x
}

workflow foo_workflow {
  input {
    FooStruct? myfoo
  } 

  output {
    x = defined(myfoo) ? myfoo.x : 100
  }
}
