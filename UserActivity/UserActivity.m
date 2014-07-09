//
//  UserActivity.m
//  UserActivity
//
//  Created by Krypt on 07.07.14.
//  Copyright (c) 2014 kato. All rights reserved.
//

#import "UserActivity.h"

@implementation UserActivity

+ (NSNumber*) SystemIdleTime
{
    NSNumber *idlenanoseconds = nil;
    io_iterator_t iter = 0;
    if (IOServiceGetMatchingServices(kIOMasterPortDefault, IOServiceMatching("IOHIDSystem"), &iter) == KERN_SUCCESS) {
        io_registry_entry_t entry = IOIteratorNext(iter);
        if (entry) {
            CFMutableDictionaryRef dict = NULL;
            if (IORegistryEntryCreateCFProperties(entry, &dict, kCFAllocatorDefault, 0) == KERN_SUCCESS) {
                CFNumberRef obj = CFDictionaryGetValue(dict, CFSTR("HIDIdleTime"));
                if (obj) {
                    long long nanoseconds = 0;
                    if (CFNumberGetValue(obj, kCFNumberSInt64Type, &nanoseconds)) {
                        idlenanoseconds = [NSNumber numberWithLongLong:nanoseconds];
                    }
                }
                CFRelease(dict);
            }
            IOObjectRelease(entry);
        }
        IOObjectRelease(iter);
    }
    return idlenanoseconds;
}

@end
