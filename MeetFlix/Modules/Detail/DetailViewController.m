//
//  DetailViewController.m
//  MeetFlix
//
//  Created by Fabio Lindemberg on 21/07/20.
//  Copyright © 2020 Fabio Lindemberg. All rights reserved.
//

#import "AVFoundation/AVFoundation.h"
#import "DetailViewController.h"
#import <SDWebImage/SDWebImage.h>
#import "RecomendationsCell.h"
#import "Category.h"
#import "Movie.h"
#import "AVKit/AVKit.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

NSArray<Movie *> * movies;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self loadUI];
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

#pragma actions

- (IBAction)dismissDetail:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}

- (IBAction)playMovie:(id)sender {
    
    NSURL *url = [[NSURL alloc] initWithString: @"https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4"];

    AVPlayer *avPlayer = [AVPlayer playerWithURL: url];

    AVPlayerViewController *avPlayerCtrl = [[AVPlayerViewController alloc] init];
    avPlayerCtrl.view.frame = self.view.frame;
    avPlayerCtrl.player = avPlayer;
    avPlayerCtrl.delegate = self;
    [avPlayer play];
    [self presentViewController:avPlayerCtrl animated:YES completion:nil];
}

#pragma mark - Custom Methods

- (void) loadUI {
    self.lblRelevant.text = _movie.relevant;
    self.lblAge.text = [@(_movie.age) stringValue];
    self.lblYear.text = _movie.year;
    self.lblTemp.text = _movie.temp;
    self.lblText.text = _movie.text;
    self.lblCasting.text = _movie.casting;
    self.lblCreators.text = _movie.creators;
    [UIView animateWithDuration: 0.8 animations:^{
        self.pvProgress.progress = self->_movie.progress;
    }];
    
    [self.imgCover sd_setImageWithURL: [NSURL URLWithString: _movie.coverURL]];
    [self.imgBackground sd_setImageWithURL: [NSURL URLWithString: _movie.coverURL]
                 placeholderImage: nil];

    movies = [Category getCategories].firstObject.movies;
    [self.cvRecomendations reloadData];
}

#pragma mark - CollectionView delegate/datasource

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return movies.count;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    RecomendationsCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier: @"RecomendationCell" forIndexPath: indexPath];
    [cell loadWithMovie: movies[indexPath.row]];
    
    return cell;
}

@end
