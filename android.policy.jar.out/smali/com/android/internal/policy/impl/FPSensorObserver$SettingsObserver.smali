.class Lcom/android/internal/policy/impl/FPSensorObserver$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "FPSensorObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/FPSensorObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final KEY_FINGERPRINT_UNLOCK_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/internal/policy/impl/FPSensorObserver;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/FPSensorObserver;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 607
    iput-object p1, p0, Lcom/android/internal/policy/impl/FPSensorObserver$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/FPSensorObserver;

    .line 608
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 604
    const-string v0, "fingerprint_lockscreen_provider_set"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/FPSensorObserver$SettingsObserver;->KEY_FINGERPRINT_UNLOCK_URI:Landroid/net/Uri;

    .line 609
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    .line 612
    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/FPSensorObserver;

    # getter for: Lcom/android/internal/policy/impl/FPSensorObserver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/FPSensorObserver;->access$800(Lcom/android/internal/policy/impl/FPSensorObserver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 613
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/internal/policy/impl/FPSensorObserver$SettingsObserver;->KEY_FINGERPRINT_UNLOCK_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 615
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/FPSensorObserver$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 616
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 619
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/FPSensorObserver$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 620
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 623
    iget-object v2, p0, Lcom/android/internal/policy/impl/FPSensorObserver$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/FPSensorObserver;

    # getter for: Lcom/android/internal/policy/impl/FPSensorObserver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/FPSensorObserver;->access$800(Lcom/android/internal/policy/impl/FPSensorObserver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 624
    .local v1, "resolver":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/FPSensorObserver$SettingsObserver;->KEY_FINGERPRINT_UNLOCK_URI:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 625
    :cond_0
    const-string v2, "fingerprint_lockscreen_provider_set"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x1

    .line 627
    .local v0, "enalbed":Z
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/FPSensorObserver$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/FPSensorObserver;

    # getter for: Lcom/android/internal/policy/impl/FPSensorObserver;->mFPEnabled:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/FPSensorObserver;->access$900(Lcom/android/internal/policy/impl/FPSensorObserver;)Z

    move-result v2

    if-eq v2, v0, :cond_2

    .line 628
    iget-object v2, p0, Lcom/android/internal/policy/impl/FPSensorObserver$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/FPSensorObserver;

    # setter for: Lcom/android/internal/policy/impl/FPSensorObserver;->mFPEnabled:Z
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/FPSensorObserver;->access$902(Lcom/android/internal/policy/impl/FPSensorObserver;Z)Z

    .line 629
    const-string v2, "FingerprintObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "####mFPEnabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/FPSensorObserver$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/FPSensorObserver;

    # getter for: Lcom/android/internal/policy/impl/FPSensorObserver;->mFPEnabled:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/FPSensorObserver;->access$900(Lcom/android/internal/policy/impl/FPSensorObserver;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    .end local v0    # "enalbed":Z
    :cond_2
    return-void
.end method
