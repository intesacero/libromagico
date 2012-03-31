//
//  AppDelegate.m
//  vision2
//
//  Created by INDUSTRIA TRANSF. ESPECIAL SL on 17/03/12.
//  Copyright (c) 2012 INDUSTRIA TRANSFORMADORA ESPECIA SL. All rights reserved.
//

#import "AppDelegate.h"
// estas dos las quito y pongo vista1
//#import "MasterViewController.h"

//#import "DetailViewController.h"

#import "vista1.h"

@implementation AppDelegate

@synthesize window = _window;
//esto lo cambiamos
//@synthesize splitViewController = _splitViewController;
// implementamos navigationviwecontroller
@synthesize navigationController = _navigationController;

// donde hay masterviwcontrooller pongo vista1

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    vista1 *v1 = [[vista1 alloc] initWithNibName:@"vista1" bundle:nil];
    
    //creamos el navigation controller
    self.navigationController = [[UINavigationController alloc] initWithRootViewController:v1];
    
    //--oculto la barra de navegacion
    [self.navigationController setNavigationBarHidden:YES];
    
    self.window.rootViewController = self.navigationController;
    
    
    //muestro la barra de estatus, o la oculto
    [[UIApplication sharedApplication] setStatusBarHidden:YES];
    [self.window makeKeyAndVisible];
    return YES;
    
    /* todo esto lo borro
     
     UINavigationController *masterNavigationController = [[UINavigationController alloc] initWithRootViewController:masterViewController];
     
     DetailViewController *detailViewController = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
     UINavigationController *detailNavigationController = [[UINavigationController alloc] initWithRootViewController:detailViewController];
     
     self.splitViewController = [[UISplitViewController alloc] init];
     self.splitViewController.delegate = detailViewController;
     self.splitViewController.viewControllers = [NSArray arrayWithObjects:masterNavigationController, detailNavigationController, nil];
     self.window.rootViewController = self.splitViewController;
     [self.window makeKeyAndVisible];
     return YES;
     */
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end

