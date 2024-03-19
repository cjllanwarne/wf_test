version 1.0

struct FooStruct {
  Int x
}

struct BarStruct {
  FooStruct? foo
}

workflow foobar_workflow {
  input {
    BarStruct? mybar
  } 
  if (defined(mybar)) {
    FooStruct? myfoo = select_first([mybar]).foo
    if (defined(myfoo)) {
      Int temp_x = select_first([myfoo]).x
    }
  }

  output {
    Int? output_x = temp_x
  }
}
