using MonoMac.Foundation;

namespace Tools {

	[BaseType (typeof (NSObject))]
	public partial interface UserActivity {

		[Static, Export ("SystemIdleTime")]
        NSNumber SystemIdleTime();
	}
}
