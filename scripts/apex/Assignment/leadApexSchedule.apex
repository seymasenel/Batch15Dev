LeadBatchApexSchedule lS = new LeadBatchApexSchedule();
string t='0 0 6 * * ?';
system.schedule('LeadBatchApexAssgn scheduled 6 ', t, lS);