version 1.0

struct FooStruct {
  Int x
}

workflow foo_workflow {
  input {
    FooStruct? myfoo
  } 
  if (defined(myfoo)) {
    Int temp_x = myfoo.x
  }

  output {
    Int? output_x = temp_x
  }
}
