//
//  BNRImageStore.m
//  Homepwner
//
//  Created by Xiaodong Jiang on 3/28/15.
//  Copyright (c) 2015 Xiaodong Jiang. All rights reserved.
//

#import "BNRImageStore.h"

@interface BNRImageStore()

@property (nonatomic, strong) NSMutableDictionary *dictionary;

@end

@implementation BNRImageStore

+ (instancetype) sharedStore{
    static BNRImageStore *sharedStore = nil;
    if (!sharedStore) {
        sharedStore = [[self alloc] initPrivate];
    }
    return sharedStore;
}

- (instancetype)init{
    return nil;
}

- (instancetype) initPrivate{
    self = [super init];
    if (self) {
        _dictionary = [[NSMutableDictionary alloc] init];
    }
    return self;
}

- (void) setImage:(id)image forKey:(NSString *)key{
    self.dictionary[key] = image;
}

- (UIImage *) imageForKey : (NSString *) key{
    return self.dictionary[key];
}

- (void) deleteImageForKey : (NSString *) key{
    if (!key) {
        return;
    }
    [self.dictionary removeObjectForKey:key];
}

@end
