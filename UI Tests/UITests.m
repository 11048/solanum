//
//  UITests.m
//  solanum
//
//  Created by zhouyi on 5/13/15.
//  Copyright (c) 2015 Razeware. All rights reserved.
//

#import "UITests.h"

@implementation UITests


//beforeAll is a special method that is called exactly once, before all of the tests run. You can set up any instance variables or initial conditions for the rest of your tests here.
- (void)beforeAll {
  [tester tapViewWithAccessibilityLabel:@"Settings"];
  
  [tester setOn:YES forSwitchWithAccessibilityLabel:@"Debug Mode"];
  
  [tester tapViewWithAccessibilityLabel:@"Clear History"];
  [tester tapViewWithAccessibilityLabel:@"Clear"];
}


- (void)test00TabBarButtons {
  // 1
  [tester tapViewWithAccessibilityLabel:@"History"];
  [tester waitForViewWithAccessibilityLabel:@"History List"];
  
  // 2
  [tester tapViewWithAccessibilityLabel:@"Timer"];
  [tester waitForViewWithAccessibilityLabel:@"Task Name"];
  
  // 3
  [tester tapViewWithAccessibilityLabel:@"Settings"];
  [tester waitForViewWithAccessibilityLabel:@"Debug Mode"];
}



@end
