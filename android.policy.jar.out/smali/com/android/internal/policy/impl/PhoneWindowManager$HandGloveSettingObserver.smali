.class final Lcom/android/internal/policy/impl/PhoneWindowManager$HandGloveSettingObserver;
.super Landroid/database/ContentObserver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HandGloveSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 8462
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HandGloveSettingObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 8463
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 8464
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 8469
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HandGloveSettingObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glove_mode_alert_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 8470
    .local v0, "enabled":Z
    :cond_0
    if-ne v0, v1, :cond_1

    .line 8471
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HandGloveSettingObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v2, "1"

    const-string v3, "sys/lenovo_tp_gestures/tpd_glove_status"

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->writeSysFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 8476
    :goto_0
    return-void

    .line 8473
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HandGloveSettingObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v2, "0"

    const-string v3, "sys/lenovo_tp_gestures/tpd_glove_status"

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->writeSysFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
