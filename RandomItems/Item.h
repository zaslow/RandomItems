//
//  Item.h
//  RandomItems
//
//  Created by Christine Gornall on 2/5/15.
//  Copyright (c) 2015 Dean Zaslow. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject {
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
}

+ (instancetype)randomItem;

// Designated initializer for Item
- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)sNumber;

- (instancetype)initWithItemName:(NSString *)name;

- (id)initWithItemName:(NSString *)name
          serialNumber:(NSString *)serNumber;
    
- (void)setItemName:(NSString *)str;
- (NSString *)itemName;
    
- (void)setSerialNumber:(NSString *)str;
- (NSString *)serialNumber;
    
- (void)setValueInDollars: (int)v;
- (int)valueInDollars;
    
- (NSDate *)dateCreated;

@end
