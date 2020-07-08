//
//  HomeTableViewController.h
//  MeetFlix
//
//  Created by Fabio Lindemberg on 07/07/20.
//  Copyright © 2020 Fabio Lindemberg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomePresenter.h"

NS_ASSUME_NONNULL_BEGIN

@interface HomeTableViewController : UITableViewController <HomePresenterDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imgCover;
- (void) updateState:(State)state;
@end

NS_ASSUME_NONNULL_END
