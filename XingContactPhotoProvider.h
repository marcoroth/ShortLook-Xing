#import "ShortLook-API.h"

@interface XingContactPhotoProvider : NSObject <DDNotificationContactPhotoProviding>
  - (DDNotificationContactPhotoPromiseOffer *)contactPhotoPromiseOfferForNotification:(DDUserNotification *)notification;
@end
