.class final Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$LocationStateTracker;
.super Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocationStateTracker"
.end annotation


# instance fields
.field private mCurrentLocationMode:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$StateTracker;-><init>(Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$1;)V

    .line 523
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$LocationStateTracker;->mCurrentLocationMode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$1;

    .prologue
    .line 522
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$LocationStateTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 545
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 546
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "location_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$LocationStateTracker;->mCurrentLocationMode:I

    .line 548
    iget v2, p0, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$LocationStateTracker;->mCurrentLocationMode:I

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getButtonDescription()I
    .locals 1

    .prologue
    .line 528
    const v0, 0x7f0c0a4a

    return v0
.end method

.method public getButtonId()I
    .locals 1

    .prologue
    .line 526
    const v0, 0x7f0b01a3

    return v0
.end method

.method public getButtonImageId(Z)I
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 530
    if-eqz p1, :cond_0

    .line 531
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$LocationStateTracker;->mCurrentLocationMode:I

    packed-switch v0, :pswitch_data_0

    .line 536
    :pswitch_0
    const v0, 0x7f020042

    .line 540
    :goto_0
    return v0

    .line 534
    :pswitch_1
    const v0, 0x7f020041

    goto :goto_0

    .line 540
    :cond_0
    const v0, 0x7f020040

    goto :goto_0

    .line 531
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getContainerId()I
    .locals 1

    .prologue
    .line 525
    const v0, 0x7f0b01a2

    return v0
.end method

.method public getIndicatorId()I
    .locals 1

    .prologue
    .line 527
    const v0, 0x7f0b01a4

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "unused"    # Landroid/content/Intent;

    .prologue
    .line 556
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$LocationStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$LocationStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 557
    return-void
.end method

.method public requestStateChange(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "desiredState"    # Z

    .prologue
    .line 561
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 562
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;-><init>(Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$LocationStateTracker;Landroid/content/Context;Landroid/content/ContentResolver;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 601
    return-void
.end method
