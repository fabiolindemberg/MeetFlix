//
//  HomePresenter.m
//  MeetFlix
//
//  Created by Fabio Lindemberg on 07/07/20.
//  Copyright © 2020 Fabio Lindemberg. All rights reserved.
//

#import "HomePresenter.h"

@implementation HomePresenter

id<HomePresenterDelegate> _delegate;

- (instancetype) initWithPresenter:(id<HomePresenterDelegate>) delegate {
    self = [super init];
    
    if (self) {
        _delegate = delegate;
    }
    
    return self;
}

- (void) loadData {
    self.movies = [Movie getMovies];
    [_delegate updateState: Loaded];
}

@end
