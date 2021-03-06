//
//  Barracks.h
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Footman.h"
#import "Peasant.h"

@interface Barracks : NSObject
@property(assign) int gold;
@property(assign) int food;


-(Footman *)trainFootman;
-(BOOL)canTrainFootman;
-(Peasant *) trainPeasant;
-(BOOL)canTrainPeasent;
@end
