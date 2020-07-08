//
//  MovieClass.m
//  MeetFlix
//
//  Created by Fabio Lindemberg on 07/07/20.
//  Copyright © 2020 Fabio Lindemberg. All rights reserved.
//

#import "Movie.h"

@implementation Movie
  
+ (NSArray<Movie*>*) getMovies {
  
    NSMutableArray<Movie*> * movies = [[NSMutableArray<Movie*> alloc] init];
    
    Movie * rickAndMorty = [Movie new];
    rickAndMorty.title = @"Rick and Morty";
    rickAndMorty.coverURL = @"https://img.estadao.com.br/thumbs/640/resources/jpg/5/0/1557958505405.jpg";
    rickAndMorty.text = @"The show revolves around the adventures of the members of the Smith household, which consists of parents Jerry and Beth, their children Summer and Morty, and Beth's father, Rick Sanchez, who lives with them as a guest.";
    rickAndMorty.age = 16;
    rickAndMorty.year = @"2013";
    rickAndMorty.temp = @"4 seasons";
    rickAndMorty.casting = @"Starring: Justin Roiland, Chris Parnell, Spencer Grammer";
    rickAndMorty.creators = @"Creators: Dan Harmon, Justin Roiland";
    rickAndMorty.time = @"Time remaining: 8m";
    rickAndMorty.relevant = @"100% relevant";
    rickAndMorty.progress = 0.95;
    
    [movies addObject: rickAndMorty];

    Movie * cars = [Movie new];
    cars.title = @"Rick and Morty";
    cars.coverURL = @"https://www.mobygames.com/images/covers/l/409089-disney-pixar-cars-3-driven-to-win-playstation-3-front-cover.png";
    cars.text = @"The show revolves around the adventures of the members of the Smith household, which consists of parents Jerry and Beth, their children Summer and Morty, and Beth's father, Rick Sanchez, who lives with them as a guest.";
    cars.age = 16;
    cars.year = @"2013";
    cars.temp = @"4 seasons";
    cars.casting = @"Starring: Justin Roiland, Chris Parnell, Spencer Grammer";
    cars.creators = @"Creators: Dan Harmon, Justin Roiland";
    cars.time = @"Time remaining: 8m";
    cars.relevant = @"100% relevant";
    cars.progress = 0.95;
    
    [movies addObject: cars];
    
    return movies;
}

@end


