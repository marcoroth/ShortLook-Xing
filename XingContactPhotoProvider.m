#import "XingContactPhotoProvider.h"

@implementation XingContactPhotoProvider
  - (DDNotificationContactPhotoPromiseOffer *)contactPhotoPromiseOfferForNotification:(DDUserNotification *)notification {
    NSString *imageURLStr = [notification.applicationUserInfo valueForKeyPath:@"xng.photo_url"];
    if (!imageURLStr) return nil;

    NSURL *imageURL = [NSURL URLWithString:imageURLStr];
    if (!imageURL) return nil;

    return [NSClassFromString(@"DDNotificationContactPhotoPromiseOffer") offerDownloadingPromiseWithPhotoIdentifier:imageURLStr fromURL:imageURL];
  }
@end
