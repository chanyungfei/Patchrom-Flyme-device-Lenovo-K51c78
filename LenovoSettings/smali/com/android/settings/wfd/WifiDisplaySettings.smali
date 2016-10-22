.class public final Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;,
        Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;,
        Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$RoutePreference;
    }
.end annotation


# static fields
.field private static final CHANGE_ALL:I = -0x1

.field private static final CHANGE_ROUTES:I = 0x2

.field private static final CHANGE_SETTINGS:I = 0x1

.field private static final CHANGE_WIFI_DISPLAY_STATUS:I = 0x4

.field private static final DEBUG:Z = false

.field private static final MENU_ID_ENABLE_WIFI_DISPLAY:I = 0x1

.field private static final ORDER_AVAILABLE:I = 0x3

.field private static final ORDER_CERTIFICATION:I = 0x1

.field private static final ORDER_CONNECTED:I = 0x2

.field private static final ORDER_UNAVAILABLE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiDisplaySettings"


# instance fields
.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAutoGO:Z

.field private mCertCategory:Landroid/preference/PreferenceGroup;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEmptyView:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mIsTablet:Z

.field private mListen:Z

.field private mListenChannel:I

.field private mOperatingChannel:I

.field private mPendingChanges:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRouter:Landroid/media/MediaRouter;

.field private final mRouterCallback:Landroid/media/MediaRouter$Callback;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mStarted:Z

.field private mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

.field private final mSwitchOnCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field private mWifiDisplayCertificationOn:Z

.field private mWifiDisplayOnSetting:Z

.field private mWifiDisplayOptionsDialog:Landroid/app/AlertDialog;

.field private mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

.field private mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWpsConfig:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayOptionsDialog:Landroid/app/AlertDialog;

    .line 140
    const/4 v0, 0x4

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWpsConfig:I

    .line 775
    new-instance v0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$13;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$13;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 784
    new-instance v0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$14;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$14;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mSwitchOnCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 796
    new-instance v0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$15;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$15;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 806
    new-instance v0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$16;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$16;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 813
    new-instance v0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$17;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$17;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    .line 157
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    .line 158
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)Landroid/hardware/display/DisplayManager;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mListen:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    .prologue
    .line 102
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mPendingChanges:I

    return v0
.end method

.method static synthetic access$1002(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mPendingChanges:I

    return p1
.end method

.method static synthetic access$102(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mListen:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->update(I)V

    return-void
.end method

.method static synthetic access$1202(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->toggleRoute(Landroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->showWifiDisplayOptionsDialog(Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->pairWifiDisplay(Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->setListenMode(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mAutoGO:Z

    return v0
.end method

.method static synthetic access$302(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mAutoGO:Z

    return p1
.end method

.method static synthetic access$400(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->startAutoGO()V

    return-void
.end method

.method static synthetic access$500(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->stopAutoGO()V

    return-void
.end method

.method static synthetic access$600(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    .prologue
    .line 102
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWpsConfig:I

    return v0
.end method

.method static synthetic access$602(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWpsConfig:I

    return p1
.end method

.method static synthetic access$700(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    .prologue
    .line 102
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mListenChannel:I

    return v0
.end method

.method static synthetic access$702(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mListenChannel:I

    return p1
.end method

.method static synthetic access$800(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    .prologue
    .line 102
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mOperatingChannel:I

    return v0
.end method

.method static synthetic access$802(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mOperatingChannel:I

    return p1
.end method

.method static synthetic access$900(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;II)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->setWifiP2pChannels(II)V

    return-void
.end method

.method private buildCertificationMenu(Landroid/preference/PreferenceScreen;)V
    .locals 12
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 468
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    if-nez v9, :cond_1

    .line 469
    new-instance v9, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    .line 470
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    const v10, 0x7f0c0600

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 471
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->setOrder(I)V

    .line 475
    :goto_0
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {p1, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 478
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplaySessionInfo;->getGroupId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 479
    new-instance v6, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 480
    .local v6, "p":Landroid/preference/Preference;
    const v9, 0x7f0c0601

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setTitle(I)V

    .line 481
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplaySessionInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 485
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplaySessionInfo;->getSessionId()I

    move-result v9

    if-eqz v9, :cond_0

    .line 486
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    new-instance v10, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$1;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, p0, v11}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$1;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 523
    .end local v6    # "p":Landroid/preference/Preference;
    :cond_0
    new-instance v0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$2;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v0, p0, v9}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$2;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 531
    .local v0, "cbp":Landroid/preference/CheckBoxPreference;
    const v9, 0x7f0c0602

    invoke-virtual {v0, v9}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 532
    iget-boolean v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mListen:Z

    invoke-virtual {v0, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 533
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 536
    new-instance v0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$3;

    .end local v0    # "cbp":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v0, p0, v9}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$3;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 548
    .restart local v0    # "cbp":Landroid/preference/CheckBoxPreference;
    const v9, 0x7f0c0603

    invoke-virtual {v0, v9}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 549
    iget-boolean v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mAutoGO:Z

    invoke-virtual {v0, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 550
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 553
    new-instance v3, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$4;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v3, p0, v9}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$4;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 566
    .local v3, "lp":Landroid/preference/ListPreference;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_display_wps_config"

    const/4 v11, 0x4

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWpsConfig:I

    .line 568
    const/4 v9, 0x4

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "Default"

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-string v10, "PBC"

    aput-object v10, v7, v9

    const/4 v9, 0x2

    const-string v10, "KEYPAD"

    aput-object v10, v7, v9

    const/4 v9, 0x3

    const-string v10, "DISPLAY"

    aput-object v10, v7, v9

    .line 569
    .local v7, "wpsEntries":[Ljava/lang/String;
    const/4 v9, 0x4

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "4"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "0"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "2"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string v10, "1"

    aput-object v10, v8, v9

    .line 574
    .local v8, "wpsValues":[Ljava/lang/String;
    const v9, 0x7f0c0606

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 575
    invoke-virtual {v3, v7}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 576
    invoke-virtual {v3, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 577
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWpsConfig:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 578
    const-string v9, "%1$s"

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 579
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 582
    new-instance v3, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$5;

    .end local v3    # "lp":Landroid/preference/ListPreference;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v3, p0, v9}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$5;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 594
    .restart local v3    # "lp":Landroid/preference/ListPreference;
    const/4 v9, 0x4

    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "Auto"

    aput-object v10, v1, v9

    const/4 v9, 0x1

    const-string v10, "1"

    aput-object v10, v1, v9

    const/4 v9, 0x2

    const-string v10, "6"

    aput-object v10, v1, v9

    const/4 v9, 0x3

    const-string v10, "11"

    aput-object v10, v1, v9

    .line 595
    .local v1, "lcEntries":[Ljava/lang/String;
    const/4 v9, 0x4

    new-array v2, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "0"

    aput-object v10, v2, v9

    const/4 v9, 0x1

    const-string v10, "1"

    aput-object v10, v2, v9

    const/4 v9, 0x2

    const-string v10, "6"

    aput-object v10, v2, v9

    const/4 v9, 0x3

    const-string v10, "11"

    aput-object v10, v2, v9

    .line 596
    .local v2, "lcValues":[Ljava/lang/String;
    const v9, 0x7f0c0607

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 597
    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 598
    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 599
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mListenChannel:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 600
    const-string v9, "%1$s"

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 601
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 604
    new-instance v3, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$6;

    .end local v3    # "lp":Landroid/preference/ListPreference;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v3, p0, v9}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$6;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 616
    .restart local v3    # "lp":Landroid/preference/ListPreference;
    const/4 v9, 0x5

    new-array v4, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "Auto"

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const-string v10, "1"

    aput-object v10, v4, v9

    const/4 v9, 0x2

    const-string v10, "6"

    aput-object v10, v4, v9

    const/4 v9, 0x3

    const-string v10, "11"

    aput-object v10, v4, v9

    const/4 v9, 0x4

    const-string v10, "36"

    aput-object v10, v4, v9

    .line 617
    .local v4, "ocEntries":[Ljava/lang/String;
    const/4 v9, 0x5

    new-array v5, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "0"

    aput-object v10, v5, v9

    const/4 v9, 0x1

    const-string v10, "1"

    aput-object v10, v5, v9

    const/4 v9, 0x2

    const-string v10, "6"

    aput-object v10, v5, v9

    const/4 v9, 0x3

    const-string v10, "11"

    aput-object v10, v5, v9

    const/4 v9, 0x4

    const-string v10, "36"

    aput-object v10, v5, v9

    .line 618
    .local v5, "ocValues":[Ljava/lang/String;
    const v9, 0x7f0c0608

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 619
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 620
    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 621
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mOperatingChannel:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 622
    const-string v9, "%1$s"

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 623
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 624
    return-void

    .line 473
    .end local v0    # "cbp":Landroid/preference/CheckBoxPreference;
    .end local v1    # "lcEntries":[Ljava/lang/String;
    .end local v2    # "lcValues":[Ljava/lang/String;
    .end local v3    # "lp":Landroid/preference/ListPreference;
    .end local v4    # "ocEntries":[Ljava/lang/String;
    .end local v5    # "ocValues":[Ljava/lang/String;
    .end local v7    # "wpsEntries":[Ljava/lang/String;
    .end local v8    # "wpsValues":[Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_0
.end method

.method private createRoutePreference(Landroid/media/MediaRouter$RouteInfo;)Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$RoutePreference;
    .locals 3
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 448
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->findWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 449
    .local v0, "display":Landroid/hardware/display/WifiDisplay;
    if-eqz v0, :cond_0

    .line 450
    new-instance v1, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;Landroid/hardware/display/WifiDisplay;)V

    .line 452
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$RoutePreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$RoutePreference;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0
.end method

.method private findWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;
    .locals 5
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 457
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    .line 458
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .local v0, "arr$":[Landroid/hardware/display/WifiDisplay;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 459
    .local v1, "display":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 464
    .end local v0    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .end local v1    # "display":Landroid/hardware/display/WifiDisplay;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :goto_1
    return-object v1

    .line 458
    .restart local v0    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .restart local v1    # "display":Landroid/hardware/display/WifiDisplay;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 464
    .end local v0    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .end local v1    # "display":Landroid/hardware/display/WifiDisplay;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private pairWifiDisplay(Landroid/hardware/display/WifiDisplay;)V
    .locals 2
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 722
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    .line 725
    :cond_0
    return-void
.end method

.method private scheduleUpdate(I)V
    .locals 2
    .param p1, "changes"    # I

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mStarted:Z

    if-eqz v0, :cond_1

    .line 339
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mPendingChanges:I

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 342
    :cond_0
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mPendingChanges:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mPendingChanges:I

    .line 344
    :cond_1
    return-void
.end method

.method private setListenMode(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 668
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$9;

    invoke-direct {v2, p0, p1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$9;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Z)V

    invoke-virtual {v0, v1, p1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->listen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 683
    return-void
.end method

.method private setWifiP2pChannels(II)V
    .locals 3
    .param p1, "lc"    # I
    .param p2, "oc"    # I

    .prologue
    .line 689
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$10;

    invoke-direct {v2, p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$10;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->setWifiP2pChannels(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 703
    return-void
.end method

.method private showWifiDisplayOptionsDialog(Landroid/hardware/display/WifiDisplay;)V
    .locals 9
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 728
    const-string v6, "WifiDisplaySettings"

    const-string v7, "showWifiDisplayOptionsDialog"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayOptionsDialog:Landroid/app/AlertDialog;

    if-nez v6, :cond_0

    .line 730
    const-string v6, "WifiDisplaySettings"

    const-string v7, "showWifiDisplayOptionsDialog mWifiDisplayOptionsDialog == null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0400cd

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 732
    .local v4, "view":Landroid/view/View;
    const v6, 0x7f0b0091

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 733
    .local v3, "nameEditText":Landroid/widget/EditText;
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 734
    .local v5, "wifiDisplayDeviceName":Ljava/lang/String;
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 735
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 737
    new-instance v1, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$11;

    invoke-direct {v1, p0, v3, p1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$11;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/hardware/display/WifiDisplay;)V

    .line 748
    .local v1, "done":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$12;

    invoke-direct {v2, p0, p1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$12;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    .line 756
    .local v2, "forget":Landroid/content/DialogInterface$OnClickListener;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0c05fc

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0c05fe

    invoke-virtual {v6, v7, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0c05fd

    invoke-virtual {v6, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 762
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayOptionsDialog:Landroid/app/AlertDialog;

    .line 763
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 765
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "done":Landroid/content/DialogInterface$OnClickListener;
    .end local v2    # "forget":Landroid/content/DialogInterface$OnClickListener;
    .end local v3    # "nameEditText":Landroid/widget/EditText;
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "wifiDisplayDeviceName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private startAutoGO()V
    .locals 3

    .prologue
    .line 630
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$7;

    invoke-direct {v2, p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$7;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 643
    return-void
.end method

.method private stopAutoGO()V
    .locals 3

    .prologue
    .line 649
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$8;

    invoke-direct {v2, p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$8;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 662
    return-void
.end method

.method private toggleRoute(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 4
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 707
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result v0

    .line 708
    .local v0, "state":I
    const-string v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current route status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 714
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/internal/app/MediaRouteDialogPresenter;->showDialogFragment(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/app/DialogFragment;

    .line 719
    :goto_0
    return-void

    .line 717
    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->select()V

    goto :goto_0
.end method

.method private unscheduleUpdate()V
    .locals 2

    .prologue
    .line 347
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mPendingChanges:I

    if-eqz v0, :cond_0

    .line 348
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mPendingChanges:I

    .line 349
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 351
    :cond_0
    return-void
.end method

.method private update(I)V
    .locals 15
    .param p1, "changes"    # I

    .prologue
    .line 359
    const/4 v5, 0x0

    .line 362
    .local v5, "invalidateOptions":Z
    and-int/lit8 v11, p1, 0x1

    if-eqz v11, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wifi_display_on"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    :goto_0
    iput-boolean v11, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 365
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wifi_display_certification_on"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    :goto_1
    iput-boolean v11, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayCertificationOn:Z

    .line 367
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wifi_display_wps_config"

    const/4 v13, 0x4

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWpsConfig:I

    .line 371
    const/4 v5, 0x1

    .line 375
    :cond_0
    and-int/lit8 v11, p1, 0x4

    if-eqz v11, :cond_1

    .line 376
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v11}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v11

    iput-object v11, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 379
    const/4 v5, 0x1

    .line 383
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 384
    .local v8, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 387
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v11}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v10

    .line 388
    .local v10, "routeCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v10, :cond_5

    .line 389
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v11, v3}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v9

    .line 390
    .local v9, "route":Landroid/media/MediaRouter$RouteInfo;
    const/4 v11, 0x4

    invoke-virtual {v9, v11}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 391
    invoke-direct {p0, v9}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->createRoutePreference(Landroid/media/MediaRouter$RouteInfo;)Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$RoutePreference;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 388
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 363
    .end local v3    # "i":I
    .end local v8    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    .end local v9    # "route":Landroid/media/MediaRouter$RouteInfo;
    .end local v10    # "routeCount":I
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 365
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 396
    .restart local v3    # "i":I
    .restart local v8    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    .restart local v10    # "routeCount":I
    :cond_5
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v11}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_8

    .line 399
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v11}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .local v0, "arr$":[Landroid/hardware/display/WifiDisplay;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_3
    if-ge v4, v6, :cond_7

    aget-object v2, v0, v4

    .line 400
    .local v2, "display":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->isRemembered()Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v11}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 402
    new-instance v11, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v11, p0, v12, v2}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/WifiDisplay;)V

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 399
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 408
    .end local v2    # "display":Landroid/hardware/display/WifiDisplay;
    :cond_7
    iget-boolean v11, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayCertificationOn:Z

    if-eqz v11, :cond_8

    .line 409
    invoke-direct {p0, v8}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->buildCertificationMenu(Landroid/preference/PreferenceScreen;)V

    .line 414
    .end local v0    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    :cond_8
    if-eqz v5, :cond_9

    .line 415
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 420
    :cond_9
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080074

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 422
    .local v7, "padding":I
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 423
    .local v1, "config":Landroid/content/res/Configuration;
    iget v11, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_a

    div-int/lit8 v7, v7, 0x2

    .line 425
    :cond_a
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 426
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-direct {v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wifi_display_on"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_c

    .line 430
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    const v12, 0x7f0c05f6

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 431
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    const/16 v12, 0x18

    const/16 v13, 0x18

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v7, v13, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 441
    :goto_4
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    if-eqz v11, :cond_b

    .line 442
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    iget-boolean v12, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    invoke-virtual {v11, v12}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->setChecked(Z)V

    .line 445
    :cond_b
    return-void

    .line 433
    :cond_c
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    const v12, 0x7f0c01db

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 434
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v7, v13, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_4
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 196
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 199
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 200
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 202
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    .line 206
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 208
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 210
    .local v1, "padding":I
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 211
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mSwitchOnCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 213
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->update(I)V

    .line 215
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v2

    if-nez v2, :cond_0

    .line 216
    const-string v2, "WifiDisplaySettings"

    const-string v3, "Wfd is unavailable, finish the activity"

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getSwitchBar()Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    .line 221
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v2, p0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 222
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->show()V

    .line 224
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 354
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 355
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->update(I)V

    .line 356
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 162
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 172
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 173
    .local v0, "context":Landroid/content/Context;
    const-string v1, "media_router"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    .line 174
    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 175
    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 176
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 178
    const v1, 0x7f06004d

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->addPreferencesFromResource(I)V

    .line 179
    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->setHasOptionsMenu(Z)V

    .line 181
    const-string v1, "tablet"

    const-string v2, "ro.build.characteristics"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    iput-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mIsTablet:Z

    .line 187
    :goto_0
    return-void

    .line 184
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mIsTablet:Z

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 300
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 316
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 231
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->hide()V

    .line 233
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onDestroyView()V

    .line 234
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 769
    const-string v0, "WifiDisplaySettings"

    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayOptionsDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 771
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayOptionsDialog:Landroid/app/AlertDialog;

    .line 773
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 320
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 332
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 322
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 323
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 324
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_display_on"

    iget-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-eqz v4, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    move v0, v2

    .line 322
    goto :goto_1

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 8

    .prologue
    const/16 v4, 0x10

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 239
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onStart()V

    .line 241
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 247
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 257
    iput-boolean v7, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mStarted:Z

    .line 259
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 260
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 261
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 264
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_display_on"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 266
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_display_certification_on"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 268
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_display_wps_config"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 271
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v3, v4, v5, v7}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 274
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->update(I)V

    .line 275
    return-void
.end method

.method public onStop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 279
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onStop()V

    .line 280
    iput-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mStarted:Z

    .line 282
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 283
    .local v1, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 285
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 287
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v2, v3}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 289
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 290
    .local v0, "activity":Landroid/app/Activity;
    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mIsTablet:Z

    if-eqz v2, :cond_0

    .line 291
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v4, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 292
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 295
    :cond_0
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->unscheduleUpdate()V

    .line 296
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 972
    iput-boolean p2, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 973
    const-string v0, "WifiDisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_on"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 976
    return-void

    .line 974
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
