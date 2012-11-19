//
//  HopaBrowserModel.h
//  Hopa Simple Browser
//
//  Created by Peter Höche on 08.11.12.
//  Copyright (c) 2012 Hopa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HopaBrowserModel : NSObject

@property (copy) NSString *url;
@property (nonatomic, copy) NSNumber *windowWidth;
@property (nonatomic, copy) NSNumber *windowHeight;

@end
