//
//  ViewController.m
//  Html
//
//  Created by Saltedfish on 2017/5/9.
//  Copyright © 2017年 物联利浪. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    NSString *CSS= @"<style type=\"text/css\">img{ width:100%;}</style>";
    NSString *body = @"<h1 style=\"text-align: center;\">关于全市展开卫生检查的通知</h1><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1494517878331&di=af6cd56216b3212fca2503108f809bfc&imgtype=0&src=http%3A%2F%2Fa.hiphotos.baidu.com%2Fzhidao%2Fpic%2Fitem%2F0823dd54564e9258b9b28bca9882d158ccbf4e0b.jpg\" </img> <img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1494517770447&di=8672594c95c67bc0444d1770042f6e37&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fforum%2Fpic%2Fitem%2Fdad79612c8fcc3ce558a95db9245d688d63f20d3.jpg\"></img>";
    
    NSString * htmlString = [NSString stringWithFormat:@"<html><meta charset=\"UTF-8\"><header>%@</header><body>%@</body></html>",CSS,body];
    [self.webView loadHTMLString:htmlString baseURL:nil];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
