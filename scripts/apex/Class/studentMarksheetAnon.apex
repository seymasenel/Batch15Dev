StudentMarksheet s1 = new StudentMarksheet();
s1.setfirtName('Seyma');
s1.setlastName('Senel');

s1.setMarks(100, 75, 85);
s1.showMarksheet();


system.debug('-----------------------');

StudentMarksheet s2 = new StudentMarksheet();
s2.setfirtName('Salih');
s2.setlastName('Mete');
string s2firstName= s2.getfirstName();
string s2lastName= s2.getlastName();
s2.setMarks(100, 100, 100);
s2.showMarksheet();

system.debug('-----------------------');

StudentMarksheet s3 = new StudentMarksheet();
s3.setfirtName('Hakan');
s3.setlastName('Senel');
string s3firstName= s3.getfirstName();
string s3lastName= s3.getlastName();
s3.setMarks(50, 25, 45);
s3.showMarksheet();

system.debug('-----------------------');

StudentMarksheet s4 = new StudentMarksheet();
s4.setfirtName('Meryem');
s4.setlastName('Koc');
string s4firstName= s4.getfirstName();
string s4lastName= s4.getlastName();
s4.setMarks(100, 95, 99);
s4.showMarksheet();

system.debug('-----------------------');

StudentMarksheet s5 = new StudentMarksheet();
s5.setfirtName('Eda');
s5.setlastName('Can');
string s5firstName= s5.getfirstName();
string s5lastName= s5.getlastName();
s5.setMarks(45, 25, 45);
s5.showMarksheet();




