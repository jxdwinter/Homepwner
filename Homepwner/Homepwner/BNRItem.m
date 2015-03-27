//
//  BNRItem.m
//  Homepwner
//
//  Created by Xiaodong Jiang on 3/27/15.
//  Copyright (c) 2015 Xiaodong Jiang. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

+ (instancetype) randomItem{
    NSArray *randomAdjectiveList = @[@"Fluffy",@"Rusty",@"Shiny"];
    NSArray *randomNounList = @[@"Bear",@"Spork",@"Mac"];
    NSInteger adjectiveIndex = arc4random() % [randomAdjectiveList count];
    NSInteger nounIndex = arc4random() % [randomNounList count];
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",randomAdjectiveList[adjectiveIndex],randomNounList[nounIndex]];
    int randomValue = arc4random() % 100;
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",'0' + arc4random() % 10,
                                                                            'A' + arc4random() % 26,
                                                                            '0' + arc4random() % 10,
                                                                            'A' + arc4random() % 26,
                                                                            '0' + arc4random() % 10];
    BNRItem *newItem = [[self alloc] initWithItemName:randomName valueInDollars:randomValue serialNumber:randomSerialNumber];
    return newItem;
}

- (instancetype) initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber{
    self = [super init];
    if (self) {
        _itemName = name;
        _serialNumber = sNumber;
        _valueInDollars = value;
        _dateCreated = [[NSDate alloc] init];
    }
    return self;
}

- (instancetype) initWithItemName:(NSString *)name{
    return [self initWithItemName:name valueInDollars:0 serialNumber:@""];
}

- (NSString *)description{
    return [NSString stringWithFormat:@"%@ (%@) : Worth $%d recorded on %@",self.itemName,self.serialNumber,self.valueInDollars,self.dateCreated];
}

@end
