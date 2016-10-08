.class public final Lcom/mediatek/hotknot/HotKnotAdapter;
.super Ljava/lang/Object;
.source "HotKnotAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;,
        Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;,
        Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;
    }
.end annotation


# static fields
.field public static final ACTION_ADAPTER_STATE_CHANGED:Ljava/lang/String; = "com.mediatek.hotknot.action.ADAPTER_STATE_CHANGED"

.field public static final ACTION_HOTKNOT_SETTINGS:Ljava/lang/String; = "mediatek.settings.HOTKNOT_SETTINGS"

.field public static final ACTION_MESSAGE_DISCOVERED:Ljava/lang/String; = "com.mediatek.hotknot.action.MESSAGE_DISCOVERED"

.field public static final ERROR_DATA_TOO_LARGE:I = 0x1

.field public static final ERROR_SUCCESS:I = 0x0

.field public static final EXTRA_ADAPTER_STATE:Ljava/lang/String; = "com.mediatek.hotknot.extra.ADAPTER_STATE"

.field public static final EXTRA_DATA:Ljava/lang/String; = "com.mediatek.hotknot.extra.DATA"

.field static final HOTKNOT_SERVICE:Ljava/lang/String; = "hotknot_service"

.field public static final STATE_DISABLED:I = 0x1

.field public static final STATE_ENABLED:I = 0x2

.field static final TAG:Ljava/lang/String; = "HotKnot"

.field private static sDefaultService:Lcom/mediatek/hotknot/IHotKnotAdapter;

.field private static sLock:Ljava/lang/Object;


# instance fields
.field final mContext:Landroid/content/Context;

.field final mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

.field mService:Lcom/mediatek/hotknot/IHotKnotAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/hotknot/HotKnotAdapter;->sLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mContext:Landroid/content/Context;

    .line 205
    new-instance v0, Lcom/mediatek/hotknot/HotKnotActivityManager;

    invoke-direct {v0, p0}, Lcom/mediatek/hotknot/HotKnotActivityManager;-><init>(Lcom/mediatek/hotknot/HotKnotAdapter;)V

    iput-object v0, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    .line 206
    return-void
.end method

.method public static getDefaultAdapter(Landroid/content/Context;)Lcom/mediatek/hotknot/HotKnotAdapter;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 170
    if-nez p0, :cond_0

    .line 171
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "context cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 174
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 175
    if-nez p0, :cond_1

    .line 176
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "context not associated with any application (using a mock context?)"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 180
    :cond_1
    sget-object v4, Lcom/mediatek/hotknot/HotKnotAdapter;->sLock:Ljava/lang/Object;

    monitor-enter v4

    .line 181
    :try_start_0
    sget-object v3, Lcom/mediatek/hotknot/HotKnotAdapter;->sDefaultService:Lcom/mediatek/hotknot/IHotKnotAdapter;

    if-nez v3, :cond_3

    .line 184
    new-instance v2, Lcom/mediatek/hotknot/HotKnotAdapter$1;

    invoke-direct {v2}, Lcom/mediatek/hotknot/HotKnotAdapter$1;-><init>()V

    .line 187
    .local v2, "sef":Lcom/mediatek/sef/proxy/FeatureProxyBase;
    const-string v3, "hotknot_service"

    invoke-virtual {v2, v3}, Lcom/mediatek/sef/proxy/FeatureProxyBase;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 188
    .local v1, "binder":Landroid/os/IBinder;
    if-nez v1, :cond_2

    .line 189
    monitor-exit v4

    .line 200
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v2    # "sef":Lcom/mediatek/sef/proxy/FeatureProxyBase;
    :goto_0
    return-object v0

    .line 191
    .restart local v1    # "binder":Landroid/os/IBinder;
    .restart local v2    # "sef":Lcom/mediatek/sef/proxy/FeatureProxyBase;
    :cond_2
    invoke-static {v1}, Lcom/mediatek/hotknot/IHotKnotAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/hotknot/IHotKnotAdapter;

    move-result-object v3

    sput-object v3, Lcom/mediatek/hotknot/HotKnotAdapter;->sDefaultService:Lcom/mediatek/hotknot/IHotKnotAdapter;

    .line 192
    sget-object v3, Lcom/mediatek/hotknot/HotKnotAdapter;->sDefaultService:Lcom/mediatek/hotknot/IHotKnotAdapter;

    if-nez v3, :cond_3

    .line 193
    monitor-exit v4

    goto :goto_0

    .line 195
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v2    # "sef":Lcom/mediatek/sef/proxy/FeatureProxyBase;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    new-instance v0, Lcom/mediatek/hotknot/HotKnotAdapter;

    invoke-direct {v0, p0}, Lcom/mediatek/hotknot/HotKnotAdapter;-><init>(Landroid/content/Context;)V

    .line 198
    .local v0, "adapter":Lcom/mediatek/hotknot/HotKnotAdapter;
    sget-object v3, Lcom/mediatek/hotknot/HotKnotAdapter;->sDefaultService:Lcom/mediatek/hotknot/IHotKnotAdapter;

    iput-object v3, v0, Lcom/mediatek/hotknot/HotKnotAdapter;->mService:Lcom/mediatek/hotknot/IHotKnotAdapter;

    goto :goto_0
.end method


# virtual methods
.method public disable()Z
    .locals 3

    .prologue
    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mService:Lcom/mediatek/hotknot/IHotKnotAdapter;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/mediatek/hotknot/IHotKnotAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 275
    :goto_0
    return v1

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enable()Z
    .locals 2

    .prologue
    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mService:Lcom/mediatek/hotknot/IHotKnotAdapter;

    invoke-interface {v1}, Lcom/mediatek/hotknot/IHotKnotAdapter;->enable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 248
    :goto_0
    return v1

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mService:Lcom/mediatek/hotknot/IHotKnotAdapter;

    invoke-interface {v1}, Lcom/mediatek/hotknot/IHotKnotAdapter;->isEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 224
    :goto_0
    return v1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setHotKnotBeamUris([Landroid/net/Uri;Landroid/app/Activity;)V
    .locals 7
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 543
    if-nez p2, :cond_0

    .line 544
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "activity cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 546
    :cond_0
    if-eqz p1, :cond_4

    .line 547
    move-object v0, p1

    .local v0, "arr$":[Landroid/net/Uri;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_4

    aget-object v4, v0, v1

    .line 548
    .local v4, "uri":Landroid/net/Uri;
    if-nez v4, :cond_1

    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "Uri not allowed to be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 550
    :cond_1
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 551
    .local v3, "scheme":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v5, "file"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "content"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 553
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "URI needs to have either scheme file or scheme content"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 547
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 558
    .end local v0    # "arr$":[Landroid/net/Uri;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "scheme":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_4
    iget-object v5, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    invoke-virtual {v5, p2, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setHotKnotContent(Landroid/app/Activity;[Landroid/net/Uri;)V

    .line 559
    return-void
.end method

.method public setHotKnotBeamUrisCallback(Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;Landroid/app/Activity;)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 615
    if-nez p2, :cond_0

    .line 616
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    invoke-virtual {v0, p2, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setHotKnotContentCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;)V

    .line 619
    return-void
.end method

.method public setHotKnotMessage(Lcom/mediatek/hotknot/HotKnotMessage;Landroid/app/Activity;I)V
    .locals 2
    .param p1, "message"    # Lcom/mediatek/hotknot/HotKnotMessage;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "flags"    # I

    .prologue
    .line 351
    if-nez p2, :cond_0

    .line 352
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    invoke-virtual {v0, p2, p1, p3}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setHotKnotMessage(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotMessage;I)V

    .line 355
    return-void
.end method

.method public varargs setHotKnotMessage(Lcom/mediatek/hotknot/HotKnotMessage;Landroid/app/Activity;[Landroid/app/Activity;)V
    .locals 7
    .param p1, "message"    # Lcom/mediatek/hotknot/HotKnotMessage;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "activities"    # [Landroid/app/Activity;

    .prologue
    .line 331
    if-nez p2, :cond_0

    .line 332
    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "activity cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :catch_0
    move-exception v2

    .line 343
    .local v2, "e":Ljava/lang/IllegalStateException;
    throw v2

    .line 334
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    const/4 v6, 0x0

    invoke-virtual {v5, p2, p1, v6}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setHotKnotMessage(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotMessage;I)V

    .line 335
    move-object v1, p3

    .local v1, "arr$":[Landroid/app/Activity;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 336
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 337
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "activities cannot contain null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 339
    :cond_1
    iget-object v5, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, p1, v6}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setHotKnotMessage(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotMessage;I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 335
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 345
    .end local v0    # "a":Landroid/app/Activity;
    :cond_2
    return-void
.end method

.method public setHotKnotMessageCallback(Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;Landroid/app/Activity;I)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "flags"    # I

    .prologue
    .line 426
    if-nez p2, :cond_0

    .line 427
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    invoke-virtual {v0, p2, p1, p3}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setHotKnotMessageCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;I)V

    .line 430
    return-void
.end method

.method public varargs setHotKnotMessageCallback(Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    .locals 7
    .param p1, "callback"    # Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "activities"    # [Landroid/app/Activity;

    .prologue
    .line 405
    if-nez p2, :cond_0

    .line 406
    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "activity cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :catch_0
    move-exception v2

    .line 417
    .local v2, "e":Ljava/lang/IllegalStateException;
    throw v2

    .line 408
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    const/4 v6, 0x0

    invoke-virtual {v5, p2, p1, v6}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setHotKnotMessageCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;I)V

    .line 409
    move-object v1, p3

    .local v1, "arr$":[Landroid/app/Activity;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 410
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 411
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "activities cannot contain null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 413
    :cond_1
    iget-object v5, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, p1, v6}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setHotKnotMessageCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 409
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 419
    .end local v0    # "a":Landroid/app/Activity;
    :cond_2
    return-void
.end method

.method public varargs setOnHotKnotCompleteCallback(Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    .locals 7
    .param p1, "callback"    # Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "activities"    # [Landroid/app/Activity;

    .prologue
    .line 471
    if-nez p2, :cond_0

    .line 472
    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "activity cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    :catch_0
    move-exception v2

    .line 483
    .local v2, "e":Ljava/lang/IllegalStateException;
    throw v2

    .line 474
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    invoke-virtual {v5, p2, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setOnHotKnotCompleteCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;)V

    .line 475
    move-object v1, p3

    .local v1, "arr$":[Landroid/app/Activity;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 476
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 477
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "activities cannot contain null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 479
    :cond_1
    iget-object v5, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    invoke-virtual {v5, v0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setOnHotKnotCompleteCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 475
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 485
    .end local v0    # "a":Landroid/app/Activity;
    :cond_2
    return-void
.end method
