.class Lcom/android/settings/DisplaySettings$4;
.super Landroid/database/ContentObserver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/settings/DisplaySettings$4;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 237
    const-string v1, "DisplaySettings"

    const-string v2, "mScreenTimeoutObserver omChanged"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$4;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-virtual {v1}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    const/16 v3, 0x7530

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 240
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$4;->this$0:Lcom/android/settings/DisplaySettings;

    # invokes: Lcom/android/settings/DisplaySettings;->updateTimeoutPreference(I)V
    invoke-static {v1, v0}, Lcom/android/settings/DisplaySettings;->access$300(Lcom/android/settings/DisplaySettings;I)V

    .line 241
    return-void
.end method
