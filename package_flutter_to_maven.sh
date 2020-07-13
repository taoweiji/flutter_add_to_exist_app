killall java dart
flutter clean

cd android || exit

# 覆盖拷贝代码,忽略AndroidManifest.xml和build.gradle
rm -rf jiran/src/main/java/
rm -rf jiran/src/main/kotlin/
rm -rf jiran/src/main/res/

cp -R app/src/main/java/ jiran/src/main/java/
cp -R app/src/main/kotlin/ jiran/src/main/kotlin/
cp -R app/src/main/res/ jiran/src/main/res/
# 添加 .gitignore,忽略代码
# 建议版本号通过命令方式传入gradle

./gradlew uploadArchives -PpackageAarVersion=1.2.2
killall java dart