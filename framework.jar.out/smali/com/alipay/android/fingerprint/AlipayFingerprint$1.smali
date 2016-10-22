.class Lcom/alipay/android/fingerprint/AlipayFingerprint$1;
.super Landroid/content/Context;
.source "AlipayFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/fingerprint/AlipayFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;


# direct methods
.method constructor <init>(Lcom/alipay/android/fingerprint/AlipayFingerprint;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    invoke-direct {p0}, Landroid/content/Context;-><init>()V

    return-void
.end method


# virtual methods
.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;
    .param p2, "arg1"    # Landroid/content/ServiceConnection;
    .param p3, "arg2"    # I

    .prologue
    .line 829
    const/4 v0, 0x0

    return v0
.end method

.method public checkCallingOrSelfPermission(Ljava/lang/String;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 823
    const/4 v0, 0x0

    return v0
.end method

.method public checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # I

    .prologue
    .line 817
    const/4 v0, 0x0

    return v0
.end method

.method public checkCallingPermission(Ljava/lang/String;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 811
    const/4 v0, 0x0

    return v0
.end method

.method public checkCallingUriPermission(Landroid/net/Uri;I)I
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # I

    .prologue
    .line 805
    const/4 v0, 0x0

    return v0
.end method

.method public checkPermission(Ljava/lang/String;II)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 799
    const/4 v0, 0x0

    return v0
.end method

.method public checkPermission(Ljava/lang/String;IILandroid/os/IBinder;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Landroid/os/IBinder;

    .prologue
    .line 865
    const/4 v0, 0x0

    return v0
.end method

.method public checkUriPermission(Landroid/net/Uri;III)I
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 793
    const/4 v0, 0x0

    return v0
.end method

.method public checkUriPermission(Landroid/net/Uri;IIILandroid/os/IBinder;)I
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I
    .param p5, "arg4"    # Landroid/os/IBinder;

    .prologue
    .line 859
    const/4 v0, 0x0

    return v0
.end method

.method public checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # I
    .param p5, "arg4"    # I
    .param p6, "arg5"    # I

    .prologue
    .line 787
    const/4 v0, 0x0

    return v0
.end method

.method public clearWallpaper()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 781
    return-void
.end method

.method public createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    .locals 1
    .param p1, "application"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "flags"    # I

    .prologue
    .line 847
    const/4 v0, 0x0

    return-object v0
.end method

.method public createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    .locals 1
    .param p1, "arg0"    # Landroid/content/res/Configuration;

    .prologue
    .line 773
    const/4 v0, 0x0

    return-object v0
.end method

.method public createDisplayContext(Landroid/view/Display;)Landroid/content/Context;
    .locals 1
    .param p1, "arg0"    # Landroid/view/Display;

    .prologue
    .line 767
    const/4 v0, 0x0

    return-object v0
.end method

.method public createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 761
    const/4 v0, 0x0

    return-object v0
.end method

.method public createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 853
    const/4 v0, 0x0

    return-object v0
.end method

.method public databaseList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 754
    const/4 v0, 0x0

    return-object v0
.end method

.method public deleteDatabase(Ljava/lang/String;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 748
    const/4 v0, 0x0

    return v0
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 742
    const/4 v0, 0x0

    return v0
.end method

.method public enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 737
    return-void
.end method

.method public enforceCallingOrSelfUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/String;

    .prologue
    .line 731
    return-void
.end method

.method public enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 724
    return-void
.end method

.method public enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/String;

    .prologue
    .line 718
    return-void
.end method

.method public enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Ljava/lang/String;

    .prologue
    .line 712
    return-void
.end method

.method public enforceUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I
    .param p5, "arg4"    # Ljava/lang/String;

    .prologue
    .line 705
    return-void
.end method

.method public enforceUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # I
    .param p5, "arg4"    # I
    .param p6, "arg5"    # I
    .param p7, "arg6"    # Ljava/lang/String;

    .prologue
    .line 698
    return-void
.end method

.method public fileList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 690
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 684
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 678
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 672
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBasePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 937
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 666
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 660
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCodeCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 913
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 654
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 648
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDir(Ljava/lang/String;I)Ljava/io/File;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I

    .prologue
    .line 642
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 835
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExternalCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 636
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExternalCacheDirs()[Ljava/io/File;
    .locals 1

    .prologue
    .line 630
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 624
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 618
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExternalMediaDirs()[Ljava/io/File;
    .locals 1

    .prologue
    .line 907
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 612
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 606
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMainLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 600
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNoBackupFilesDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 919
    const/4 v0, 0x0

    return-object v0
.end method

.method public getObbDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 594
    const/4 v0, 0x0

    return-object v0
.end method

.method public getObbDirs()[Ljava/io/File;
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOpPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 931
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageCodePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 582
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 576
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 570
    const-string v0, "com.alipay"

    return-object v0
.end method

.method public getPackageResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 564
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 558
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I

    .prologue
    .line 552
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 925
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 546
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 540
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 841
    const/4 v0, 0x0

    return v0
.end method

.method public getWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 534
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWallpaperDesiredMinimumHeight()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 527
    const/4 v0, 0x0

    return v0
.end method

.method public getWallpaperDesiredMinimumWidth()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 520
    const/4 v0, 0x0

    return v0
.end method

.method public grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/net/Uri;
    .param p3, "arg2"    # I

    .prologue
    .line 514
    return-void
.end method

.method public openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 507
    const/4 v0, 0x0

    return-object v0
.end method

.method public openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 500
    const/4 v0, 0x0

    return-object v0
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .prologue
    .line 493
    const/4 v0, 0x0

    return-object v0
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "arg3"    # Landroid/database/DatabaseErrorHandler;

    .prologue
    .line 486
    const/4 v0, 0x0

    return-object v0
.end method

.method public peekWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 479
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1
    .param p1, "arg0"    # Landroid/content/BroadcastReceiver;
    .param p2, "arg1"    # Landroid/content/IntentFilter;

    .prologue
    .line 472
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .locals 1
    .param p1, "arg0"    # Landroid/content/BroadcastReceiver;
    .param p2, "arg1"    # Landroid/content/IntentFilter;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Landroid/os/Handler;

    .prologue
    .line 466
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .locals 1
    .param p1, "arg0"    # Landroid/content/BroadcastReceiver;
    .param p2, "arg1"    # Landroid/os/UserHandle;
    .param p3, "arg2"    # Landroid/content/IntentFilter;
    .param p4, "arg3"    # Ljava/lang/String;
    .param p5, "arg4"    # Landroid/os/Handler;

    .prologue
    .line 883
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeStickyBroadcast(Landroid/content/Intent;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 460
    return-void
.end method

.method public removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Intent;
    .param p2, "arg1"    # Landroid/os/UserHandle;

    .prologue
    .line 454
    return-void
.end method

.method public revokeUriPermission(Landroid/net/Uri;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # I

    .prologue
    .line 448
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 442
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Intent;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 436
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "appOp"    # I

    .prologue
    .line 901
    return-void
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Intent;
    .param p2, "arg1"    # Landroid/os/UserHandle;

    .prologue
    .line 430
    return-void
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Intent;
    .param p2, "arg1"    # Landroid/os/UserHandle;
    .param p3, "arg2"    # Ljava/lang/String;

    .prologue
    .line 424
    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Intent;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 417
    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Intent;
    .param p2, "arg2"    # Ljava/lang/String;
    .param p3, "arg3"    # I
    .param p4, "arg4"    # Landroid/content/BroadcastReceiver;
    .param p5, "arg5"    # Landroid/os/Handler;
    .param p6, "arg6"    # I
    .param p7, "arg7"    # Ljava/lang/String;
    .param p8, "arg8"    # Landroid/os/Bundle;

    .prologue
    .line 895
    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Intent;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Landroid/content/BroadcastReceiver;
    .param p4, "arg3"    # Landroid/os/Handler;
    .param p5, "arg4"    # I
    .param p6, "arg5"    # Ljava/lang/String;
    .param p7, "arg6"    # Landroid/os/Bundle;

    .prologue
    .line 411
    return-void
.end method

.method public sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Intent;
    .param p2, "arg1"    # Landroid/os/UserHandle;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # I
    .param p5, "arg4"    # Landroid/content/BroadcastReceiver;
    .param p6, "arg5"    # Landroid/os/Handler;
    .param p7, "arg6"    # I
    .param p8, "arg7"    # Ljava/lang/String;
    .param p9, "arg8"    # Landroid/os/Bundle;

    .prologue
    .line 889
    return-void
.end method

.method public sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Intent;
    .param p2, "arg1"    # Landroid/os/UserHandle;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Landroid/content/BroadcastReceiver;
    .param p5, "arg4"    # Landroid/os/Handler;
    .param p6, "arg5"    # I
    .param p7, "arg6"    # Ljava/lang/String;
    .param p8, "arg7"    # Landroid/os/Bundle;

    .prologue
    .line 403
    return-void
.end method

.method public sendStickyBroadcast(Landroid/content/Intent;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 395
    return-void
.end method

.method public sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Intent;
    .param p2, "arg1"    # Landroid/os/UserHandle;

    .prologue
    .line 389
    return-void
.end method

.method public sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Intent;
    .param p2, "arg1"    # Landroid/content/BroadcastReceiver;
    .param p3, "arg2"    # Landroid/os/Handler;
    .param p4, "arg3"    # I
    .param p5, "arg4"    # Ljava/lang/String;
    .param p6, "arg5"    # Landroid/os/Bundle;

    .prologue
    .line 383
    return-void
.end method

.method public sendStickyOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Intent;
    .param p2, "arg1"    # Landroid/os/UserHandle;
    .param p3, "arg2"    # Landroid/content/BroadcastReceiver;
    .param p4, "arg3"    # Landroid/os/Handler;
    .param p5, "arg4"    # I
    .param p6, "arg5"    # Ljava/lang/String;
    .param p7, "arg6"    # Landroid/os/Bundle;

    .prologue
    .line 375
    return-void
.end method

.method public setTheme(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 367
    return-void
.end method

.method public setWallpaper(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "arg0"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 361
    return-void
.end method

.method public setWallpaper(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "arg0"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 354
    return-void
.end method

.method public startActivities([Landroid/content/Intent;)V
    .locals 0
    .param p1, "arg0"    # [Landroid/content/Intent;

    .prologue
    .line 347
    return-void
.end method

.method public startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # [Landroid/content/Intent;
    .param p2, "arg1"    # Landroid/os/Bundle;

    .prologue
    .line 341
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 335
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Intent;
    .param p2, "arg1"    # Landroid/os/Bundle;

    .prologue
    .line 329
    return-void
.end method

.method public startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/content/ComponentName;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Landroid/os/Bundle;

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/IntentSender;
    .param p2, "arg1"    # Landroid/content/Intent;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I
    .param p5, "arg4"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 316
    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/IntentSender;
    .param p2, "arg1"    # Landroid/content/Intent;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I
    .param p5, "arg4"    # I
    .param p6, "arg5"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 309
    return-void
.end method

.method public startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 301
    const/4 v0, 0x0

    return-object v0
.end method

.method public startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 877
    const/4 v0, 0x0

    return-object v0
.end method

.method public stopService(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 871
    const/4 v0, 0x0

    return v0
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/ServiceConnection;

    .prologue
    .line 290
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 284
    return-void
.end method
