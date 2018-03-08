/**
 * titanium-pyze
 *
 * Created by Hans Knoechel
 * Copyright (c) 2018 Your Company. All rights reserved.
 */

#import "TiPyzeModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"
#import "TiApp.h"

#import <Pyze/Pyze.h>

@implementation TiPyzeModule

#pragma mark Internal

// This is generated for your module, please do not change it
- (id)moduleGUID
{
  return @"8282c0dd-f3a6-44b7-829f-7377c8a0e91d";
}

// This is generated for your module, please do not change it
- (NSString *)moduleId
{
  return @"ti.pyze";
}

#pragma mark Lifecycle

- (void)startup
{
  [super startup];
  DebugLog(@"[DEBUG] %@ loaded", self);
}

#pragma Public APIs

- (void)initialize:(id)appKey
{
  ENSURE_SINGLE_ARG(appKey, NSString);
  [Pyze initialize:appKey];
}

- (void)postEvent:(id)event
{
  NSString *eventName = [event objectAtIndex:0];
  NSDictionary *eventAttributes = [event objectAtIndex:1];
  
  if (eventAttributes == nil) {
    [PyzeCustomEvent postWithEventName:eventName];
  } else {
    [PyzeCustomEvent postWithEventName:eventName withAttributes:eventAttributes];
  }
}

@end
