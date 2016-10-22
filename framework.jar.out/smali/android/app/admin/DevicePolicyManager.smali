.class public Landroid/app/admin/DevicePolicyManager;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# static fields
.field public static final ACTION_ADD_DEVICE_ADMIN:Ljava/lang/String; = "android.app.action.ADD_DEVICE_ADMIN"

.field public static final ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED:Ljava/lang/String; = "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

.field public static final ACTION_PROVISION_MANAGED_PROFILE:Ljava/lang/String; = "android.app.action.PROVISION_MANAGED_PROFILE"

.field public static final ACTION_SET_NEW_PASSWORD:Ljava/lang/String; = "android.app.action.SET_NEW_PASSWORD"

.field public static final ACTION_SET_PROFILE_OWNER:Ljava/lang/String; = "android.app.action.SET_PROFILE_OWNER"

.field public static final ACTION_START_ENCRYPTION:Ljava/lang/String; = "android.app.action.START_ENCRYPTION"

.field public static final ENCRYPTION_STATUS_ACTIVATING:I = 0x2

.field public static final ENCRYPTION_STATUS_ACTIVE:I = 0x3

.field public static final ENCRYPTION_STATUS_INACTIVE:I = 0x1

.field public static final ENCRYPTION_STATUS_UNSUPPORTED:I = 0x0

.field public static final EXTRA_ADD_EXPLANATION:Ljava/lang/String; = "android.app.extra.ADD_EXPLANATION"

.field public static final EXTRA_DEVICE_ADMIN:Ljava/lang/String; = "android.app.extra.DEVICE_ADMIN"

.field public static final EXTRA_PROFILE_OWNER_NAME:Ljava/lang/String; = "android.app.extra.PROFILE_OWNER_NAME"

.field public static final EXTRA_PROVISIONING_ACCOUNT_TO_MIGRATE:Ljava/lang/String; = "android.app.extra.PROVISIONING_ACCOUNT_TO_MIGRATE"

.field public static final EXTRA_PROVISIONING_ADMIN_EXTRAS_BUNDLE:Ljava/lang/String; = "android.app.extra.PROVISIONING_ADMIN_EXTRAS_BUNDLE"

.field public static final EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_CHECKSUM:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_CHECKSUM"

.field public static final EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_COOKIE_HEADER:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_COOKIE_HEADER"

.field public static final EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_LOCATION:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_LOCATION"

.field public static final EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_NAME:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_NAME"

.field public static final EXTRA_PROVISIONING_EMAIL_ADDRESS:Ljava/lang/String; = "android.app.extra.PROVISIONING_EMAIL_ADDRESS"

.field public static final EXTRA_PROVISIONING_LEAVE_ALL_SYSTEM_APPS_ENABLED:Ljava/lang/String; = "android.app.extra.PROVISIONING_LEAVE_ALL_SYSTEM_APPS_ENABLED"

.field public static final EXTRA_PROVISIONING_LOCALE:Ljava/lang/String; = "android.app.extra.PROVISIONING_LOCALE"

.field public static final EXTRA_PROVISIONING_LOCAL_TIME:Ljava/lang/String; = "android.app.extra.PROVISIONING_LOCAL_TIME"

.field public static final EXTRA_PROVISIONING_TIME_ZONE:Ljava/lang/String; = "android.app.extra.PROVISIONING_TIME_ZONE"

.field public static final EXTRA_PROVISIONING_WIFI_HIDDEN:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_HIDDEN"

.field public static final EXTRA_PROVISIONING_WIFI_PAC_URL:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PAC_URL"

.field public static final EXTRA_PROVISIONING_WIFI_PASSWORD:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PASSWORD"

.field public static final EXTRA_PROVISIONING_WIFI_PROXY_BYPASS:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PROXY_BYPASS"

.field public static final EXTRA_PROVISIONING_WIFI_PROXY_HOST:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PROXY_HOST"

.field public static final EXTRA_PROVISIONING_WIFI_PROXY_PORT:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PROXY_PORT"

.field public static final EXTRA_PROVISIONING_WIFI_SECURITY_TYPE:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_SECURITY_TYPE"

.field public static final EXTRA_PROVISIONING_WIFI_SSID:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_SSID"

.field public static final FLAG_MANAGED_CAN_ACCESS_PARENT:I = 0x2

.field public static final FLAG_PARENT_CAN_ACCESS_MANAGED:I = 0x1

.field public static final KEYGUARD_DISABLE_FEATURES_ALL:I = 0x7fffffff

.field public static final KEYGUARD_DISABLE_FEATURES_NONE:I = 0x0

.field public static final KEYGUARD_DISABLE_FINGERPRINT:I = 0x20

.field public static final KEYGUARD_DISABLE_SECURE_CAMERA:I = 0x2

.field public static final KEYGUARD_DISABLE_SECURE_NOTIFICATIONS:I = 0x4

.field public static final KEYGUARD_DISABLE_TRUST_AGENTS:I = 0x10

.field public static final KEYGUARD_DISABLE_UNREDACTED_NOTIFICATIONS:I = 0x8

.field public static final KEYGUARD_DISABLE_WIDGETS_ALL:I = 0x1

.field public static final MIME_TYPE_PROVISIONING_NFC:Ljava/lang/String; = "application/com.android.managedprovisioning"

.field public static final PASSWORD_QUALITY_ALPHABETIC:I = 0x40000

.field public static final PASSWORD_QUALITY_ALPHANUMERIC:I = 0x50000

.field public static final PASSWORD_QUALITY_BIOMETRIC_WEAK:I = 0x8000

.field public static final PASSWORD_QUALITY_COMPLEX:I = 0x60000

.field public static final PASSWORD_QUALITY_NUMERIC:I = 0x20000

.field public static final PASSWORD_QUALITY_NUMERIC_COMPLEX:I = 0x30000

.field public static final PASSWORD_QUALITY_SOMETHING:I = 0x10000

.field public static final PASSWORD_QUALITY_UNSPECIFIED:I = 0x0

.field public static final PASSWORD_QUALITY_VOICE_WEAK:I = 0x4000

.field public static final RESET_PASSWORD_REQUIRE_ENTRY:I = 0x1

.field private static TAG:Ljava/lang/String; = null

.field public static final WIPE_EXTERNAL_STORAGE:I = 0x1

.field public static final WIPE_RESET_PROTECTION_DATA:I = 0x2


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/app/admin/IDevicePolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-string v0, "DevicePolicyManager"

    sput-object v0, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 92
    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 94
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Handler;)Landroid/app/admin/DevicePolicyManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 98
    new-instance v0, Landroid/app/admin/DevicePolicyManager;

    invoke-direct {v0, p0, p1}, Landroid/app/admin/DevicePolicyManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 99
    .local v0, "me":Landroid/app/admin/DevicePolicyManager;
    iget-object v1, v0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .end local v0    # "me":Landroid/app/admin/DevicePolicyManager;
    :goto_0
    return-object v0

    .restart local v0    # "me":Landroid/app/admin/DevicePolicyManager;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getCaCertAlias([B)Ljava/lang/String;
    .locals 3
    .param p0, "certBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 1968
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 1969
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1971
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    new-instance v2, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    invoke-virtual {v2, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "flags"    # I

    .prologue
    .line 2830
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2832
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2837
    :cond_0
    :goto_0
    return-void

    .line 2833
    :catch_0
    move-exception v0

    .line 2834
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3530
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 3532
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3537
    :goto_0
    return v1

    .line 3533
    :catch_0
    move-exception v0

    .line 3534
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Error calling addCrossProfileWidgetProvider"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3537
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "activity"    # Landroid/content/ComponentName;

    .prologue
    .line 2633
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2635
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2640
    :cond_0
    :goto_0
    return-void

    .line 2636
    :catch_0
    move-exception v0

    .line 2637
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 3137
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 3139
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v2, 0x1

    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3144
    :cond_0
    :goto_0
    return-void

    .line 3140
    :catch_0
    move-exception v0

    .line 3141
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2846
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2848
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2853
    :cond_0
    :goto_0
    return-void

    .line 2849
    :catch_0
    move-exception v0

    .line 2850
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearDeviceOwnerApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2333
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2335
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->clearDeviceOwner(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2340
    :cond_0
    :goto_0
    return-void

    .line 2336
    :catch_0
    move-exception v0

    .line 2337
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to clear device owner"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2654
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2656
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2661
    :cond_0
    :goto_0
    return-void

    .line 2657
    :catch_0
    move-exception v0

    .line 2658
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearProfileOwner(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2410
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2412
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->clearProfileOwner(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2417
    :cond_0
    :goto_0
    return-void

    .line 2413
    :catch_0
    move-exception v0

    .line 2414
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to clear profile owner "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public clearUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 3159
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 3161
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3166
    :cond_0
    :goto_0
    return-void

    .line 3162
    :catch_0
    move-exception v0

    .line 3163
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public createAndInitializeUser(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)Landroid/os/UserHandle;
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "ownerName"    # Ljava/lang/String;
    .param p4, "profileOwnerComponent"    # Landroid/content/ComponentName;
    .param p5, "adminExtras"    # Landroid/os/Bundle;

    .prologue
    .line 3057
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/app/admin/IDevicePolicyManager;->createAndInitializeUser(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)Landroid/os/UserHandle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3062
    :goto_0
    return-object v0

    .line 3059
    :catch_0
    move-exception v6

    .line 3060
    .local v6, "re":Landroid/os/RemoteException;
    sget-object v0, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v1, "Could not create a user"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3062
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createUser(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/UserHandle;
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 3023
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->createUser(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/UserHandle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3027
    :goto_0
    return-object v1

    .line 3024
    :catch_0
    move-exception v0

    .line 3025
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not create a user"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3027
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableSystemApp(Landroid/content/ComponentName;Landroid/content/Intent;)I
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3235
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 3237
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->enableSystemAppWithIntent(Landroid/content/ComponentName;Landroid/content/Intent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3242
    :goto_0
    return v1

    .line 3238
    :catch_0
    move-exception v0

    .line 3239
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to install packages matching filter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3242
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3216
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 3218
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3223
    :cond_0
    :goto_0
    return-void

    .line 3219
    :catch_0
    move-exception v0

    .line 3220
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to install package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAccountTypesWithManagementDisabled()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3282
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 3290
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 3292
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3298
    :goto_0
    return-object v1

    .line 3293
    :catch_0
    move-exception v0

    .line 3294
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3298
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveAdmins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 535
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getActiveAdminsAsUser(I)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 543
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 545
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getActiveAdmins(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 550
    :goto_0
    return-object v1

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 550
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAdminInfo(Landroid/content/ComponentName;)Landroid/app/admin/DeviceAdminInfo;
    .locals 7
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    .line 2176
    :try_start_0
    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v5, 0x80

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2183
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 2184
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2187
    :try_start_1
    new-instance v3, Landroid/app/admin/DeviceAdminInfo;

    iget-object v5, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5, v2}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2193
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v3

    .line 2178
    :catch_0
    move-exception v1

    .line 2179
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to retrieve device policy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 2180
    goto :goto_0

    .line 2188
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_1
    move-exception v1

    .line 2189
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v3, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to parse device policy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 2190
    goto :goto_0

    .line 2191
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v1

    .line 2192
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to parse device policy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 2193
    goto :goto_0
.end method

.method public getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3114
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 3116
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3121
    :goto_0
    return-object v1

    .line 3117
    :catch_0
    move-exception v0

    .line 3118
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3121
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAutoTimeRequired()Z
    .locals 3

    .prologue
    .line 2088
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2090
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->getAutoTimeRequired()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2095
    :goto_0
    return v1

    .line 2091
    :catch_0
    move-exception v0

    .line 2092
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2095
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCameraDisabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2003
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getCameraDisabled(Landroid/content/ComponentName;I)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2008
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2010
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2015
    :goto_0
    return v1

    .line 2011
    :catch_0
    move-exception v0

    .line 2012
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2015
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2791
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2793
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2798
    :goto_0
    return v1

    .line 2794
    :catch_0
    move-exception v0

    .line 2795
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2798
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCrossProfileCallerIdDisabled(Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 2808
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2810
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileCallerIdDisabledForUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2815
    :goto_0
    return v1

    .line 2811
    :catch_0
    move-exception v0

    .line 2812
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2815
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3579
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v2, :cond_0

    .line 3581
    :try_start_0
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v2, p1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3582
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 3589
    .end local v0    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v0

    .line 3585
    :catch_0
    move-exception v1

    .line 3586
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Error calling getCrossProfileWidgetProviders"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3589
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentFailedPasswordAttempts()I
    .locals 3

    .prologue
    .line 1316
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1318
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/app/admin/IDevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1323
    :goto_0
    return v1

    .line 1319
    :catch_0
    move-exception v0

    .line 1320
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1323
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getDeviceOwner()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2345
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2347
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwner()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2352
    :goto_0
    return-object v1

    .line 2348
    :catch_0
    move-exception v0

    .line 2349
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get device owner"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceOwnerName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2357
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2359
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2364
    :goto_0
    return-object v1

    .line 2360
    :catch_0
    move-exception v0

    .line 2361
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get device owner"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGlobalProxyAdmin()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 1647
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1649
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/app/admin/IDevicePolicyManager;->getGlobalProxyAdmin(I)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1654
    :goto_0
    return-object v1

    .line 1650
    :catch_0
    move-exception v0

    .line 1651
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1654
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstalledCaCerts(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 1880
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1881
    .local v3, "certs":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v6, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v6, :cond_0

    .line 1883
    :try_start_0
    iget-object v6, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v6, p1}, Landroid/app/admin/IDevicePolicyManager;->enforceCanManageCaCerts(Landroid/content/ComponentName;)V

    .line 1884
    new-instance v2, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    .line 1885
    .local v2, "certStore":Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-virtual {v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->userAliases()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1887
    .local v0, "alias":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v2, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1888
    :catch_0
    move-exception v1

    .line 1889
    .local v1, "ce":Ljava/security/cert/CertificateException;
    :try_start_2
    sget-object v6, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not encode certificate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1892
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "ce":Ljava/security/cert/CertificateException;
    .end local v2    # "certStore":Lcom/android/org/conscrypt/TrustedCertificateStore;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v5

    .line 1893
    .local v5, "re":Landroid/os/RemoteException;
    sget-object v6, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v7, "Failed talking with device policy service"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1896
    .end local v5    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2134
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2139
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2141
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2146
    :goto_0
    return v1

    .line 2142
    :catch_0
    move-exception v0

    .line 2143
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2146
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 3333
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 3335
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3340
    :goto_0
    return-object v1

    .line 3336
    :catch_0
    move-exception v0

    .line 3337
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3340
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1363
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1368
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1370
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1375
    :goto_0
    return v1

    .line 1371
    :catch_0
    move-exception v0

    .line 1372
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1375
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaximumTimeToLock(Landroid/content/ComponentName;)J
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1472
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaximumTimeToLock(Landroid/content/ComponentName;I)J
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1477
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1479
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1484
    :goto_0
    return-wide v2

    .line 1480
    :catch_0
    move-exception v0

    .line 1481
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1484
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getPasswordExpiration(Landroid/content/ComponentName;)J
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1241
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1243
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1248
    :goto_0
    return-wide v2

    .line 1244
    :catch_0
    move-exception v0

    .line 1245
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1248
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getPasswordExpirationTimeout(Landroid/content/ComponentName;)J
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1220
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1222
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordExpirationTimeout(Landroid/content/ComponentName;I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1227
    :goto_0
    return-wide v2

    .line 1223
    :catch_0
    move-exception v0

    .line 1224
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1227
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getPasswordHistoryLength(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1259
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getPasswordHistoryLength(Landroid/content/ComponentName;I)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1264
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1266
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1271
    :goto_0
    return v1

    .line 1267
    :catch_0
    move-exception v0

    .line 1268
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1271
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPasswordMaximumLength(I)I
    .locals 1
    .param p1, "quality"    # I

    .prologue
    .line 1282
    const/16 v0, 0x10

    return v0
.end method

.method public getPasswordMinimumLength(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 775
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getPasswordMinimumLength(Landroid/content/ComponentName;I)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 780
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 782
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 787
    :goto_0
    return v1

    .line 783
    :catch_0
    move-exception v0

    .line 784
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 787
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumLetters(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 955
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getPasswordMinimumLetters(Landroid/content/ComponentName;I)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 960
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 962
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 967
    :goto_0
    return v1

    .line 963
    :catch_0
    move-exception v0

    .line 964
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 967
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 897
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 902
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 904
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 909
    :goto_0
    return v1

    .line 905
    :catch_0
    move-exception v0

    .line 906
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 909
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1131
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1136
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1138
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1143
    :goto_0
    return v1

    .line 1139
    :catch_0
    move-exception v0

    .line 1140
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1143
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumNumeric(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1014
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1019
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1021
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1026
    :goto_0
    return v1

    .line 1022
    :catch_0
    move-exception v0

    .line 1023
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1026
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumSymbols(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1072
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1077
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1079
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1084
    :goto_0
    return v1

    .line 1080
    :catch_0
    move-exception v0

    .line 1081
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1084
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 836
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 841
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 843
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 848
    :goto_0
    return v1

    .line 844
    :catch_0
    move-exception v0

    .line 845
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 848
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPasswordQuality(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 722
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getPasswordQuality(Landroid/content/ComponentName;I)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 727
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 729
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 734
    :goto_0
    return v1

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 734
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPermittedAccessibilityServices(I)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2922
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2924
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getPermittedAccessibilityServicesForUser(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2929
    :goto_0
    return-object v1

    .line 2925
    :catch_0
    move-exception v0

    .line 2926
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2929
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2898
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2900
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2905
    :goto_0
    return-object v1

    .line 2901
    :catch_0
    move-exception v0

    .line 2902
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2905
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPermittedInputMethods(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2977
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2979
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getPermittedInputMethods(Landroid/content/ComponentName;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2984
    :goto_0
    return-object v1

    .line 2980
    :catch_0
    move-exception v0

    .line 2981
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2984
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPermittedInputMethodsForCurrentUser()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3000
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 3002
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3007
    :goto_0
    return-object v1

    .line 3003
    :catch_0
    move-exception v0

    .line 3004
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3007
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProfileOwner()Landroid/content/ComponentName;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2554
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getProfileOwnerAsUser(I)Landroid/content/ComponentName;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2562
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2564
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwner(I)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2571
    :goto_0
    return-object v1

    .line 2565
    :catch_0
    move-exception v0

    .line 2566
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get profile owner"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Requested profile owner for invalid userId"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2571
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProfileOwnerName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2581
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2583
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2590
    :goto_0
    return-object v1

    .line 2584
    :catch_0
    move-exception v0

    .line 2585
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get profile owner"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Requested profile owner for invalid userId"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2590
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProfileOwnerNameAsUser(I)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2602
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2604
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2611
    :goto_0
    return-object v1

    .line 2605
    :catch_0
    move-exception v0

    .line 2606
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get profile owner"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2607
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Requested profile owner for invalid userId"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2611
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProfileWithMinimumFailedPasswordsForWipe(I)I
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 1386
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1388
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1393
    :goto_0
    return v1

    .line 1389
    :catch_0
    move-exception v0

    .line 1390
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1393
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/16 v1, -0x2710

    goto :goto_0
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "result"    # Landroid/os/RemoteCallback;

    .prologue
    .line 2201
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2203
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2208
    :cond_0
    :goto_0
    return-void

    .line 2204
    :catch_0
    move-exception v0

    .line 2205
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getScreenCaptureDisabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2047
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2052
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2054
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2059
    :goto_0
    return v1

    .line 2055
    :catch_0
    move-exception v0

    .line 2056
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2059
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStorageEncryption(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1790
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1792
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1797
    :goto_0
    return v1

    .line 1793
    :catch_0
    move-exception v0

    .line 1794
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1797
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStorageEncryptionStatus()I
    .locals 1

    .prologue
    .line 1817
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus(I)I

    move-result v0

    return v0
.end method

.method public getStorageEncryptionStatus(I)I
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 1822
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1824
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getStorageEncryptionStatus(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1829
    :goto_0
    return v1

    .line 1825
    :catch_0
    move-exception v0

    .line 1826
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1829
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "agent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2745
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2751
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2753
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2758
    :goto_0
    return-object v1

    .line 2754
    :catch_0
    move-exception v0

    .line 2755
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2758
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public hasCaCertInstalled(Landroid/content/ComponentName;[B)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "certBuffer"    # [B

    .prologue
    const/4 v2, 0x0

    .line 1924
    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_0

    .line 1926
    :try_start_0
    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v3, p1}, Landroid/app/admin/IDevicePolicyManager;->enforceCanManageCaCerts(Landroid/content/ComponentName;)V

    .line 1927
    invoke-static {p2}, Landroid/app/admin/DevicePolicyManager;->getCaCertAlias([B)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1934
    :cond_0
    :goto_0
    return v2

    .line 1928
    :catch_0
    move-exception v1

    .line 1929
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v3, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with device policy service"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1930
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1931
    .local v0, "ce":Ljava/security/cert/CertificateException;
    sget-object v3, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v4, "Could not parse certificate"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "usesPolicy"    # I

    .prologue
    .line 595
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 597
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 602
    :goto_0
    return v1

    .line 598
    :catch_0
    move-exception v0

    .line 599
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 602
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasUserSetupCompleted()Z
    .locals 3

    .prologue
    .line 2424
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2426
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->hasUserSetupCompleted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2431
    :goto_0
    return v1

    .line 2427
    :catch_0
    move-exception v0

    .line 2428
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to check if user setup has completed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public installCaCert(Landroid/content/ComponentName;[B)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "certBuffer"    # [B

    .prologue
    .line 1842
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1844
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->installCaCert(Landroid/content/ComponentName;[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1849
    :goto_0
    return v1

    .line 1845
    :catch_0
    move-exception v0

    .line 1846
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1849
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public installKeyPair(Landroid/content/ComponentName;Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Ljava/lang/String;)Z
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "privKey"    # Ljava/security/PrivateKey;
    .param p3, "cert"    # Ljava/security/cert/Certificate;
    .param p4, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1951
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/security/cert/Certificate;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-static {v3}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v1

    .line 1952
    .local v1, "pemCert":[B
    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {p2}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v4

    invoke-interface {v3, p1, v4, v1, p4}, Landroid/app/admin/IDevicePolicyManager;->installKeyPair(Landroid/content/ComponentName;[B[BLjava/lang/String;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    .line 1960
    .end local v1    # "pemCert":[B
    :goto_0
    return v2

    .line 1953
    :catch_0
    move-exception v0

    .line 1954
    .local v0, "e":Ljava/security/cert/CertificateException;
    sget-object v3, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v4, "Error encoding certificate"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1955
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v0

    .line 1956
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v4, "Error writing certificate"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1957
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 1958
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with device policy service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isActivePasswordSufficient()Z
    .locals 3

    .prologue
    .line 1297
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1299
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/app/admin/IDevicePolicyManager;->isActivePasswordSufficient(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1304
    :goto_0
    return v1

    .line 1300
    :catch_0
    move-exception v0

    .line 1301
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1304
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAdminActive(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 495
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->isAdminActiveAsUser(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isAdminActiveAsUser(Landroid/content/ComponentName;I)Z
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    .line 503
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 505
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 510
    :goto_0
    return v1

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 510
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3198
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 3200
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3205
    :goto_0
    return v1

    .line 3201
    :catch_0
    move-exception v0

    .line 3202
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3205
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDeviceOwner(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2320
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDeviceOwnerApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2305
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2307
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->isDeviceOwner(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2312
    :goto_0
    return v1

    .line 2308
    :catch_0
    move-exception v0

    .line 2309
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to check device owner"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLockTaskPermitted(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 3349
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 3351
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->isLockTaskPermitted(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3356
    :goto_0
    return v1

    .line 3352
    :catch_0
    move-exception v0

    .line 3353
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3356
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMasterVolumeMuted(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 3462
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 3464
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->isMasterVolumeMuted(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3469
    :goto_0
    return v1

    .line 3465
    :catch_0
    move-exception v0

    .line 3466
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get isMasterMute on device policy service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3469
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isProfileOwnerApp(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2533
    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_0

    .line 2535
    :try_start_0
    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 2537
    .local v0, "profileOwner":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2543
    .end local v0    # "profileOwner":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    return v2

    .line 2539
    :catch_0
    move-exception v1

    .line 2540
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v3, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed to check profile owner"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isRemovingAdmin(Landroid/content/ComponentName;I)Z
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    .line 518
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 520
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->isRemovingAdmin(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 525
    :goto_0
    return v1

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 525
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3501
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 3503
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3508
    :goto_0
    return v1

    .line 3504
    :catch_0
    move-exception v0

    .line 3505
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call block uninstall on device policy service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3508
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public lockNow()V
    .locals 3

    .prologue
    .line 1496
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1498
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->lockNow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1503
    :cond_0
    :goto_0
    return-void

    .line 1499
    :catch_0
    move-exception v0

    .line 1500
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 559
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 561
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 566
    :goto_0
    return v1

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 566
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 576
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 578
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3558
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 3560
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3565
    :goto_0
    return v1

    .line 3561
    :catch_0
    move-exception v0

    .line 3562
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Error calling removeCrossProfileWidgetProvider"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3565
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 3075
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3078
    :goto_0
    return v1

    .line 3076
    :catch_0
    move-exception v0

    .line 3077
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not remove user "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3078
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reportFailedPasswordAttempt(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 2229
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2231
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->reportFailedPasswordAttempt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2236
    :cond_0
    :goto_0
    return-void

    .line 2232
    :catch_0
    move-exception v0

    .line 2233
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 2242
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2244
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->reportSuccessfulPasswordAttempt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2249
    :cond_0
    :goto_0
    return-void

    .line 2245
    :catch_0
    move-exception v0

    .line 2246
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resetPassword(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 1430
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1432
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->resetPassword(Ljava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1437
    :goto_0
    return v1

    .line 1433
    :catch_0
    move-exception v0

    .line 1434
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1437
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "disabled"    # Z

    .prologue
    .line 3262
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 3264
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3269
    :cond_0
    :goto_0
    return-void

    .line 3265
    :catch_0
    move-exception v0

    .line 3266
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;Z)V
    .locals 1
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z

    .prologue
    .line 2166
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 2167
    return-void
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;ZI)V
    .locals 3
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 2153
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2155
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2160
    :cond_0
    :goto_0
    return-void

    .line 2156
    :catch_0
    move-exception v0

    .line 2157
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActivePasswordState(IIIIIIIII)V
    .locals 11
    .param p1, "quality"    # I
    .param p2, "length"    # I
    .param p3, "letters"    # I
    .param p4, "uppercase"    # I
    .param p5, "lowercase"    # I
    .param p6, "numbers"    # I
    .param p7, "symbols"    # I
    .param p8, "nonletter"    # I
    .param p9, "userHandle"    # I

    .prologue
    .line 2215
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 2217
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Landroid/app/admin/IDevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2223
    :cond_0
    :goto_0
    return-void

    .line 2219
    :catch_0
    move-exception v10

    .line 2220
    .local v10, "e":Landroid/os/RemoteException;
    sget-object v0, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with device policy service"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActiveProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2386
    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_0

    .line 2388
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 2389
    .local v0, "myUserId":I
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, v0}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 2390
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v2, p1, p2, v0}, Landroid/app/admin/IDevicePolicyManager;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2396
    .end local v0    # "myUserId":I
    :cond_0
    return v2

    .line 2391
    :catch_0
    move-exception v1

    .line 2392
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set profile owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2393
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Couldn\'t set profile owner."

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "hidden"    # Z

    .prologue
    .line 3180
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 3182
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3187
    :goto_0
    return v1

    .line 3183
    :catch_0
    move-exception v0

    .line 3184
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3187
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "settings"    # Landroid/os/Bundle;

    .prologue
    .line 2689
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2691
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2696
    :cond_0
    :goto_0
    return-void

    .line 2692
    :catch_0
    move-exception v0

    .line 2693
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAutoTimeRequired(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "required"    # Z

    .prologue
    .line 2075
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2077
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2, p2}, Landroid/app/admin/IDevicePolicyManager;->setAutoTimeRequired(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2082
    :cond_0
    :goto_0
    return-void

    .line 2078
    :catch_0
    move-exception v0

    .line 2079
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCameraDisabled(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .prologue
    .line 1987
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1989
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setCameraDisabled(Landroid/content/ComponentName;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1994
    :cond_0
    :goto_0
    return-void

    .line 1990
    :catch_0
    move-exception v0

    .line 1991
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .prologue
    .line 2772
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2774
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2779
    :cond_0
    :goto_0
    return-void

    .line 2775
    :catch_0
    move-exception v0

    .line 2776
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDeviceOwner(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2264
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ownerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2281
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2283
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2288
    :goto_0
    return v1

    .line 2284
    :catch_0
    move-exception v0

    .line 2285
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to set device owner"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setGlobalProxy(Landroid/content/ComponentName;Ljava/net/Proxy;Ljava/util/List;)Landroid/content/ComponentName;
    .locals 13
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "proxySpec"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/net/Proxy;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .prologue
    .line 1567
    .local p3, "exclusionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 1568
    new-instance v11, Ljava/lang/NullPointerException;

    invoke-direct {v11}, Ljava/lang/NullPointerException;-><init>()V

    throw v11

    .line 1570
    :cond_0
    iget-object v11, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v11, :cond_3

    .line 1574
    :try_start_0
    sget-object v11, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {p2, v11}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1575
    const/4 v6, 0x0

    .line 1576
    .local v6, "hostSpec":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1606
    .local v2, "exclSpec":Ljava/lang/String;
    :cond_1
    iget-object v11, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    invoke-interface {v11, p1, v6, v2, v12}, Landroid/app/admin/IDevicePolicyManager;->setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v11

    .line 1611
    .end local v2    # "exclSpec":Ljava/lang/String;
    .end local v6    # "hostSpec":Ljava/lang/String;
    :goto_0
    return-object v11

    .line 1578
    :cond_2
    invoke-virtual {p2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v11

    sget-object v12, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-virtual {v11, v12}, Ljava/net/Proxy$Type;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 1579
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v11
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1607
    :catch_0
    move-exception v0

    .line 1608
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v11, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v12, "Failed talking with device policy service"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1611
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 1581
    :cond_4
    :try_start_1
    invoke-virtual {p2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v10

    check-cast v10, Ljava/net/InetSocketAddress;

    .line 1582
    .local v10, "sa":Ljava/net/InetSocketAddress;
    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    .line 1583
    .local v5, "hostName":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v9

    .line 1584
    .local v9, "port":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1585
    .local v4, "hostBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1587
    .restart local v6    # "hostSpec":Ljava/lang/String;
    if-nez p3, :cond_5

    .line 1588
    const-string v2, ""

    .line 1602
    .restart local v2    # "exclSpec":Ljava/lang/String;
    :goto_1
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11, v2}, Landroid/net/Proxy;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_1

    .line 1604
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v11

    .line 1590
    .end local v2    # "exclSpec":Ljava/lang/String;
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1591
    .local v8, "listBuilder":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .line 1592
    .local v3, "firstDomain":Z
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1593
    .local v1, "exclDomain":Ljava/lang/String;
    if-nez v3, :cond_6

    .line 1594
    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1598
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1599
    goto :goto_2

    .line 1596
    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    .line 1600
    .end local v1    # "exclDomain":Ljava/lang/String;
    :cond_7
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .restart local v2    # "exclSpec":Ljava/lang/String;
    goto :goto_1
.end method

.method public setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 3382
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 3384
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3389
    :cond_0
    :goto_0
    return-void

    .line 3385
    :catch_0
    move-exception v0

    .line 3386
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setKeyguardDisabledFeatures(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "which"    # I

    .prologue
    .line 2116
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2118
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setKeyguardDisabledFeatures(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2123
    :cond_0
    :goto_0
    return-void

    .line 2119
    :catch_0
    move-exception v0

    .line 2120
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 3317
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 3319
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3324
    :cond_0
    :goto_0
    return-void

    .line 3320
    :catch_0
    move-exception v0

    .line 3321
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMasterVolumeMuted(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "on"    # Z

    .prologue
    .line 3446
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 3448
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMasterVolumeMuted(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3453
    :cond_0
    :goto_0
    return-void

    .line 3449
    :catch_0
    move-exception v0

    .line 3450
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to setMasterMute on device policy service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "num"    # I

    .prologue
    .line 1346
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1348
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1353
    :cond_0
    :goto_0
    return-void

    .line 1349
    :catch_0
    move-exception v0

    .line 1350
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMaximumTimeToLock(Landroid/content/ComponentName;J)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "timeMs"    # J

    .prologue
    .line 1454
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1456
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Landroid/app/admin/IDevicePolicyManager;->setMaximumTimeToLock(Landroid/content/ComponentName;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1461
    :cond_0
    :goto_0
    return-void

    .line 1457
    :catch_0
    move-exception v0

    .line 1458
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "timeout"    # J

    .prologue
    .line 1201
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1203
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordExpirationTimeout(Landroid/content/ComponentName;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1208
    :cond_0
    :goto_0
    return-void

    .line 1204
    :catch_0
    move-exception v0

    .line 1205
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPasswordHistoryLength(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    .prologue
    .line 1169
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1171
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordHistoryLength(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1176
    :cond_0
    :goto_0
    return-void

    .line 1172
    :catch_0
    move-exception v0

    .line 1173
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPasswordMinimumLength(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    .prologue
    .line 759
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 761
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 762
    :catch_0
    move-exception v0

    .line 763
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPasswordMinimumLetters(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    .prologue
    .line 934
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 936
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLetters(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 941
    :cond_0
    :goto_0
    return-void

    .line 937
    :catch_0
    move-exception v0

    .line 938
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    .prologue
    .line 874
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 876
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    :cond_0
    :goto_0
    return-void

    .line 877
    :catch_0
    move-exception v0

    .line 878
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    .prologue
    .line 1109
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1111
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1116
    :cond_0
    :goto_0
    return-void

    .line 1112
    :catch_0
    move-exception v0

    .line 1113
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPasswordMinimumNumeric(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    .prologue
    .line 992
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 994
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNumeric(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 999
    :cond_0
    :goto_0
    return-void

    .line 995
    :catch_0
    move-exception v0

    .line 996
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPasswordMinimumSymbols(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    .prologue
    .line 1051
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1053
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumSymbols(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1058
    :cond_0
    :goto_0
    return-void

    .line 1054
    :catch_0
    move-exception v0

    .line 1055
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    .prologue
    .line 813
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 815
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 820
    :cond_0
    :goto_0
    return-void

    .line 816
    :catch_0
    move-exception v0

    .line 817
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPasswordQuality(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "quality"    # I

    .prologue
    .line 706
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 708
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordQuality(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 709
    :catch_0
    move-exception v0

    .line 710
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2878
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2880
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2885
    :goto_0
    return v1

    .line 2881
    :catch_0
    move-exception v0

    .line 2882
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2885
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2956
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2958
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2963
    :goto_0
    return v1

    .line 2959
    :catch_0
    move-exception v0

    .line 2960
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2963
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setProfileEnabled(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2495
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2497
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->setProfileEnabled(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2502
    :cond_0
    :goto_0
    return-void

    .line 2498
    :catch_0
    move-exception v0

    .line 2499
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 2515
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2517
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2522
    :cond_0
    :goto_0
    return-void

    .line 2518
    :catch_0
    move-exception v0

    .line 2519
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2469
    if-nez p1, :cond_0

    .line 2470
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "admin cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2472
    :cond_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_2

    .line 2474
    if-nez p2, :cond_1

    .line 2475
    :try_start_0
    const-string p2, ""

    .line 2477
    :cond_1
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2483
    :goto_0
    return v1

    .line 2478
    :catch_0
    move-exception v0

    .line 2479
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to set profile owner"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2480
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Couldn\'t set profile owner."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2483
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setProfileOwner(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2449
    if-nez p1, :cond_0

    .line 2450
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "packageName cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2452
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/admin/DevicePolicyManager;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "proxyInfo"    # Landroid/net/ProxyInfo;

    .prologue
    .line 1631
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1633
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1638
    :cond_0
    :goto_0
    return-void

    .line 1634
    :catch_0
    move-exception v0

    .line 1635
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 3430
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 3432
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3437
    :cond_0
    :goto_0
    return-void

    .line 3433
    :catch_0
    move-exception v0

    .line 3434
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to set permission provider on device policy service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setScreenCaptureDisabled(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .prologue
    .line 2031
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2033
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2, p2}, Landroid/app/admin/IDevicePolicyManager;->setScreenCaptureDisabled(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2038
    :cond_0
    :goto_0
    return-void

    .line 2034
    :catch_0
    move-exception v0

    .line 2035
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 3410
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 3412
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3417
    :cond_0
    :goto_0
    return-void

    .line 3413
    :catch_0
    move-exception v0

    .line 3414
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setStorageEncryption(Landroid/content/ComponentName;Z)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "encrypt"    # Z

    .prologue
    .line 1770
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1772
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->setStorageEncryption(Landroid/content/ComponentName;ZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1777
    :goto_0
    return v1

    .line 1773
    :catch_0
    move-exception v0

    .line 1774
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1777
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "target"    # Landroid/content/ComponentName;
    .param p3, "configuration"    # Landroid/os/PersistableBundle;

    .prologue
    .line 2719
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 2721
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Landroid/app/admin/IDevicePolicyManager;->setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2727
    :cond_0
    :goto_0
    return-void

    .line 2723
    :catch_0
    move-exception v0

    .line 2724
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uninstallBlocked"    # Z

    .prologue
    .line 3482
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 3484
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3489
    :cond_0
    :goto_0
    return-void

    .line 3485
    :catch_0
    move-exception v0

    .line 3486
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call block uninstall on device policy service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 3093
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3096
    :goto_0
    return v1

    .line 3094
    :catch_0
    move-exception v0

    .line 3095
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not switch user "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3096
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public uninstallAllUserCaCerts(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1906
    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_0

    .line 1907
    new-instance v3, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    invoke-virtual {v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;->userAliases()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1909
    .local v0, "alias":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v3, p1, v0}, Landroid/app/admin/IDevicePolicyManager;->uninstallCaCert(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1910
    :catch_0
    move-exception v2

    .line 1911
    .local v2, "re":Landroid/os/RemoteException;
    sget-object v3, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with device policy service"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1915
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public uninstallCaCert(Landroid/content/ComponentName;[B)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "certBuffer"    # [B

    .prologue
    .line 1859
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v2, :cond_0

    .line 1861
    :try_start_0
    invoke-static {p2}, Landroid/app/admin/DevicePolicyManager;->getCaCertAlias([B)Ljava/lang/String;

    move-result-object v0

    .line 1862
    .local v0, "alias":Ljava/lang/String;
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v2, p1, v0}, Landroid/app/admin/IDevicePolicyManager;->uninstallCaCert(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1869
    .end local v0    # "alias":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1863
    :catch_0
    move-exception v1

    .line 1864
    .local v1, "e":Ljava/security/cert/CertificateException;
    sget-object v2, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Unable to parse certificate"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1865
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v1

    .line 1866
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public wipeData(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 1533
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1535
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->wipeData(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1540
    :cond_0
    :goto_0
    return-void

    .line 1536
    :catch_0
    move-exception v0

    .line 1537
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
