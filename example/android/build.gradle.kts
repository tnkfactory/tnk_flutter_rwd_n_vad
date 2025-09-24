allprojects {
    repositories {
        google()
        mavenCentral()
        maven ("https://repository.tnkad.net:8443/repository/public/" )
        maven ("https://repository.tnkad.net:8443/repository/tnk_test/" )
        maven ("https://repository.adiscope.com/repository/adiscope/" )
        maven ("https://repository.adiscope.com/repository/adiscope-test/" )
        maven ("https://s3.amazonaws.com/smaato-sdk-releases/" )// max 연동 시 추가
        maven ("https://verve.jfrog.io/artifactory/verve-gradle-release" ) // max 연동 시 추가
        maven ("https://artifactory.bidmachine.io/bidmachine" ) // max 연동 시 추가
        maven ("https://maven.ogury.co" ) // max 연동 시 추가
        maven ("https://artifact.bytedance.com/repository/pangle" ) // max 혹은 pangle 연동 시 추가
        maven ("https://dl-maven-android.mintegral.com/repository/mbridge_android_sdk_oversea" ) // max 연동 시 추가
        maven ("https://android-sdk.is.com" ) // max 연동 시 추가
        maven ("https://artifacts.applovin.com/android" )
        maven ("https://cboost.jfrog.io/artifactory/chartboost-ads/" )
    }
}

val newBuildDir: Directory = rootProject.layout.buildDirectory.dir("../../build").get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}
subprojects {
    project.evaluationDependsOn(":app")
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
