.class public Lcom/android/settings/fuelgauge/PowerUsageDetail;
.super Landroid/app/Fragment;
.source "PowerUsageDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InflateParams"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/PowerUsageDetail$2;
    }
.end annotation


# static fields
.field public static final ACTION_APP_DETAILS:I = 0x5

.field public static final ACTION_BLUETOOTH_SETTINGS:I = 0x3

.field public static final ACTION_DISPLAY_SETTINGS:I = 0x1

.field public static final ACTION_FORCE_STOP:I = 0x7

.field public static final ACTION_LOCATION_SETTINGS:I = 0x6

.field public static final ACTION_REPORT:I = 0x8

.field public static final ACTION_WIFI_SETTINGS:I = 0x2

.field public static final ACTION_WIRELESS_SETTINGS:I = 0x4

.field public static final EXTRA_DETAIL_TYPES:Ljava/lang/String; = "types"

.field public static final EXTRA_DETAIL_VALUES:Ljava/lang/String; = "values"

.field public static final EXTRA_DRAIN_TYPE:Ljava/lang/String; = "drainType"

.field public static final EXTRA_GAUGE:Ljava/lang/String; = "gauge"

.field public static final EXTRA_ICON_ID:Ljava/lang/String; = "iconId"

.field public static final EXTRA_ICON_PACKAGE:Ljava/lang/String; = "iconPackage"

.field public static final EXTRA_NO_COVERAGE:Ljava/lang/String; = "noCoverage"

.field public static final EXTRA_PERCENT:Ljava/lang/String; = "percent"

.field public static final EXTRA_REPORT_CHECKIN_DETAILS:Ljava/lang/String; = "report_checkin_details"

.field public static final EXTRA_REPORT_DETAILS:Ljava/lang/String; = "report_details"

.field public static final EXTRA_SHOW_LOCATION_BUTTON:Ljava/lang/String; = "showLocationButton"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field public static final EXTRA_UID:Ljava/lang/String; = "uid"

.field public static final EXTRA_USAGE_DURATION:Ljava/lang/String; = "duration"

.field public static final EXTRA_USAGE_SINCE:Ljava/lang/String; = "since"

.field private static final TAG:Ljava/lang/String; = "PowerUsageDetail"

.field public static final USAGE_SINCE_RESET:I = 0x2

.field public static final USAGE_SINCE_UNPLUGGED:I = 0x1

.field private static sDrainTypeDesciptions:[I


# instance fields
.field mApp:Landroid/content/pm/ApplicationInfo;

.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mControlsParent:Landroid/view/ViewGroup;

.field private mDetailsParent:Landroid/view/ViewGroup;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mDrainType:Lcom/android/internal/os/BatterySipper$DrainType;

.field private mForceStopButton:Landroid/widget/Button;

.field mInstaller:Landroid/content/ComponentName;

.field private mMessagesParent:Landroid/view/ViewGroup;

.field private mNoCoverage:D

.field private mPackages:[Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mReportButton:Landroid/widget/Button;

.field private mRootView:Landroid/view/View;

.field private mShowLocationButton:Z

.field private mStartTime:J

.field private mTitle:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;

.field private mTwoButtonsPanel:Landroid/view/ViewGroup;

.field private mTypes:[I

.field private mUid:I

.field private mUsageSince:I

.field private mUsesGps:Z

.field private mValues:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->sDrainTypeDesciptions:[I

    return-void

    :array_0
    .array-data 4
        0x7f0c09c0
        0x7f0c09c1
        0x7f0c09bf
        0x7f0c02fe
        0x7f0c09c6
        0x7f0c09c3
        0x7f0c09c4
        0x7f0c09c9
        0x7f0c09cd
        0x7f0c09ce
        0x7f0c09d0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 665
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageDetail$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageDetail;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/PowerUsageDetail;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/PowerUsageDetail;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    return-object v0
.end method

.method private addControl(III)V
    .locals 7
    .param p1, "title"    # I
    .param p2, "summary"    # I
    .param p3, "action"    # I

    .prologue
    .line 606
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 607
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 608
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040071

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 609
    .local v2, "item":Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 610
    const v5, 0x7f0b008f

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 611
    .local v0, "actionButton":Landroid/widget/Button;
    const v5, 0x7f0b001a

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 612
    .local v4, "summaryView":Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 613
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 615
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 616
    return-void
.end method

.method private addMessage(I)V
    .locals 6
    .param p1, "message"    # I

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 635
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 636
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040074

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 637
    .local v1, "item":Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mMessagesParent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 638
    const v4, 0x7f0b0042

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 639
    .local v2, "messageView":Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    return-void
.end method

.method private checkForceStop()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 674
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    const/16 v3, 0x2710

    if-ge v0, v3, :cond_1

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 701
    :goto_0
    return-void

    .line 678
    :cond_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_3

    .line 679
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 680
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 678
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 684
    :cond_3
    const/4 v8, 0x0

    :goto_2
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_4

    .line 686
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v8

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 687
    .local v9, "info":Landroid/content/pm/ApplicationInfo;
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr v0, v3

    if-nez v0, :cond_5

    .line 688
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    .end local v9    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 696
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.PACKAGES"

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    const-string v0, "android.intent.extra.UID"

    iget v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 698
    const-string v0, "android.intent.extra.user_handle"

    iget v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 699
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 691
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 684
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method private createDetails()V
    .locals 18

    .prologue
    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 363
    .local v3, "args":Landroid/os/Bundle;
    const-string v14, "title"

    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTitle:Ljava/lang/String;

    .line 364
    const-string v14, "percent"

    const/4 v15, 0x1

    invoke-virtual {v3, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 365
    .local v9, "percentage":I
    const-string v14, "gauge"

    const/4 v15, 0x1

    invoke-virtual {v3, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 366
    .local v5, "gaugeValue":I
    const-string v14, "since"

    const/4 v15, 0x1

    invoke-virtual {v3, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUsageSince:I

    .line 367
    const-string v14, "uid"

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    .line 368
    const-string v14, "drainType"

    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 369
    const-string v14, "noCoverage"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v3, v14, v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mNoCoverage:D

    .line 370
    const-string v14, "iconPackage"

    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 371
    .local v8, "iconPackage":Ljava/lang/String;
    const-string v14, "iconId"

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 372
    .local v7, "iconId":I
    const-string v14, "showLocationButton"

    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mShowLocationButton:Z

    .line 373
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 375
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 376
    .local v10, "pm":Landroid/content/pm/PackageManager;
    const/4 v14, 0x0

    invoke-virtual {v10, v8, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    iget-object v2, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 377
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_0

    .line 378
    invoke-virtual {v2, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 386
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-nez v14, :cond_1

    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 391
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v15, 0x1020010

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 392
    .local v12, "summary":Landroid/widget/TextView;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getDescriptionForDrainType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 395
    const-string v14, "types"

    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTypes:[I

    .line 396
    const-string v14, "values"

    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    .line 398
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v15, 0x1020016

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTitleView:Landroid/widget/TextView;

    .line 399
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v15, 0x1020014

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 402
    .local v13, "text1":Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v15, 0x7f0b00cb

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    .line 405
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v15, 0x7f0b0174

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    .line 406
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v15, 0x7f0b0175

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    .line 407
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setEnabled(Z)V

    .line 409
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v15, 0x102000d

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ProgressBar;

    .line 410
    .local v11, "progress":Landroid/widget/ProgressBar;
    invoke-virtual {v11, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 412
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v15, 0x1020006

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 413
    .local v6, "icon":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v15, 0x7f0b00cc

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDetailsParent:Landroid/view/ViewGroup;

    .line 416
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v15, 0x7f0b00cd

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/view/ViewGroup;

    .line 417
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v15, 0x7f0b00cf

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mMessagesParent:Landroid/view/ViewGroup;

    .line 419
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->fillDetailsSection()V

    .line 420
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->fillPackagesSection(I)V

    .line 421
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->fillControlsSection(I)V

    .line 422
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->fillMessagesSection(I)V

    .line 424
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    const/16 v15, 0x2710

    if-lt v14, v15, :cond_6

    .line 425
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const v15, 0x7f0c081b

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setText(I)V

    .line 426
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v15, 0x7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    const v15, 0x104047a

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setText(I)V

    .line 429
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    const/16 v15, 0x8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "send_action_app_error"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 435
    .local v4, "enabled":I
    if-eqz v4, :cond_5

    .line 436
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v14, v14

    if-lez v14, :cond_2

    .line 438
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 445
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    if-eqz v14, :cond_4

    const/4 v14, 0x1

    :goto_2
    invoke-virtual {v15, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 452
    .end local v4    # "enabled":I
    :goto_3
    return-void

    .line 383
    .end local v6    # "icon":Landroid/widget/ImageView;
    .end local v11    # "progress":Landroid/widget/ProgressBar;
    .end local v12    # "summary":Landroid/widget/TextView;
    .end local v13    # "text1":Landroid/widget/TextView;
    :cond_3
    if-eqz v7, :cond_0

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 445
    .restart local v4    # "enabled":I
    .restart local v6    # "icon":Landroid/widget/ImageView;
    .restart local v11    # "progress":Landroid/widget/ProgressBar;
    .restart local v12    # "summary":Landroid/widget/TextView;
    .restart local v13    # "text1":Landroid/widget/TextView;
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 447
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 450
    .end local v4    # "enabled":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 442
    .restart local v4    # "enabled":I
    :catch_0
    move-exception v14

    goto :goto_1

    .line 380
    .end local v4    # "enabled":I
    .end local v6    # "icon":Landroid/widget/ImageView;
    .end local v11    # "progress":Landroid/widget/ProgressBar;
    .end local v12    # "summary":Landroid/widget/TextView;
    .end local v13    # "text1":Landroid/widget/TextView;
    :catch_1
    move-exception v14

    goto/16 :goto_0
.end method

.method private doAction(I)V
    .locals 7
    .param p1, "action"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 470
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 471
    .local v0, "sa":Lcom/android/settings/SettingsActivity;
    packed-switch p1, :pswitch_data_0

    .line 502
    :goto_0
    :pswitch_0
    return-void

    .line 473
    :pswitch_1
    const-class v1, Lcom/android/settings/DisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c06a6

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 481
    :pswitch_2
    const-class v1, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c05ac

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 489
    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startApplicationDetailsActivity()V

    goto :goto_0

    .line 492
    :pswitch_4
    const-class v1, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c018f

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 496
    :pswitch_5
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->killProcesses()V

    goto :goto_0

    .line 499
    :pswitch_6
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->reportBatteryUse()V

    goto :goto_0

    .line 471
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private fillControlsSection(I)V
    .locals 10
    .param p1, "uid"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 547
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 548
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 549
    .local v1, "packages":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 551
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_2

    const/4 v6, 0x0

    :try_start_0
    aget-object v6, v1, v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 554
    :goto_0
    if-eqz v2, :cond_3

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 556
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :goto_1
    const/4 v4, 0x1

    .line 557
    .local v4, "removeHeader":Z
    sget-object v5, Lcom/android/settings/fuelgauge/PowerUsageDetail$2;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v6}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 600
    :cond_0
    :goto_2
    :pswitch_0
    if-eqz v4, :cond_1

    .line 601
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/view/ViewGroup;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 603
    :cond_1
    return-void

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "removeHeader":Z
    :cond_2
    move-object v2, v5

    .line 551
    goto :goto_0

    :cond_3
    move-object v0, v5

    .line 554
    goto :goto_1

    .line 560
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "removeHeader":Z
    :pswitch_1
    if-eqz v1, :cond_4

    array-length v5, v1

    if-ne v5, v8, :cond_4

    .line 561
    const v5, 0x7f0c09bb

    const v6, 0x7f0c09ca

    const/4 v7, 0x5

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 563
    const/4 v4, 0x0

    .line 569
    :cond_4
    iget-boolean v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUsesGps:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mShowLocationButton:Z

    if-eqz v5, :cond_0

    .line 570
    const v5, 0x7f0c018f

    const v6, 0x7f0c09cb

    const/4 v7, 0x6

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 572
    const/4 v4, 0x0

    goto :goto_2

    .line 576
    :pswitch_2
    const v5, 0x7f0c06d3

    const v6, 0x7f0c09c5

    invoke-direct {p0, v5, v6, v8}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 578
    const/4 v4, 0x0

    .line 579
    goto :goto_2

    .line 581
    :pswitch_3
    const v5, 0x7f0c01df

    const v6, 0x7f0c02ff

    const/4 v7, 0x2

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 583
    const/4 v4, 0x0

    .line 584
    goto :goto_2

    .line 586
    :pswitch_4
    const v5, 0x7f0c05ac

    const v6, 0x7f0c09c7

    const/4 v7, 0x3

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 588
    const/4 v4, 0x0

    .line 589
    goto :goto_2

    .line 591
    :pswitch_5
    iget-wide v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mNoCoverage:D

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    cmpl-double v5, v6, v8

    if-lez v5, :cond_0

    .line 592
    const v5, 0x7f0c0278

    const v6, 0x7f0c09c2

    const/4 v7, 0x4

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 594
    const/4 v4, 0x0

    goto :goto_2

    .line 552
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "removeHeader":Z
    :catch_0
    move-exception v6

    goto :goto_0

    .line 557
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private fillDetailsSection()V
    .locals 18

    .prologue
    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 506
    .local v3, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTypes:[I

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    if-eqz v12, :cond_1

    .line 507
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTypes:[I

    array-length v12, v12

    if-ge v2, v12, :cond_1

    .line 509
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v12, v12, v2

    const-wide/16 v14, 0x0

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_0

    .line 507
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 510
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTypes:[I

    aget v12, v12, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 511
    .local v5, "label":Ljava/lang/String;
    const/4 v10, 0x0

    .line 512
    .local v10, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTypes:[I

    aget v12, v12, v2

    sparse-switch v12, :sswitch_data_0

    .line 533
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v14, v13, v2

    const/4 v13, 0x1

    invoke-static {v12, v14, v15, v13}, Lcom/android/settings/Utils;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/String;

    move-result-object v10

    .line 535
    :goto_3
    const v12, 0x7f040072

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 537
    .local v4, "item":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDetailsParent:Landroid/view/ViewGroup;

    invoke-virtual {v12, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 538
    const v12, 0x7f0b00c8

    invoke-virtual {v4, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 539
    .local v6, "labelView":Landroid/widget/TextView;
    const v12, 0x7f0b00c9

    invoke-virtual {v4, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 540
    .local v11, "valueView":Landroid/widget/TextView;
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 517
    .end local v4    # "item":Landroid/view/ViewGroup;
    .end local v6    # "labelView":Landroid/widget/TextView;
    .end local v11    # "valueView":Landroid/widget/TextView;
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v12, v12, v2

    double-to-long v8, v12

    .line 518
    .local v8, "packets":J
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .line 519
    goto :goto_3

    .line 521
    .end local v8    # "packets":J
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v12, v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v7, v12

    .line 522
    .local v7, "percentage":I
    invoke-static {v7}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v10

    .line 523
    goto :goto_3

    .line 527
    .end local v7    # "percentage":I
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const v13, 0x7f0c09d1

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    move-object/from16 v16, v0

    aget-wide v16, v16, v2

    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 528
    goto :goto_3

    .line 530
    :sswitch_3
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUsesGps:Z

    goto :goto_2

    .line 544
    .end local v2    # "i":I
    .end local v5    # "label":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    :cond_1
    return-void

    .line 512
    :sswitch_data_0
    .sparse-switch
        0x7f0c020b -> :sswitch_0
        0x7f0c020c -> :sswitch_0
        0x7f0c09af -> :sswitch_3
        0x7f0c09b0 -> :sswitch_0
        0x7f0c09b1 -> :sswitch_0
        0x7f0c09b6 -> :sswitch_1
        0x7f0c09b7 -> :sswitch_2
        0x7f0c09b8 -> :sswitch_2
        0x7f0c09b9 -> :sswitch_2
    .end sparse-switch
.end method

.method private fillMessagesSection(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 619
    const/4 v0, 0x1

    .line 620
    .local v0, "removeHeader":Z
    sget-object v1, Lcom/android/settings/fuelgauge/PowerUsageDetail$2;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v2}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 628
    :goto_0
    if-eqz v0, :cond_0

    .line 629
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mMessagesParent:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 631
    :cond_0
    return-void

    .line 622
    :pswitch_0
    const v1, 0x7f0c09cf

    invoke-direct {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addMessage(I)V

    .line 623
    const/4 v0, 0x0

    .line 624
    goto :goto_0

    .line 620
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method private fillPackagesSection(I)V
    .locals 10
    .param p1, "uid"    # I

    .prologue
    .line 732
    const/4 v8, 0x1

    if-ge p1, v8, :cond_1

    .line 733
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->removePackagesSection()V

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 736
    :cond_1
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v9, 0x7f0b00d2

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 737
    .local v6, "packagesParent":Landroid/view/ViewGroup;
    if-eqz v6, :cond_0

    .line 738
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 740
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 742
    .local v7, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v7, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    .line 743
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v8, v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_3

    .line 744
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->removePackagesSection()V

    goto :goto_0

    .line 749
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v8, v8

    if-ge v1, v8, :cond_0

    .line 751
    :try_start_0
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v8, v8, v1

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 752
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 754
    .local v4, "label":Ljava/lang/CharSequence;
    if-eqz v4, :cond_4

    .line 755
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    .line 760
    :cond_4
    const v8, 0x7f040075

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 761
    .local v3, "item":Landroid/view/View;
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 762
    const v8, 0x7f0b00c8

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 763
    .local v5, "labelView":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "item":Landroid/view/View;
    .end local v4    # "label":Ljava/lang/CharSequence;
    .end local v5    # "labelView":Landroid/widget/TextView;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 764
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method private getDescriptionForDrainType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->sDrainTypeDesciptions:[I

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v2}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private killProcesses()V
    .locals 5

    .prologue
    .line 653
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-nez v3, :cond_0

    .line 663
    :goto_0
    return-void

    .line 656
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 658
    .local v0, "am":Landroid/app/ActivityManager;
    iget v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 659
    .local v2, "userId":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 660
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3, v2}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    .line 659
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 662
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->checkForceStop()V

    goto :goto_0
.end method

.method private removePackagesSection()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 644
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v2, 0x7f0b00d1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 647
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v2, 0x7f0b00d2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 648
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 650
    :cond_1
    return-void
.end method

.method private reportBatteryUse()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 704
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-nez v6, :cond_0

    .line 729
    :goto_0
    return-void

    .line 708
    :cond_0
    new-instance v2, Landroid/app/ApplicationErrorReport;

    invoke-direct {v2}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 709
    .local v2, "report":Landroid/app/ApplicationErrorReport;
    const/4 v6, 0x3

    iput v6, v2, Landroid/app/ApplicationErrorReport;->type:I

    .line 710
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v6, v6, v4

    iput-object v6, v2, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 711
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 712
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v6, v6, v4

    iput-object v6, v2, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 713
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/app/ApplicationErrorReport;->time:J

    .line 714
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    move v4, v5

    :cond_1
    iput-boolean v4, v2, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 716
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 717
    .local v0, "args":Landroid/os/Bundle;
    new-instance v1, Landroid/app/ApplicationErrorReport$BatteryInfo;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport$BatteryInfo;-><init>()V

    .line 718
    .local v1, "batteryInfo":Landroid/app/ApplicationErrorReport$BatteryInfo;
    const-string v4, "percent"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->usagePercent:I

    .line 719
    const-string v4, "duration"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->durationMicros:J

    .line 720
    const-string v4, "report_details"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->usageDetails:Ljava/lang/String;

    .line 721
    const-string v4, "report_checkin_details"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->checkinDetails:Ljava/lang/String;

    .line 722
    iput-object v1, v2, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    .line 724
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.APP_ERROR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 725
    .local v3, "result":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 726
    const-string v4, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 727
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 728
    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private startApplicationDetailsActivity()V
    .locals 0

    .prologue
    .line 467
    return-void
.end method

.method public static startBatteryDetailPage(Lcom/android/settings/SettingsActivity;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings/fuelgauge/BatteryEntry;Z)V
    .locals 19
    .param p0, "caller"    # Lcom/android/settings/SettingsActivity;
    .param p1, "helper"    # Lcom/android/internal/os/BatteryStatsHelper;
    .param p2, "statsType"    # I
    .param p3, "entry"    # Lcom/android/settings/fuelgauge/BatteryEntry;
    .param p4, "showLocationButton"    # Z

    .prologue
    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v13

    .line 93
    .local v13, "dischargeAmount":I
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 94
    .local v12, "args":Landroid/os/Bundle;
    const-string v2, "title"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v2, "percent"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->value:D

    int-to-double v8, v13

    mul-double/2addr v6, v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v8

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    double-to-int v3, v6

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    const-string v2, "gauge"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->value:D

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxPower()D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    const-string v2, "duration"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStatsPeriod()J

    move-result-wide v6

    invoke-virtual {v12, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 100
    const-string v2, "iconPackage"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v2, "iconId"

    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    const-string v2, "noCoverage"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->noCoveragePercent:D

    invoke-virtual {v12, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 103
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v2, v2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v2, :cond_0

    .line 104
    const-string v2, "uid"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v3, v3, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    :cond_0
    const-string v2, "drainType"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v3, v3, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 107
    const-string v2, "showLocationButton"

    move/from16 v0, p4

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    .line 112
    .local v17, "userId":I
    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$2;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v3, v3, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v3}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 250
    const/4 v2, 0x1

    new-array v15, v2, [I

    const/4 v2, 0x0

    const v3, 0x7f0c09b5

    aput v3, v15, v2

    .line 253
    .local v15, "types":[I
    const/4 v2, 0x1

    new-array v0, v2, [D

    move-object/from16 v18, v0

    const/4 v2, 0x0

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->usageTime:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    .line 258
    .local v18, "values":[D
    :cond_1
    :goto_0
    const-string v2, "types"

    invoke-virtual {v12, v2, v15}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 259
    const-string v2, "values"

    move-object/from16 v0, v18

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 262
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    move/from16 v0, v17

    if-ne v0, v2, :cond_2

    .line 263
    const-class v2, Lcom/android/settings/fuelgauge/PowerUsageDetail;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const v8, 0x7f0c09a0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move-object v7, v12

    invoke-virtual/range {v5 .. v11}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 269
    :goto_1
    return-void

    .line 115
    .end local v15    # "types":[I
    .end local v18    # "values":[D
    :pswitch_0
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v0, v2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v16, v0

    .line 116
    .local v16, "uid":Landroid/os/BatteryStats$Uid;
    const/16 v2, 0xc

    new-array v15, v2, [I

    fill-array-data v15, :array_0

    .line 130
    .restart local v15    # "types":[I
    const/16 v2, 0xc

    new-array v0, v2, [D

    move-object/from16 v18, v0

    const/4 v2, 0x0

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->cpuTime:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x1

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->cpuFgTime:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x2

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x3

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->gpsTime:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x4

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiRunningTime:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x5

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x6

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x7

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/16 v2, 0x8

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/16 v2, 0x9

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/16 v2, 0xa

    const-wide/16 v6, 0x0

    aput-wide v6, v18, v2

    const/16 v2, 0xb

    const-wide/16 v6, 0x0

    aput-wide v6, v18, v2

    .line 145
    .restart local v18    # "values":[D
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v2, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v2, v3, :cond_1

    .line 146
    new-instance v14, Ljava/io/StringWriter;

    invoke-direct {v14}, Ljava/io/StringWriter;-><init>()V

    .line 147
    .local v14, "result":Ljava/io/Writer;
    new-instance v4, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-direct {v4, v14, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 148
    .local v4, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    const-string v5, ""

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStatsType()I

    move-result v6

    invoke-virtual/range {v16 .. v16}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v7

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;II)V

    .line 150
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 151
    const-string v2, "report_details"

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance v14, Ljava/io/StringWriter;

    .end local v14    # "result":Ljava/io/Writer;
    invoke-direct {v14}, Ljava/io/StringWriter;-><init>()V

    .line 154
    .restart local v14    # "result":Ljava/io/Writer;
    new-instance v4, Lcom/android/internal/util/FastPrintWriter;

    .end local v4    # "printWriter":Ljava/io/PrintWriter;
    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-direct {v4, v14, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 155
    .restart local v4    # "printWriter":Ljava/io/PrintWriter;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStatsType()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4, v3, v5}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;II)V

    .line 157
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 158
    const-string v2, "report_checkin_details"

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {v16 .. v16}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    goto/16 :goto_0

    .line 165
    .end local v4    # "printWriter":Ljava/io/PrintWriter;
    .end local v14    # "result":Ljava/io/Writer;
    .end local v15    # "types":[I
    .end local v16    # "uid":Landroid/os/BatteryStats$Uid;
    .end local v18    # "values":[D
    :pswitch_1
    const/4 v2, 0x3

    new-array v15, v2, [I

    fill-array-data v15, :array_1

    .line 170
    .restart local v15    # "types":[I
    const/4 v2, 0x3

    new-array v0, v2, [D

    move-object/from16 v18, v0

    const/4 v2, 0x0

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->usageTime:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x1

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->noCoveragePercent:D

    aput-wide v6, v18, v2

    const/4 v2, 0x2

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    .line 175
    .restart local v18    # "values":[D
    goto/16 :goto_0

    .line 178
    .end local v15    # "types":[I
    .end local v18    # "values":[D
    :pswitch_2
    const/16 v2, 0x8

    new-array v15, v2, [I

    fill-array-data v15, :array_2

    .line 188
    .restart local v15    # "types":[I
    const/16 v2, 0x8

    new-array v0, v2, [D

    move-object/from16 v18, v0

    const/4 v2, 0x0

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->usageTime:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x1

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->cpuTime:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x2

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->cpuFgTime:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x3

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x4

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x5

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x6

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x7

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    .line 198
    .restart local v18    # "values":[D
    goto/16 :goto_0

    .line 201
    .end local v15    # "types":[I
    .end local v18    # "values":[D
    :pswitch_3
    const/16 v2, 0x8

    new-array v15, v2, [I

    fill-array-data v15, :array_3

    .line 211
    .restart local v15    # "types":[I
    const/16 v2, 0x8

    new-array v0, v2, [D

    move-object/from16 v18, v0

    const/4 v2, 0x0

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->usageTime:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x1

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->cpuTime:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x2

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->cpuFgTime:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x3

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x4

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x5

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x6

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x7

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    .line 221
    .restart local v18    # "values":[D
    goto/16 :goto_0

    .line 224
    .end local v15    # "types":[I
    .end local v18    # "values":[D
    :pswitch_4
    const/4 v2, 0x3

    new-array v15, v2, [I

    fill-array-data v15, :array_4

    .line 229
    .restart local v15    # "types":[I
    const/4 v2, 0x3

    new-array v0, v2, [D

    move-object/from16 v18, v0

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v6

    aput-wide v6, v18, v2

    const/4 v2, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v6

    aput-wide v6, v18, v2

    const/4 v2, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v6

    aput-wide v6, v18, v2

    .line 234
    .restart local v18    # "values":[D
    goto/16 :goto_0

    .line 237
    .end local v15    # "types":[I
    .end local v18    # "values":[D
    :pswitch_5
    const/4 v2, 0x3

    new-array v15, v2, [I

    fill-array-data v15, :array_5

    .line 242
    .restart local v15    # "types":[I
    const/4 v2, 0x3

    new-array v0, v2, [D

    move-object/from16 v18, v0

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v6

    aput-wide v6, v18, v2

    const/4 v2, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v6

    aput-wide v6, v18, v2

    const/4 v2, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v6

    aput-wide v6, v18, v2

    .line 247
    .restart local v18    # "values":[D
    goto/16 :goto_0

    .line 266
    :cond_2
    const-class v2, Lcom/android/settings/fuelgauge/PowerUsageDetail;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const v8, 0x7f0c09a0

    const/4 v9, 0x0

    new-instance v10, Landroid/os/UserHandle;

    move/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v5, p0

    move-object v7, v12

    invoke-virtual/range {v5 .. v10}, Lcom/android/settings/SettingsActivity;->startPreferencePanelAsUser(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    .line 112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 116
    :array_0
    .array-data 4
        0x7f0c09ac
        0x7f0c09ad
        0x7f0c09ae
        0x7f0c09af
        0x7f0c02fc
        0x7f0c09b1
        0x7f0c09b0
        0x7f0c09b2
        0x7f0c020c
        0x7f0c020b
        0x7f0c09b3
        0x7f0c09b4
    .end array-data

    .line 165
    :array_1
    .array-data 4
        0x7f0c09b5
        0x7f0c09b6
        0x7f0c09b2
    .end array-data

    .line 178
    :array_2
    .array-data 4
        0x7f0c02fc
        0x7f0c09ac
        0x7f0c09ad
        0x7f0c09ae
        0x7f0c09b1
        0x7f0c09b0
        0x7f0c020c
        0x7f0c020b
    .end array-data

    .line 201
    :array_3
    .array-data 4
        0x7f0c09b5
        0x7f0c09ac
        0x7f0c09ad
        0x7f0c09ae
        0x7f0c09b1
        0x7f0c09b0
        0x7f0c020c
        0x7f0c020b
    .end array-data

    .line 224
    :array_4
    .array-data 4
        0x7f0c09b7
        0x7f0c09b8
        0x7f0c09b9
    .end array-data

    .line 237
    :array_5
    .array-data 4
        0x7f0c09b7
        0x7f0c09b8
        0x7f0c09b9
    .end array-data
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 455
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->doAction(I)V

    .line 456
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 333
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPm:Landroid/content/pm/PackageManager;

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 336
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 341
    const v1, 0x7f040073

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 342
    .local v0, "view":Landroid/view/View;
    invoke-static {p2, v0, v0, v2}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 344
    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    .line 345
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->createDetails()V

    .line 346
    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 358
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 359
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 351
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 352
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mStartTime:J

    .line 353
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->checkForceStop()V

    .line 354
    return-void
.end method
