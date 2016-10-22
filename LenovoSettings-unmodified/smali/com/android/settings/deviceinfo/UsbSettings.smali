.class public Lcom/android/settings/deviceinfo/UsbSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UsbSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final DEFAULT_WRITE_CATEGORY_KEY:Ljava/lang/String; = "usb_select"

.field private static final DLG_CONFIRM_KILL_STORAGE_USERS:I = 0x1

.field private static final DLG_ERROR_SHARING:I = 0x2

.field private static final KEY_AUTOPOP:Ljava/lang/String; = "usb_auto_popup"

.field private static final KEY_CHARGE:Ljava/lang/String; = "usb_charge"

.field private static final KEY_MTP:Ljava/lang/String; = "usb_mtp"

.field private static final KEY_PTP:Ljava/lang/String; = "usb_ptp"

.field private static final KEY_UMS:Ljava/lang/String; = "usb_ums"

.field private static final TAG:Ljava/lang/String; = "UsbSettings"

.field private static final UPDATE_ADB_ENABLE:I = 0x2

.field private static final UPDATE_ADB_UNENABLE:I = 0x1

.field private static final USB_CHARGING_PHLUGIN:I = 0x2

.field private static final delaySendTime:I = 0x96

.field private static isUsbAct:Z

.field static final localLOGV:Z


# instance fields
.field private final KEY_ADB:Ljava/lang/String;

.field private final KEY_ADB_GROUP:Ljava/lang/String;

.field private mAdbCategory:Landroid/preference/PreferenceCategory;

.field private mAdbPreference:Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;

.field private mCanUpdateToggle:Z

.field private mCharge:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

.field private mChargeExist:Z

.field private mCheckBoxAdded:Z

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mCurrentToggles:Ljava/lang/String;

.field private mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

.field private mEnablePop:Landroid/widget/CheckBox;

.field private mHandler:Landroid/os/Handler;

.field private mIsHwUsbConnected:Z

.field private mIsPcKnowMe:Z

.field private mMtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

.field private mOkClicked:Z

.field private mOkDialog:Landroid/app/Dialog;

.field private mPlugType:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mPtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUsbAccessoryMode:Z

.field private mUsbConnected:Z

.field private mUsbHwDisconnected:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private usbCurrentState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/deviceinfo/UsbSettings;->isUsbAct:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 89
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->usbCurrentState:Z

    .line 96
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCheckBoxAdded:Z

    .line 102
    const-string v0, "key_enable_adb"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->KEY_ADB_GROUP:Ljava/lang/String;

    .line 103
    const-string v0, "adb"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->KEY_ADB:Ljava/lang/String;

    .line 108
    iput-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mOkDialog:Landroid/app/Dialog;

    .line 109
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mOkClicked:Z

    .line 114
    iput-boolean v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeExist:Z

    .line 124
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mIsHwUsbConnected:Z

    .line 125
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mIsPcKnowMe:Z

    .line 126
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPlugType:I

    .line 127
    iput-boolean v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCanUpdateToggle:Z

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCurrentToggles:Ljava/lang/String;

    .line 134
    iput-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 143
    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbSettings$1;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    .line 164
    iput-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 165
    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbSettings$2;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 190
    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbSettings$3;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 656
    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbSettings$5;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/UsbSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbSettings;->updateAdbStats(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/UsbSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getCurrentFunction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/deviceinfo/UsbSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 78
    iget v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPlugType:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings/deviceinfo/UsbSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPlugType:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mEnablePop:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/deviceinfo/UsbSettings;)Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAdbPreference:Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mOkClicked:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mOkDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/deviceinfo/UsbSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->dismissDialog()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/deviceinfo/UsbSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->showAdbDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/UsbSettings;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbSettings;->getUsbState(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/UsbSettings;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbSettings;->getUsbStateForBroadcast(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mIsHwUsbConnected:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mIsHwUsbConnected:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mIsPcKnowMe:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mIsPcKnowMe:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/deviceinfo/UsbSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCurrentToggles:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCanUpdateToggle:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCanUpdateToggle:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/deviceinfo/UsbSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 269
    .local v3, "root":Landroid/preference/PreferenceScreen;
    if-eqz v3, :cond_0

    .line 270
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 272
    :cond_0
    const v4, 0x7f060048

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/UsbSettings;->addPreferencesFromResource(I)V

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 276
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->initAdbCategory()V

    .line 277
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAdbPreference:Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;

    if-eqz v4, :cond_1

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 279
    .local v2, "cr":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mOkDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 280
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAdbPreference:Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;

    invoke-virtual {v4, v5}, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->setChecked(Z)V

    .line 287
    .end local v2    # "cr":Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->initCheckBoxView()V

    .line 289
    const-string v4, "usb_select"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/UsbSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    .line 291
    new-instance v4, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    .line 292
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    const-string v7, "usb_mtp"

    invoke-virtual {v4, v7}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setKey(Ljava/lang/String;)V

    .line 293
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    const v7, 0x7f0c0753

    invoke-virtual {v4, v7}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setTitle(I)V

    .line 294
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    const v7, 0x7f0c025b

    invoke-virtual {v4, v7}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setSummary(I)V

    .line 295
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v4, v6, v8, v8}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setSwitch(ZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 299
    new-instance v4, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    .line 300
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    const-string v7, "usb_ptp"

    invoke-virtual {v4, v7}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setKey(Ljava/lang/String;)V

    .line 301
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    const v7, 0x7f0c0754

    invoke-virtual {v4, v7}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setTitle(I)V

    .line 302
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    const v7, 0x7f0c025c

    invoke-virtual {v4, v7}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setSummary(I)V

    .line 303
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v4, v6, v8, v8}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setSwitch(ZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 307
    new-instance v4, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    .line 308
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    const-string v7, "usb_charge"

    invoke-virtual {v4, v7}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setKey(Ljava/lang/String;)V

    .line 309
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    const v7, 0x7f0c033b

    invoke-virtual {v4, v7}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setTitle(I)V

    .line 310
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    const v7, 0x7f0c033c

    invoke-virtual {v4, v7}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setSummary(I)V

    .line 311
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v4, v6, v8, v8}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setSwitch(ZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 313
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, p0}, Landroid/preference/PreferenceCategory;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 336
    const-string v4, "ro.sys.usb.storage.type"

    const-string v7, "mtp"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "config":Ljava/lang/String;
    const-string v4, "ro.sys.usb.charging.only"

    const-string v7, "no"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "chargeConfig":Ljava/lang/String;
    const-string v4, "yes"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_1
    iput-boolean v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeExist:Z

    .line 351
    const-string v4, "UsbSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ro.sys.usb.charging.only: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mChargeExist= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeExist:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return-object v3

    .line 282
    .end local v0    # "chargeConfig":Ljava/lang/String;
    .end local v1    # "config":Ljava/lang/String;
    .restart local v2    # "cr":Landroid/content/ContentResolver;
    :cond_2
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAdbPreference:Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;

    const-string v4, "adb_enabled"

    invoke-static {v2, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_3
    move v4, v6

    goto :goto_2

    .end local v2    # "cr":Landroid/content/ContentResolver;
    .restart local v0    # "chargeConfig":Ljava/lang/String;
    .restart local v1    # "config":Ljava/lang/String;
    :cond_4
    move v5, v6

    .line 350
    goto :goto_1
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mOkDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 629
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mOkDialog:Landroid/app/Dialog;

    .line 631
    :cond_0
    return-void
.end method

.method private getCurrentFunction()Ljava/lang/String;
    .locals 5

    .prologue
    .line 257
    const-string v2, "sys.usb.config"

    const-string v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, "functions":Ljava/lang/String;
    const-string v2, "UsbSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current function: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 260
    .local v0, "commandIndex":I
    if-lez v0, :cond_0

    .line 261
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 263
    .end local v1    # "functions":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private getUsbState(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    const/4 v1, 0x0

    .line 178
    .local v1, "usbState":Z
    const/4 v0, 0x2

    .line 179
    .local v0, "Connected":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "usb_connected_pc"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 180
    .local v2, "usbStateValue":I
    const-string v3, "UsbSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUsbState  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " usbCurrentState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->usbCurrentState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 182
    const/4 v1, 0x1

    .line 183
    const-string v3, "UsbSettings"

    const-string v4, "usb is connected."

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_0
    return v1

    .line 185
    :cond_0
    const-string v3, "UsbSettings"

    const-string v4, "usb have been disconnected."

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getUsbStateForBroadcast(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 247
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    const-string v1, "connected"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->usbCurrentState:Z

    .line 251
    :cond_0
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current usbState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->usbCurrentState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->usbCurrentState:Z

    return v1
.end method

.method private initAdbCategory()V
    .locals 2

    .prologue
    .line 688
    const-string v0, "key_enable_adb"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAdbCategory:Landroid/preference/PreferenceCategory;

    .line 689
    new-instance v0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAdbPreference:Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;

    .line 690
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAdbPreference:Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;

    const-string v1, "adb"

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->setKey(Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAdbPreference:Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;

    const v1, 0x7f0c027b

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->setTitle(I)V

    .line 692
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAdbPreference:Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;

    const v1, 0x7f0c027c

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->setSummary(I)V

    .line 693
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAdbPreference:Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAdbCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAdbPreference:Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 695
    return-void
.end method

.method private initCheckBoxView()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 369
    iget-boolean v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCheckBoxAdded:Z

    if-nez v3, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v6, "layout_inflater"

    invoke-virtual {v3, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 371
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040034

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v1, v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 372
    .local v2, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 373
    const v3, 0x7f0b0094

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mEnablePop:Landroid/widget/CheckBox;

    .line 374
    iput-boolean v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCheckBoxAdded:Z

    .line 376
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mEnablePop:Landroid/widget/CheckBox;

    if-eqz v3, :cond_1

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 378
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "UsbSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Auto-pop: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "usb_auto_popup"

    invoke-static {v0, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v6, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mEnablePop:Landroid/widget/CheckBox;

    const-string v3, "usb_auto_popup"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 380
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mEnablePop:Landroid/widget/CheckBox;

    new-instance v4, Lcom/android/settings/deviceinfo/UsbSettings$4;

    invoke-direct {v4, p0}, Lcom/android/settings/deviceinfo/UsbSettings$4;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 410
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1
    return-void

    .restart local v0    # "cr":Landroid/content/ContentResolver;
    :cond_2
    move v3, v5

    .line 379
    goto :goto_0
.end method

.method public static isUsbActivity()Z
    .locals 1

    .prologue
    .line 617
    sget-boolean v0, Lcom/android/settings/deviceinfo/UsbSettings;->isUsbAct:Z

    return v0
.end method

.method private showAdbDialog()V
    .locals 3

    .prologue
    .line 678
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0911

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0910

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mOkDialog:Landroid/app/Dialog;

    .line 684
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 685
    return-void
.end method

.method private updateAdbStats(Z)V
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAdbPreference:Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAdbPreference:Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->setEnabled(Z)V

    .line 162
    :cond_0
    return-void
.end method

.method private updateToggles(Ljava/lang/String;)V
    .locals 8
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x96

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 459
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UsbSettings updateToggles function "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, "isSendMessaged":Z
    const-string v1, "mtp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 465
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v1, v5}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 466
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v1, v4}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 467
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v1, v4}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 530
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    if-nez v1, :cond_6

    .line 532
    const-string v1, "UsbSettings"

    const-string v2, "USB Normal Mode"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v1, v5}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setEnabled(Z)V

    .line 534
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v1, v5}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setEnabled(Z)V

    .line 539
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v1, :cond_0

    .line 540
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v1, v5}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setEnabled(Z)V

    .line 558
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 559
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 562
    :cond_1
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCurrentToggles:Ljava/lang/String;

    .line 563
    return-void

    .line 476
    :cond_2
    const-string v1, "ptp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 477
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v1, v4}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 478
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v1, v5}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 479
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v1, v4}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    goto :goto_0

    .line 488
    :cond_3
    const-string v1, "mass_storage"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 489
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v1, v4}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 490
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v1, v4}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 491
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v1, v4}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    goto :goto_0

    .line 497
    :cond_4
    sget-object v1, Lcom/lenovo/settings/storage/StorageUtils;->USB_CHARGING:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 498
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v1, v4}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 499
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v1, v4}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 500
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v1, v5}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 501
    iput-boolean v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->usbCurrentState:Z

    .line 511
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 512
    const/4 v0, 0x1

    goto :goto_0

    .line 517
    :cond_5
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v1, v4}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 518
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v1, v4}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 519
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v1, v4}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    goto/16 :goto_0

    .line 543
    :cond_6
    const-string v1, "UsbSettings"

    const-string v2, "USB Accessory Mode"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v1, v4}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setEnabled(Z)V

    .line 545
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v1, v4}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setEnabled(Z)V

    .line 554
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v1, :cond_0

    .line 555
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v1, v4}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setEnabled(Z)V

    goto/16 :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 634
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 635
    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mOkClicked:Z

    .line 636
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 644
    :goto_0
    return-void

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAdbPreference:Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 358
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 359
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 361
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 362
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 364
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 449
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 450
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 453
    :cond_0
    const-string v0, "UsbSettings"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 648
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAdbPreference:Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->setChecked(Z)V

    .line 653
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 415
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 418
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 420
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 423
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/deviceinfo/UsbSettings;->isUsbAct:Z

    .line 424
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 425
    const-string v0, "UsbSettings"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 621
    const-string v0, "UsbSettings"

    const-string v1, "UsbSettings onPreferenceChange "

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCanUpdateToggle:Z

    .line 623
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 571
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    :goto_0
    return v4

    .line 583
    :cond_0
    instance-of v1, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    move-object v0, p2

    .line 585
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 586
    .local v0, "checkBox":Landroid/preference/CheckBoxPreference;
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 588
    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 592
    .end local v0    # "checkBox":Landroid/preference/CheckBoxPreference;
    :cond_1
    sput-boolean v5, Lcom/lenovo/settings/storage/StorageUtils;->mIsUms:Z

    .line 593
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    if-ne p2, v1, :cond_3

    .line 594
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "mtp"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 596
    const-string v1, "mtp"

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    .line 612
    :cond_2
    :goto_1
    iput-boolean v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCanUpdateToggle:Z

    goto :goto_0

    .line 597
    :cond_3
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    if-ne p2, v1, :cond_4

    .line 598
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "ptp"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 600
    const-string v1, "ptp"

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_1

    .line 601
    :cond_4
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    if-ne p2, v1, :cond_2

    .line 602
    const-string v1, "UsbSettings"

    const-string v2, "click charge"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    sget-object v2, Lcom/lenovo/settings/storage/StorageUtils;->USB_CHARGING:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 604
    sget-object v1, Lcom/lenovo/settings/storage/StorageUtils;->USB_CHARGING:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 431
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 435
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 436
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/deviceinfo/UsbSettings;->isUsbAct:Z

    .line 438
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 439
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 440
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 443
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 444
    const-string v1, "UsbSettings"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    return-void
.end method
