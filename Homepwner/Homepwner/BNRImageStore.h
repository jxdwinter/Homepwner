//
//  BNRImageStore.h
//  Homepwner
//
//  Created by Xiaodong Jiang on 3/28/15.
//  Copyright (c) 2015 Xiaodong Jiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRImageStore : NSObject

+ (instancetype) sharedStore;

- (void) setImage : (UIImage *) image forKey : (NSString *) key;
- (UIImage *) imageForKey : (NSString *) key;
- (void) deleteImageForKey : (NSString *) key;

@end
