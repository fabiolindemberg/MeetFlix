//
//  HomeTableViewController.h
//  MeetFlix
//
//  Created by Fabio Lindemberg on 07/07/20.
//  Copyright © 2020 Fabio Lindemberg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Category.h"

NS_ASSUME_NONNULL_BEGIN

@interface HomeTableViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UIImageView *imgCover;
@property (nonatomic) NSArray<Category *> *categories;
@end

NS_ASSUME_NONNULL_END
