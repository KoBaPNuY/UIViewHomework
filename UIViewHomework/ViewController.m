//
//  ViewController.m
//  UIViewHomework
//
//  Created by Zhuravlev Aleksandr on 29.03.15.
//  Copyright (c) 2015 AlexHome. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
 /*
    int x, y;
    int wight = 30;
    int numberOfBlock = 1;
    int numberOfLines = 1;
    
    for (int i = 0; i <8 ; i++)
    {
        for (int j = 0; j < 8; j=j+2)
        {
            if (numberOfLines % 2)
            {
                x = wight * j;
                y = wight * numberOfLines;
            }
            else
            {
                x = wight * j + wight;
                y = wight * numberOfLines;
            }
    
            UIView* view1 = [[UIView alloc] initWithFrame:CGRectMake(x, y, wight,wight)];
            view1.backgroundColor = [UIColor blackColor];
            [self.view addSubview:view1];
            numberOfBlock++;
        }
                    numberOfLines++;
    }
    */
    
    
    int count, cellSize;
    
    count = 8;
    cellSize = 30;
    
    UIView* chessBoard = [[UIView alloc] initWithFrame:CGRectMake(cellSize, cellSize, cellSize * count, cellSize * count)];
    
    [chessBoard setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:chessBoard];
    
    for (int i =0; i <8; i++)
    {
        for (int j = 0; j < 8; j++)
        {
            if (i % 2 == j % 2)
            {
                UIView* square = [[UIView alloc] initWithFrame:CGRectMake(j * cellSize, i * cellSize, cellSize, cellSize)];
                
                [square setBackgroundColor:[UIColor blackColor]];
                 [chessBoard addSubview:square];
            }
        }
    }
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
