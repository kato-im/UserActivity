mkdir ./debug
/Library/Frameworks/Xamarin.Mac.framework/Versions/Current/bin/bmac -debug -out:"./debug/UserActivity.dll" './ApiDefinition.cs' -d:XAMMAC -baselib='/Library/Frameworks/Xamarin.Mac.framework/Versions/Current/lib/mono/xammac.dll' -r:"System.dll" -r:"System.Drawing.dll" -v
