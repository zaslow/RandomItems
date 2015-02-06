//
//  Item.m
//  RandomItems
//
//  Created by Christine Gornall on 2/5/15.
//  Copyright (c) 2015 Dean Zaslow. All rights reserved.
//

#import "Item.h"

@implementation Item

- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)sNumber {
    // Call superclass's desig. initializer
    self = [super init];
    
    // Determine if superclass's desig. initializer was successful
    if(self){
        // Give instance var initial values
        _itemName = name;
        _serialNumber = sNumber;
        _valueInDollars = value;
        
        // Set _dateCreated to current date/time
        _dateCreated = [[NSDate alloc] init];
    }
    
    // Return address of newly initiated object
    return self;
}

- (instancetype)initWithItemName:(NSString *)name{
    return [self initWithItemName:name
                   valueInDollars:0
                     serialNumber:@""];
}

- (instancetype)init{
    return [self initWithItemName:@"Item"];
}

- (void)setItemName:(NSString *)str{
    _itemName = str;
}
- (NSString *)itemName{
    return _itemName;
}

- (void)setSerialNumber:(NSString *)str{
    _serialNumber = str;
}
- (NSString *)serialNumber{
    return _serialNumber;
}

- (void)setValueInDollars:(int)v{
    _valueInDollars = v;
}
- (int)valueInDollars{
    return _valueInDollars;
}

- (NSDate *)dateCreated{
    return _dateCreated;
}

- (NSString *)description{
    NSString *descriptionString =
        [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@",
            self.itemName,
            self.serialNumber,
            self.valueInDollars,
            self.dateCreated];
    return descriptionString;
}

+ (instancetype)randomItem{
    // Immutable array of 3 adj.
    NSArray *randomAdjectiveList = @[@"Fluffy", @"Rusty", @"Shiny"];
    
    // Immutable array of 3 nouns
    NSArray *randomNounList = @[@"Bear", @"spork", @"Mac"];
    
    
    // Get index (0-2 incl.) of random adj. or noun from lists
    NSInteger adjectiveIndex = arc4random() % [randomAdjectiveList count];
    NSInteger nounIndex = arc4random() % [randomNounList count];
    
    NSString *randomName = [NSString stringWithFormat:@"%@, %@",
                            randomAdjectiveList[adjectiveIndex],
                            randomNounList[nounIndex]];
    
    int randomValue = arc4random() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    '0' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    '0' + arc4random() % 10];
    
    Item *newItem = [[self alloc] initWithItemName:randomName
                                    valueInDollars:randomValue
                                      serialNumber:randomSerialNumber];
    return newItem;
}

@end
