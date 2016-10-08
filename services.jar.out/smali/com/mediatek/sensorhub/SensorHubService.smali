.class public Lcom/mediatek/sensorhub/SensorHubService;
.super Lcom/mediatek/sensorhub/ISensorHubService$Stub;
.source "SensorHubService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;,
        Lcom/mediatek/sensorhub/SensorHubService$Holder;,
        Lcom/mediatek/sensorhub/SensorHubService$ResultReceiver;
    }
.end annotation


# static fields
.field static final LOG:Z

.field private static final POST_EVENT_ACTION_DATA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SensorHubService"


# instance fields
.field private mActionIntents:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastRefCount:I

.field private final mContext:Landroid/content/Context;

.field private mListenerContext:J

.field private mLock:Ljava/lang/Object;

.field private mNativeContext:J

.field private final mResultReceiver:Lcom/mediatek/sensorhub/SensorHubService$ResultReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mediatek/sensorhub/SensorHubService;->LOG:Z

    .line 289
    const-string v0, "sensorhub_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 290
    invoke-static {}, Lcom/mediatek/sensorhub/SensorHubService;->nativeInit()V

    .line 291
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/sensorhub/ISensorHubService$Stub;-><init>()V

    .line 38
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/sensorhub/SensorHubService;->mBroadcastRefCount:I

    .line 40
    new-instance v1, Lcom/mediatek/sensorhub/SensorHubService$ResultReceiver;

    invoke-direct {v1, p0}, Lcom/mediatek/sensorhub/SensorHubService$ResultReceiver;-><init>(Lcom/mediatek/sensorhub/SensorHubService;)V

    iput-object v1, p0, Lcom/mediatek/sensorhub/SensorHubService;->mResultReceiver:Lcom/mediatek/sensorhub/SensorHubService$ResultReceiver;

    .line 41
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/sensorhub/SensorHubService;->mLock:Ljava/lang/Object;

    .line 79
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/sensorhub/SensorHubService;->mActionIntents:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 82
    iput-object p1, p0, Lcom/mediatek/sensorhub/SensorHubService;->mContext:Landroid/content/Context;

    .line 83
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/mediatek/sensorhub/SensorHubService;->nativeSetup(Ljava/lang/Object;)V

    .line 84
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 85
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "SensorHubService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/sensorhub/SensorHubService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/sensorhub/SensorHubService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/sensorhub/SensorHubService;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mediatek/sensorhub/SensorHubService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/sensorhub/SensorHubService;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/sensorhub/SensorHubService;

    .prologue
    .line 30
    iget v0, p0, Lcom/mediatek/sensorhub/SensorHubService;->mBroadcastRefCount:I

    return v0
.end method

.method static synthetic access$110(Lcom/mediatek/sensorhub/SensorHubService;)I
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/sensorhub/SensorHubService;

    .prologue
    .line 30
    iget v0, p0, Lcom/mediatek/sensorhub/SensorHubService;->mBroadcastRefCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/mediatek/sensorhub/SensorHubService;->mBroadcastRefCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/sensorhub/SensorHubService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/sensorhub/SensorHubService;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mediatek/sensorhub/SensorHubService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private buildData([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 14
    .param p1, "data"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/sensorhub/DataCell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/sensorhub/DataCell;>;"
    if-eqz p1, :cond_5

    .line 179
    const/4 v7, 0x0

    .line 180
    .local v7, "previousClock":Lcom/mediatek/sensorhub/DataCell;
    const/4 v1, 0x0

    .line 181
    .local v1, "currentClock":Lcom/mediatek/sensorhub/DataCell;
    const/4 v6, 0x0

    .line 182
    .local v6, "previousActivityTime":Lcom/mediatek/sensorhub/DataCell;
    const/4 v0, 0x0

    .line 183
    .local v0, "currentActivityTime":Lcom/mediatek/sensorhub/DataCell;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, p1

    if-ge v3, v8, :cond_4

    .line 184
    aget-object v4, p1, v3

    check-cast v4, Lcom/mediatek/sensorhub/DataCell;

    .line 185
    .local v4, "item":Lcom/mediatek/sensorhub/DataCell;
    const/16 v8, 0xc

    invoke-virtual {v4}, Lcom/mediatek/sensorhub/DataCell;->getIndex()I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 186
    invoke-virtual {v4}, Lcom/mediatek/sensorhub/DataCell;->isPrevious()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 187
    move-object v7, v4

    .line 183
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 189
    :cond_0
    move-object v1, v4

    goto :goto_1

    .line 191
    :cond_1
    const/16 v8, 0x21

    invoke-virtual {v4}, Lcom/mediatek/sensorhub/DataCell;->getIndex()I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 192
    invoke-virtual {v4}, Lcom/mediatek/sensorhub/DataCell;->isPrevious()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 193
    move-object v6, v4

    goto :goto_1

    .line 195
    :cond_2
    move-object v0, v4

    goto :goto_1

    .line 198
    :cond_3
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 202
    .end local v4    # "item":Lcom/mediatek/sensorhub/DataCell;
    :cond_4
    if-eqz v7, :cond_6

    if-eqz v6, :cond_6

    .line 203
    new-instance v2, Lcom/mediatek/sensorhub/DataCell;

    const/16 v8, 0x22

    const/4 v9, 0x1

    invoke-virtual {v7}, Lcom/mediatek/sensorhub/DataCell;->getLongValue()J

    move-result-wide v10

    invoke-virtual {v6}, Lcom/mediatek/sensorhub/DataCell;->getLongValue()J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-direct {v2, v8, v9, v10, v11}, Lcom/mediatek/sensorhub/DataCell;-><init>(IZJ)V

    .line 205
    .local v2, "datacell":Lcom/mediatek/sensorhub/DataCell;
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    .end local v0    # "currentActivityTime":Lcom/mediatek/sensorhub/DataCell;
    .end local v1    # "currentClock":Lcom/mediatek/sensorhub/DataCell;
    .end local v2    # "datacell":Lcom/mediatek/sensorhub/DataCell;
    .end local v3    # "i":I
    .end local v6    # "previousActivityTime":Lcom/mediatek/sensorhub/DataCell;
    .end local v7    # "previousClock":Lcom/mediatek/sensorhub/DataCell;
    :cond_5
    :goto_2
    return-object v5

    .line 206
    .restart local v0    # "currentActivityTime":Lcom/mediatek/sensorhub/DataCell;
    .restart local v1    # "currentClock":Lcom/mediatek/sensorhub/DataCell;
    .restart local v3    # "i":I
    .restart local v6    # "previousActivityTime":Lcom/mediatek/sensorhub/DataCell;
    .restart local v7    # "previousClock":Lcom/mediatek/sensorhub/DataCell;
    :cond_6
    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    .line 207
    new-instance v2, Lcom/mediatek/sensorhub/DataCell;

    const/16 v8, 0x22

    const/4 v9, 0x0

    invoke-virtual {v1}, Lcom/mediatek/sensorhub/DataCell;->getLongValue()J

    move-result-wide v10

    invoke-virtual {v0}, Lcom/mediatek/sensorhub/DataCell;->getLongValue()J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-direct {v2, v8, v9, v10, v11}, Lcom/mediatek/sensorhub/DataCell;-><init>(IZJ)V

    .line 209
    .restart local v2    # "datacell":Lcom/mediatek/sensorhub/DataCell;
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 211
    .end local v2    # "datacell":Lcom/mediatek/sensorhub/DataCell;
    :cond_7
    if-eqz v7, :cond_8

    .line 212
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_8
    if-eqz v1, :cond_9

    .line 215
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_9
    if-eqz v6, :cond_a

    .line 218
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_a
    if-eqz v0, :cond_5

    .line 221
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private handleNativeMessage(III[Ljava/lang/Object;)V
    .locals 16
    .param p1, "msg"    # I
    .param p2, "ext1"    # I
    .param p3, "ext2"    # I
    .param p4, "data"    # [Ljava/lang/Object;

    .prologue
    .line 230
    sget-boolean v2, Lcom/mediatek/sensorhub/SensorHubService;->LOG:Z

    if-eqz v2, :cond_0

    .line 231
    const-string v2, "SensorHubService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleNativeMessage: msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",arg1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", arg2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 234
    move/from16 v15, p2

    .line 235
    .local v15, "rid":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/sensorhub/SensorHubService;->mActionIntents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;

    .line 236
    .local v9, "holder":Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;
    iget v2, v9, Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;->rid:I

    if-ne v2, v15, :cond_1

    .line 237
    iget-boolean v2, v9, Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;->repeat:Z

    if-nez v2, :cond_2

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/sensorhub/SensorHubService;->mActionIntents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 240
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/mediatek/sensorhub/SensorHubService;->buildData([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v13

    .line 242
    .local v13, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/sensorhub/DataCell;>;"
    :try_start_0
    iget-object v2, v9, Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;->intent:Landroid/app/PendingIntent;

    if-nez v2, :cond_4

    .line 243
    const-string v2, "SensorHubService"

    const-string v3, "handleNativeMessage: null pendingintent!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .end local v9    # "holder":Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/sensorhub/DataCell;>;"
    .end local v15    # "rid":I
    :cond_3
    return-void

    .line 246
    .restart local v9    # "holder":Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/sensorhub/DataCell;>;"
    .restart local v15    # "rid":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/sensorhub/SensorHubService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :try_start_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/sensorhub/SensorHubService;->mBroadcastRefCount:I

    if-nez v2, :cond_5

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/sensorhub/SensorHubService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 250
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/sensorhub/SensorHubService;->mBroadcastRefCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/sensorhub/SensorHubService;->mBroadcastRefCount:I

    .line 251
    sget-boolean v2, Lcom/mediatek/sensorhub/SensorHubService;->LOG:Z

    if-eqz v2, :cond_6

    const-string v2, "SensorHubService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleNativeMessage: sending intent="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v9, Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", wlCount="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/mediatek/sensorhub/SensorHubService;->mBroadcastRefCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_6
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 254
    .local v10, "elapsed":J
    new-instance v14, Lcom/mediatek/sensorhub/ActionDataResult;

    invoke-direct {v14, v15, v13, v10, v11}, Lcom/mediatek/sensorhub/ActionDataResult;-><init>(ILjava/util/List;J)V

    .line 255
    .local v14, "result":Lcom/mediatek/sensorhub/ActionDataResult;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 256
    .local v5, "intent":Landroid/content/Intent;
    const-string v2, "com.mediatek.sensorhub.EXTRA_ACTION_DATA_RESULT"

    invoke-virtual {v5, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 257
    iget-object v2, v9, Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;->intent:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/sensorhub/SensorHubService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/sensorhub/SensorHubService;->mResultReceiver:Lcom/mediatek/sensorhub/SensorHubService$ResultReceiver;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 258
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v10    # "elapsed":J
    .end local v14    # "result":Lcom/mediatek/sensorhub/ActionDataResult;
    :catch_0
    move-exception v8

    .line 259
    .local v8, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "SensorHubService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleNativeMessage: exception for rid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 252
    .end local v8    # "e":Landroid/app/PendingIntent$CanceledException;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method private native nativeCancelAction(I)Z
.end method

.method private native nativeEnableGestureWakeup(Z)Z
.end method

.method private native nativeFinalize()V
.end method

.method private static native nativeInit()V
.end method

.method private native nativeRequestAction(Lcom/mediatek/sensorhub/Condition;Lcom/mediatek/sensorhub/Action;)I
.end method

.method private native nativeSetup(Ljava/lang/Object;)V
.end method

.method private native nativeUpdateCondition(ILcom/mediatek/sensorhub/Condition;)Z
.end method

.method private static postEventFromNative(Ljava/lang/Object;III[Ljava/lang/Object;)V
    .locals 4
    .param p0, "selfRef"    # Ljava/lang/Object;
    .param p1, "msg"    # I
    .param p2, "ext1"    # I
    .param p3, "ext2"    # I
    .param p4, "data"    # [Ljava/lang/Object;

    .prologue
    .line 269
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "selfRef":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/sensorhub/SensorHubService;

    .line 270
    .local v0, "service":Lcom/mediatek/sensorhub/SensorHubService;
    if-nez v0, :cond_0

    .line 271
    const-string v1, "SensorHubService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postEventFromNative: Null SensorHubService! msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", arg1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", arg2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :goto_0
    return-void

    .line 275
    :cond_0
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/mediatek/sensorhub/SensorHubService;->handleNativeMessage(III[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelAction(I)Z
    .locals 10
    .param p1, "requestId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "find":Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;
    iget-object v6, p0, Lcom/mediatek/sensorhub/SensorHubService;->mActionIntents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;

    .line 120
    .local v1, "holder":Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;
    iget v6, v1, Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;->rid:I

    if-ne v6, p1, :cond_0

    .line 121
    move-object v0, v1

    .line 125
    .end local v1    # "holder":Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;
    :cond_1
    if-eqz v0, :cond_5

    .line 126
    iget v6, v0, Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;->pid:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    if-ne v6, v8, :cond_2

    iget v6, v0, Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    if-eq v6, v8, :cond_3

    .line 127
    :cond_2
    const-string v6, "SensorHubService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cancelAction: current[pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "], old[pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;->pid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;->uid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 137
    .local v4, "origId":J
    invoke-direct {p0, p1}, Lcom/mediatek/sensorhub/SensorHubService;->nativeCancelAction(I)Z

    move-result v3

    .line 138
    .local v3, "removed":Z
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 139
    sget-boolean v6, Lcom/mediatek/sensorhub/SensorHubService;->LOG:Z

    if-eqz v6, :cond_4

    .line 140
    const-string v8, "SensorHubService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cancelAction: rid="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v3, :cond_7

    const-string v6, " succeed."

    :goto_0
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_4
    if-nez v3, :cond_8

    .line 143
    const/4 v6, 0x0

    .line 147
    .end local v3    # "removed":Z
    .end local v4    # "origId":J
    :goto_1
    return v6

    .line 131
    :cond_5
    sget-boolean v6, Lcom/mediatek/sensorhub/SensorHubService;->LOG:Z

    if-eqz v6, :cond_6

    .line 132
    const-string v6, "SensorHubService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cancelAction: succeed due to no client. rid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v6, v7

    .line 134
    goto :goto_1

    .line 140
    .restart local v3    # "removed":Z
    .restart local v4    # "origId":J
    :cond_7
    const-string v6, " failed!"

    goto :goto_0

    .line 146
    :cond_8
    iget-object v6, p0, Lcom/mediatek/sensorhub/SensorHubService;->mActionIntents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move v6, v7

    .line 147
    goto :goto_1
.end method

.method public enableGestureWakeup(Z)Z
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 168
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/mediatek/sensorhub/SensorHubManager;->WAKE_DEVICE_SENSORHUB:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 169
    .local v0, "permission":I
    if-eqz v0, :cond_0

    .line 170
    new-instance v2, Lcom/mediatek/sensorhub/SensorHubPermissionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Need permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mediatek/sensorhub/SensorHubManager;->WAKE_DEVICE_SENSORHUB:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mediatek/sensorhub/SensorHubPermissionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/sensorhub/SensorHubService;->nativeEnableGestureWakeup(Z)Z

    move-result v1

    .line 173
    .local v1, "result":Z
    return v1
.end method

.method public getContextList()Lcom/mediatek/sensorhub/ParcelableListInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lcom/mediatek/sensorhub/ParcelableListInteger;

    invoke-virtual {p0}, Lcom/mediatek/sensorhub/SensorHubService;->nativeGetContextList()[I

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/sensorhub/ParcelableListInteger;-><init>([I)V

    return-object v0
.end method

.method public native nativeGetContextList()[I
.end method

.method public requestAction(Lcom/mediatek/sensorhub/Condition;Lcom/mediatek/sensorhub/Action;)I
    .locals 8
    .param p1, "condition"    # Lcom/mediatek/sensorhub/Condition;
    .param p2, "action"    # Lcom/mediatek/sensorhub/Action;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v5, p0, Lcom/mediatek/sensorhub/SensorHubService;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/mediatek/sensorhub/SensorHubManager;->WAKE_DEVICE_SENSORHUB:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 96
    .local v1, "permission":I
    if-eqz v1, :cond_0

    .line 97
    new-instance v5, Lcom/mediatek/sensorhub/SensorHubPermissionException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Need permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/mediatek/sensorhub/SensorHubManager;->WAKE_DEVICE_SENSORHUB:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/mediatek/sensorhub/SensorHubPermissionException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 100
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 101
    .local v2, "origId":J
    invoke-direct {p0, p1, p2}, Lcom/mediatek/sensorhub/SensorHubService;->nativeRequestAction(Lcom/mediatek/sensorhub/Condition;Lcom/mediatek/sensorhub/Action;)I

    move-result v4

    .line 102
    .local v4, "rid":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 103
    sget-boolean v5, Lcom/mediatek/sensorhub/SensorHubService;->LOG:Z

    if-eqz v5, :cond_1

    .line 104
    const-string v5, "SensorHubService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestAction: rid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_1
    if-lez v4, :cond_2

    .line 107
    new-instance v0, Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;

    invoke-virtual {p2}, Lcom/mediatek/sensorhub/Action;->getIntent()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {p2}, Lcom/mediatek/sensorhub/Action;->isRepeatable()Z

    move-result v6

    invoke-direct {v0, v4, v5, v6}, Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;-><init>(ILandroid/app/PendingIntent;Z)V

    .line 108
    .local v0, "ah":Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;
    iget-object v5, p0, Lcom/mediatek/sensorhub/SensorHubService;->mActionIntents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    sget-boolean v5, Lcom/mediatek/sensorhub/SensorHubService;->LOG:Z

    if-eqz v5, :cond_2

    .line 110
    const-string v5, "SensorHubService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestAction: add client[rid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .end local v0    # "ah":Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;
    :cond_2
    return v4
.end method

.method public updateCondition(ILcom/mediatek/sensorhub/Condition;)Z
    .locals 7
    .param p1, "requestId"    # I
    .param p2, "condition"    # Lcom/mediatek/sensorhub/Condition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v4, p0, Lcom/mediatek/sensorhub/SensorHubService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/mediatek/sensorhub/SensorHubManager;->WAKE_DEVICE_SENSORHUB:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    .line 153
    .local v2, "permission":I
    if-eqz v2, :cond_0

    .line 154
    new-instance v4, Lcom/mediatek/sensorhub/SensorHubPermissionException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Need permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/mediatek/sensorhub/SensorHubManager;->WAKE_DEVICE_SENSORHUB:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/mediatek/sensorhub/SensorHubPermissionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 156
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 157
    .local v0, "origId":J
    invoke-direct {p0, p1, p2}, Lcom/mediatek/sensorhub/SensorHubService;->nativeUpdateCondition(ILcom/mediatek/sensorhub/Condition;)Z

    move-result v3

    .line 158
    .local v3, "result":Z
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 159
    sget-boolean v4, Lcom/mediatek/sensorhub/SensorHubService;->LOG:Z

    if-eqz v4, :cond_1

    .line 160
    const-string v5, "SensorHubService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCondition: rid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v3, :cond_2

    const-string v4, " succeed."

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_1
    return v3

    .line 160
    :cond_2
    const-string v4, " failed!"

    goto :goto_0
.end method
