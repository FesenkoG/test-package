xcodebuild archive \
    -project TestPackage.xcodeproj \
    -scheme TestPackage-Package \
    -destination "generic/platform=iOS" \
    -destination "generic/platform=iOS Simulator" \
    -archivePath "archives/TestPackage";

rm -rf xcframeworks/TestPackage.xcframework;

xcodebuild -create-xcframework \
    -archive archives/TestPackage.xcarchive \
    -framework TestPackage.framework \
    -output xcframeworks/TestPackage.xcframework