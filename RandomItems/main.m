//
//  main.m
//  RandomItems
//
//  Created by Christine Gornall on 2/4/15.
//  Copyright (c) 2015 Dean Zaslow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"

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
        
        // Destroy the mutable array object
        items = nil;
    }
    return 0;
}
