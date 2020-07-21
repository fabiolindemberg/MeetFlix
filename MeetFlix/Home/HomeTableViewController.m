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
    
    presenter = [[HomePresenter alloc] initWithPresenter: self];
    [presenter loadData];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}

#pragma mark - Custom Methods
- (void) configUI {
    
    [_imgCover sd_setImageWithURL: [NSURL URLWithString: presenter.movies[6].coverURL]];
    
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
