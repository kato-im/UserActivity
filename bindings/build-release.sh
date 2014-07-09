mkdir ./release
/Library/Frameworks/Xamarin.Mac.framework/Versions/Current/bin/bmac -out:"./release/UserActivity.dll" './ApiDefinition.cs' -d:XAMMAC -baselib='/Library/Frameworks/Xamarin.Mac.framework/Versions/Current/lib/mono/xammac.dll' -r:"System.dll" -r:"System.Drawing.dll" -v
