//
//  HomePresenter.h
//  MeetFlix
//
//  Created by Fabio Lindemberg on 07/07/20.
//  Copyright © 2020 Fabio Lindemberg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Movie.h"

NS_ASSUME_NONNULL_BEGIN

typedef  NS_ENUM(NSInteger, State) {
    Initial,
    Loaded,
    Loading
};

@protocol HomePresenterDelegate <NSObject>
- (void) updateState:(State) state;
@end

@interface HomePresenter : NSObject
@property (nonatomic) NSArray<Movie*> * movies;
- (instancetype) initWithPresenter:(id<HomePresenterDelegate>) delegate;
- (void) loadData;
@end

NS_ASSUME_NONNULL_END
