//
//  DetailViewController.h
//  MeetFlix
//
//  Created by Fabio Lindemberg on 21/07/20.
//  Copyright © 2020 Fabio Lindemberg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Movie.h"

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController

@property (nonatomic, weak) Movie * movie;
@end

NS_ASSUME_NONNULL_END
