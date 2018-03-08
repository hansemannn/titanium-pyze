/**
 * titanium-pyze
 *
 * Created by Hans Knoechel
 * Copyright (c) 2018 Your Company. All rights reserved.
 */

#import "TiModule.h"

@interface TiPyzeModule : TiModule {

}

- (void)initialize:(id)appKey;

- (void)postEvent:(id)event;

@end
