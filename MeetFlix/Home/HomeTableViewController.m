//
//  HomeTableViewController.m
//  MeetFlix
//
//  Created by Fabio Lindemberg on 07/07/20.
//  Copyright © 2020 Fabio Lindemberg. All rights reserved.
//

#import "HomeTableViewController.h"
#import <SDWebImage/SDWebImage.h>
#import "MovieCategoryTableViewCell.h"


@interface HomeTableViewController ()

@end

@implementation HomeTableViewController

HomePresenter * presenter;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    presenter = [[HomePresenter alloc] initWithPresenter: self];
    [presenter loadData];
}

- (void) configUI {
    
    [_imgCover sd_setImageWithURL: [NSURL URLWithString: presenter.movies[0].coverURL]];
    
    NSLog(@"%@", presenter.movies[0].title);
}

#pragma mark - HomePresenterDelegate

- (void) updateState:(State)state {
    switch (state) {
        case Loaded:
            [self configUI];
            break;
        default:
            break;
    }
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MovieCategoryTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier: @"MovieCategoryCell"];
    cell.presenter = presenter;
    return cell;
}

@end
