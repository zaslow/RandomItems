//
//  Container.m
//  RandomItems
//
//  Created by Christine Gornall on 2/5/15.
//  Copyright (c) 2015 Dean Zaslow. All rights reserved.
//

#import "Container.h"

@implementation Container

- (id)initWithItemName:(NSString *)name
        valueInDollars:(int)value
            serialNumber:(NSString *)sNumber{
                self = [super initWithItemName:name valueInDollars:value serialNumber:sNumber];
                subItems = [[NSMutableArray alloc] init];
                return  self;
            }

- (void)addItem:(id)item{
    [subItems addObject:item];
}

- (int)valueInDollars{
    int totalValue = _valueInDollars;
    for (id item in subItems){
        totalValue = totalValue + [item valueInDollars];
    }
    return totalValue;
}

- (NSString *)description{
    return [[NSString alloc] initWithFormat:@"Item name: %@  Value: %d  Sub items: %@",
            _itemName,
            [self valueInDollars],
            subItems];
}
@end