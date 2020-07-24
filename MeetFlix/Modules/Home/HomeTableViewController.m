//
//  HomeTableViewController.m
//  MeetFlix
//
//  Created by Fabio Lindemberg on 07/07/20.
//  Copyright © 2020 Fabio Lindemberg. All rights reserved.
//

#import "HomeTableViewController.h"
#import "MovieCategoryTableViewCell.h"
#import "PreviewCollectionViewCell.h"
#import <SDWebImage/SDWebImage.h>
#import "DetailViewController.h"
#import "CategoryHeader.h"
#import "Constants.h"

@interface HomeTableViewController () <UICollectionViewDelegate, UICollectionViewDataSource>

@end

@implementation HomeTableViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.categories = [Category getCategories];
}

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    [self.tableView reloadData];
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
    [_imgCover sd_setImageWithURL: [NSURL URLWithString: self.categories.firstObject.movies[0].coverURL]];
}

#pragma mark - Table view datasource and delegate

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {

    CategoryHeader * categoryHeader = [[UINib nibWithNibName: @"CategoryHeader" bundle: nil] instantiateWithOwner: nil options: nil][0];
    categoryHeader.lblTitle.text = self.categories[section].name;

    return categoryHeader;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 30;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.categories count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MovieCategoryTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier: @"MovieCategoryCell"];
    cell.movies = self.categories[indexPath.section].movies;
    return cell;
}

#pragma mark - CollectionView datasource and delegate

- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    PreviewCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier: @"PreviewCell" forIndexPath: indexPath];
    
    [cell.imgPreview sd_setImageWithURL: [[NSURL alloc] initWithString: self.categories[1].movies[indexPath.row].coverURL]];
    
    cell.imgPreview.layer.cornerRadius = cell.frame.size.width / 2;
    
    return cell;
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.categories.firstObject.movies.count;
}

@end


