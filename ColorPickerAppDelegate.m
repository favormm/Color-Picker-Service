//
//  ColorPickerAppDelegate.m
//  ColorPicker
//
//  Created by Jonathan Wight on 7/17/09.
//  Copyright 2009 toxicsoftware.com. All rights reserved.
//

#import "ColorPickerAppDelegate.h"

@implementation ColorPickerAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
[[NSApplication sharedApplication] setServicesProvider:self];
}

- (void)pickColor:(NSPasteboard *)pboard userData:(NSString *)userData error:(NSString **)error
{
NSColorPanel *thePanel = [NSColorPanel sharedColorPanel];
[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(windowWillClose:) name:NSWindowWillCloseNotification object:thePanel];
[thePanel makeKeyAndOrderFront:NULL];
}

- (void)windowWillClose:(NSNotification *)inNotification
{
[[NSApplication sharedApplication] terminate:NULL];
}

@end
