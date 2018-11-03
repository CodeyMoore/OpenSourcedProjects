#import "XXRootViewController.h"
#import <WebKit/WebKit.h>

@implementation XXRootViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont fontWithName:@"Helvetica-Neue" size:24];
    label.shadowColor = [UIColor colorWithWhite:0.0 alpha:0.5];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor whiteColor]; 
    self.navigationItem.titleView = label;
    label.text = @"iJackOff - HQPorner";
    [label sizeToFit];

    self.navigationController.navigationBar.barTintColor = [UIColor clearColor];
    UIWebView *webview = [[UIWebView alloc] init];
    webview.frame = self.view.bounds;
    webview.scalesPageToFit = YES;
    NSString *url=@"https://m.hqporner.com/";
    NSURL *nsurl=[NSURL URLWithString:url];
    NSURLRequest *nsrequest=[NSURLRequest requestWithURL:nsurl];
    [webview loadRequest:nsrequest];
    [self.view addSubview:webview];
    [self setView:webview];
    
}
@end

