InventoryManager i1 = new InventoryManager();
i1.setCostPrice(100);
i1.setSellingPrice(200);
i1.productDisplay();
system.debug('--------------------');

InventoryManager i2 = new InventoryManager();
i2.setCostPrice(300);
i2.setSellingPrice(400);
i2.productDisplay();
system.debug('--------------------');

InventoryManager i3 = new InventoryManager('Tv', 'SM001225');
i3.setCostPrice(100);
i3.setSellingPrice(600);
i3.productDisplay();
system.debug('--------------------');

InventoryManager i4 = new InventoryManager('Macbook', 'A1709');
i4.setCostPrice(500);
i4.setSellingPrice(700);
i4.productDisplay();
system.debug('--------------------');


InventoryManager i5 = new InventoryManager('Smart Watch', '1121212');
i5.setCostPrice(600);
i5.setSellingPrice(900);
i5.productDisplay();
system.debug('--------------------');

system.debug('Total products ---> ' + InventoryManager.productCount );




