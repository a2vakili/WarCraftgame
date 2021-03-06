//
//  WarCraftIII_Tests_04.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//


#import <XCTest/XCTest.h>
#import "Barracks.h"
#import "Footman.h"
#import "WCMockBarracks.h"

// A Barracks should only be able to train footmen if it has enough resources
// Introduce a new method that checks to see if there are enough resources to train one
// Of course, it should then also be leveraged by the train_footman method

@interface WarCraftIII_Tests_04 : XCTestCase

@end

@implementation WarCraftIII_Tests_04
{
    WCMockBarracks *_barracks;
}

- (void)setUp {
	[super setUp];
	_barracks = [WCMockBarracks new];
}

- (void)tearDown {
	[super tearDown];
	_barracks = nil;
}

-(WCMockBarracks *)barracks
{
    return _barracks;
}

-(void)testcanTrainFootmanIfThereIsEnoughResources
{
    BOOL result = [self.barracks canTrainFootman];
    XCTAssertTrue(result, @"barracks should initially be able to train footman");
}

-(void)testcanTrainFootmanFalseIfThereIsntEnoughFood
{
    self.barracks.food = 1;
    BOOL result = [self.barracks canTrainFootman];
    XCTAssertFalse(result, @"barracks shouldn't be able to train footman if there is less than 2 food");
}

-(void)testcanTrainFootmanFalseIfThereIsntEnoughGold
{
    self.barracks.gold = 134;
    BOOL result = [self.barracks canTrainFootman];
    XCTAssertFalse(result, @"barracks shouldn't be able to train footman if there is less than 135 gold");
}

-(void)testWillNotTrainFootmanWithoutEnoughResources
{
    self.barracks.food = 1;
    Footman *result = [self.barracks trainFootman];
    XCTAssertNil(result, @"barracks shouldn't be able to train footman if there is not enough resources");
}

-(void)testWillTrainFootmanWithEnoughResources
{
	self.barracks.food = 2;
	self.barracks.gold = 135;
    id result = [[self.barracks trainFootman] class];
    id expected = [Footman class];
    XCTAssertEqualObjects(expected, result, @"barracks should train a footman with enough resources");
}

@end
