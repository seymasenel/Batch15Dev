Candidates.companyName ='Soft Innovas';

system.debug('0. candidate count => ' + Candidates.count);
Candidates c1 = new Candidates();
c1.name='Seyma';
c1.gender='Female';
c1.details();
system.debug('1. candidate count => ' + Candidates.count);


Candidates c2= new Candidates();
c2.name='Mete';
c2.gender='Male';
c2.details();
system.debug('2. candidate count => ' + Candidates.count);

Candidates c3= new Candidates();
c3.name='Hakan';
c3.gender='Male';
c3.details();
system.debug('2. candidate count => ' + Candidates.count);

Candidates.companyName ='SS Company';
c1.details();
c2.details();
c3.details();
system.debug('4. candidate count => ' + Candidates.count);
