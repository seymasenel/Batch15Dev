//Set value to static variable
//Classname.variablename
SampleClass.sampleStaticstring='This is a static variable. Enjoy.';
System.debug(SampleClass.sampleStaticstring);

//classname.nonstaticvariable?? ==> NOO
SampleClass s = new SampleClass();
s.sampleString='This is non=static variable. Still Enjoy.';
System.debug(s.sampleString);

//Classname.ethodname()
SampleClass.sampleStaticMethod();

//Calling non static classsic method
s.sampleMethod();

//Something new.
SampleClass.sampleStaticstring ='Static string again.';
SampleClass.sampleStaticMethod();

SampleClass s1 = new SampleClass();
s1.sampleString ='s1';
s1.sampleMethod();

SampleClass.sampleStaticMethod();


SampleClass s2 = new SampleClass();
s2.sampleString ='s2';
s2.sampleMethod();

SampleClass.sampleStaticMethod();


