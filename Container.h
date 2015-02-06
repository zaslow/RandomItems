//
//  Container.h
//  RandomItems
//
//  Created by Christine Gornall on 2/5/15.
//  Copyright (c) 2015 Dean Zaslow. All rights reserved.
//

#import "Item.h"

@interface Container : Item{
    NSMutableArray *subItems;
}

- (void)addItem:(id) item;
@end
