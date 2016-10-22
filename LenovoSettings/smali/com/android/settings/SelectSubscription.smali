.class public Lcom/flyme/deviceoriginalsettings/SelectSubscription;
.super Landroid/app/TabActivity;
.source "SelectSubscription.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SelectSubscription"

.field public static final PACKAGE:Ljava/lang/String; = "PACKAGE"

.field public static final SUBSCRIPTION_KEY:Ljava/lang/String; = "subscription"

.field public static final TARGET_CLASS:Ljava/lang/String; = "TARGET_CLASS"


# instance fields
.field private subscriptionPref:Landroid/widget/TabHost$TabSpec;

.field private tabLabel:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SUB 1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SUB 2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SUB 3"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SelectSubscription;->tabLabel:[Ljava/lang/String;

    return-void
.end method

.method private getMultiSimName(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 100
    if-nez p1, :cond_0

    const v0, 0x7f0c0151

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/SelectSubscription;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0c0152

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/SelectSubscription;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 96
    const-string v0, "SelectSubscription"

    invoke-static {v0, p0}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const-string v6, "Creating activity"

    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/SelectSubscription;->log(Ljava/lang/String;)V

    .line 70
    const v6, 0x7f0400a4

    invoke-virtual {p0, v6}, Lcom/flyme/deviceoriginalsettings/SelectSubscription;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SelectSubscription;->getTabHost()Landroid/widget/TabHost;

    move-result-object v4

    .line 73
    .local v4, "tabHost":Landroid/widget/TabHost;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SelectSubscription;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 74
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "PACKAGE"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "pkg":Ljava/lang/String;
    const-string v6, "TARGET_CLASS"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, "targetClass":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SelectSubscription;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getPhoneCount()I

    move-result v2

    .line 79
    .local v2, "numPhones":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 80
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/SelectSubscription;->tabLabel:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    iput-object v6, p0, Lcom/flyme/deviceoriginalsettings/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    .line 81
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/SelectSubscription;->getMultiSimName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 83
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v6, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "subscription"

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 85
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v6, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 86
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v4, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 59
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 93
    return-void
.end method
