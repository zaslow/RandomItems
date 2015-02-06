//
//  main.m
//  RandomItems
//
//  Created by Christine Gornall on 2/4/15.
//  Copyright (c) 2015 Dean Zaslow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"
#import "Container.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create a mutable array object, store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        for(int i=0; i<10; i++){
            Item *item = [Item randomItem];
            [items addObject:item];
        }
        
        for(Item *item in items){
            NSLog(@"%@", item);
        }
        
        Container *containerA = [[Container alloc] initWithItemName:@"ContainerA"
                                                     valueInDollars:500
                                                       serialNumber:@"12345"];
        
        Item *itemX = [[Item alloc] initWithItemName:@"ItemX"
                                      valueInDollars:100
                                        serialNumber:@"XXX1"];
        
        Item *itemY = [[Item alloc] initWithItemName:@"ItemY"
                                      valueInDollars:200
                                         serialNumber:@"YYY2"];
        
        Item *itemZ = [[Item alloc] initWithItemName:@"ItemZ"
                                      valueInDollars:300
                                        serialNumber:@"ZZZ3"];
        
        Container *containerB = [[Container alloc] initWithItemName:@"ContainerB"
                                                     valueInDollars:500
                                                       serialNumber:@"67890"];
        
        Item *itemQ = [[Item alloc] initWithItemName:@"ItemQ"
                                      valueInDollars:400
                                        serialNumber:@"QQQ4"];
        
        [containerB addItem:itemQ];
        [containerA addItem:containerB];
        
        [containerA addItem:itemX];
        [containerA addItem:itemY];
        [containerA addItem:itemZ];
        
        NSLog(@"%@", [containerA description]);
        
        // Destroy the mutable array object
        items = nil;
    }
    return 0;
}
