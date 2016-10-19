.class public Landroid/media/session/MediaSessionLegacyHelper;
.super Ljava/lang/Object;
.source "MediaSessionLegacyHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/MediaSessionLegacyHelper$1;,
        Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;,
        Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MediaSessionHelper"

.field private static sInstance:Landroid/media/session/MediaSessionLegacyHelper;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private isVolumeKeyDown:Z

.field private isVolumeKeyHandled:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mSessionManager:Landroid/media/session/MediaSessionManager;

.field private mSessions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/PendingIntent;",
            "Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    const-string v0, "MediaSessionHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/session/MediaSessionLegacyHelper;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper;->mHandler:Landroid/os/Handler;

    .line 63
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessions:Landroid/util/ArrayMap;

    .line 67
    iput-boolean v2, p0, Landroid/media/session/MediaSessionLegacyHelper;->isVolumeKeyDown:Z

    .line 68
    iput-boolean v2, p0, Landroid/media/session/MediaSessionLegacyHelper;->isVolumeKeyHandled:Z

    .line 72
    iput-object p1, p0, Landroid/media/session/MediaSessionLegacyHelper;->mContext:Landroid/content/Context;

    .line 73
    const-string/jumbo v0, "media_session"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessionManager:Landroid/media/session/MediaSessionManager;

    .line 75
    return-void
.end method

.method static synthetic access$000(Landroid/app/PendingIntent;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/PendingIntent;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Landroid/media/session/MediaSessionLegacyHelper;->sendKeyEvent(Landroid/app/PendingIntent;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Landroid/media/session/MediaSessionLegacyHelper;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Landroid/media/session/MediaSessionLegacyHelper;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public static getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    sget-object v1, Landroid/media/session/MediaSessionLegacyHelper;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 79
    :try_start_0
    sget-object v0, Landroid/media/session/MediaSessionLegacyHelper;->sInstance:Landroid/media/session/MediaSessionLegacyHelper;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Landroid/media/session/MediaSessionLegacyHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/media/session/MediaSessionLegacyHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/media/session/MediaSessionLegacyHelper;->sInstance:Landroid/media/session/MediaSessionLegacyHelper;

    .line 82
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    sget-object v0, Landroid/media/session/MediaSessionLegacyHelper;->sInstance:Landroid/media/session/MediaSessionLegacyHelper;

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getHolder(Landroid/app/PendingIntent;Z)Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    .locals 5
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "createIfMissing"    # Z

    .prologue
    .line 439
    iget-object v2, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    .line 440
    .local v0, "holder":Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 442
    new-instance v1, Landroid/media/session/MediaSession;

    iget-object v2, p0, Landroid/media/session/MediaSessionLegacyHelper;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaSessionHelper-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 443
    .local v1, "session":Landroid/media/session/MediaSession;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setActive(Z)V

    .line 444
    new-instance v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    .end local v0    # "holder":Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    invoke-direct {v0, p0, v1, p1}, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;-><init>(Landroid/media/session/MediaSessionLegacyHelper;Landroid/media/session/MediaSession;Landroid/app/PendingIntent;)V

    .line 445
    .restart local v0    # "holder":Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    iget-object v2, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    .end local v1    # "session":Landroid/media/session/MediaSession;
    :cond_0
    return-object v0
.end method

.method public static getOldMetadata(Landroid/media/MediaMetadata;II)Landroid/os/Bundle;
    .locals 8
    .param p0, "metadata"    # Landroid/media/MediaMetadata;
    .param p1, "artworkWidth"    # I
    .param p2, "artworkHeight"    # I

    .prologue
    const/16 v6, 0x64

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 88
    if-eq p1, v5, :cond_12

    if-eq p2, v5, :cond_12

    move v1, v3

    .line 89
    .local v1, "includeArtwork":Z
    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v2, "oldMetadata":Landroid/os/Bundle;
    const-string v5, "android.media.metadata.ALBUM"

    invoke-virtual {p0, v5}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 91
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "android.media.metadata.ALBUM"

    invoke-virtual {p0, v5}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    if-eqz v1, :cond_13

    const-string v3, "android.media.metadata.ART"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 95
    const-string v3, "android.media.metadata.ART"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    .local v0, "art":Landroid/graphics/Bitmap;
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSessionLegacyHelper;->scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 104
    .end local v0    # "art":Landroid/graphics/Bitmap;
    :cond_1
    :goto_1
    const-string v3, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 105
    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {p0, v5}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_2
    const-string v3, "android.media.metadata.ARTIST"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 109
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "android.media.metadata.ARTIST"

    invoke-virtual {p0, v5}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_3
    const-string v3, "android.media.metadata.AUTHOR"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 113
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "android.media.metadata.AUTHOR"

    invoke-virtual {p0, v5}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_4
    const-string v3, "android.media.metadata.COMPILATION"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 117
    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "android.media.metadata.COMPILATION"

    invoke-virtual {p0, v5}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_5
    const-string v3, "android.media.metadata.COMPOSER"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 121
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "android.media.metadata.COMPOSER"

    invoke-virtual {p0, v5}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_6
    const-string v3, "android.media.metadata.DATE"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 125
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "android.media.metadata.DATE"

    invoke-virtual {p0, v5}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_7
    const-string v3, "android.media.metadata.DISC_NUMBER"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 129
    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "android.media.metadata.DISC_NUMBER"

    invoke-virtual {p0, v5}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 132
    :cond_8
    const-string v3, "android.media.metadata.DURATION"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 133
    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "android.media.metadata.DURATION"

    invoke-virtual {p0, v5}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 136
    :cond_9
    const-string v3, "android.media.metadata.GENRE"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 137
    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "android.media.metadata.GENRE"

    invoke-virtual {p0, v5}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_a
    const-string v3, "android.media.metadata.NUM_TRACKS"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 141
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "android.media.metadata.NUM_TRACKS"

    invoke-virtual {p0, v5}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 144
    :cond_b
    const-string v3, "android.media.metadata.RATING"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 145
    const/16 v3, 0x65

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "android.media.metadata.RATING"

    invoke-virtual {p0, v5}, Landroid/media/MediaMetadata;->getRating(Ljava/lang/String;)Landroid/media/Rating;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 148
    :cond_c
    const-string v3, "android.media.metadata.USER_RATING"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 149
    const v3, 0x10000001

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "android.media.metadata.USER_RATING"

    invoke-virtual {p0, v5}, Landroid/media/MediaMetadata;->getRating(Ljava/lang/String;)Landroid/media/Rating;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 152
    :cond_d
    const-string v3, "android.media.metadata.TITLE"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 153
    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "android.media.metadata.TITLE"

    invoke-virtual {p0, v5}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_e
    const-string v3, "android.media.metadata.TRACK_NUMBER"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 157
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.media.metadata.TRACK_NUMBER"

    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 161
    :cond_f
    const-string v3, "android.media.metadata.WRITER"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 162
    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.media.metadata.WRITER"

    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_10
    const-string v3, "android.media.metadata.YEAR"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 166
    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.media.metadata.YEAR"

    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_11
    return-object v2

    .end local v1    # "includeArtwork":Z
    .end local v2    # "oldMetadata":Landroid/os/Bundle;
    :cond_12
    move v1, v4

    .line 88
    goto/16 :goto_0

    .line 98
    .restart local v1    # "includeArtwork":Z
    .restart local v2    # "oldMetadata":Landroid/os/Bundle;
    :cond_13
    if-eqz v1, :cond_1

    const-string v3, "android.media.metadata.ALBUM_ART"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    const-string v3, "android.media.metadata.ALBUM_ART"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 101
    .restart local v0    # "art":Landroid/graphics/Bitmap;
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSessionLegacyHelper;->scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_1
.end method

.method private static scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 16
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 414
    if-eqz p0, :cond_2

    .line 415
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 416
    .local v9, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 417
    .local v2, "height":I
    move/from16 v0, p1

    if-gt v9, v0, :cond_0

    move/from16 v0, p2

    if-le v2, v0, :cond_2

    .line 418
    :cond_0
    move/from16 v0, p1

    int-to-float v10, v0

    int-to-float v11, v9

    div-float/2addr v10, v11

    move/from16 v0, p2

    int-to-float v11, v0

    int-to-float v12, v2

    div-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 419
    .local v8, "scale":F
    int-to-float v10, v9

    mul-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 420
    .local v5, "newWidth":I
    int-to-float v10, v2

    mul-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 421
    .local v4, "newHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    .line 422
    .local v3, "newConfig":Landroid/graphics/Bitmap$Config;
    if-nez v3, :cond_1

    .line 423
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 425
    :cond_1
    invoke-static {v5, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 426
    .local v6, "outBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 427
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 428
    .local v7, "paint":Landroid/graphics/Paint;
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 429
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 430
    const/4 v10, 0x0

    new-instance v11, Landroid/graphics/RectF;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    int-to-float v15, v15

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v10, v11, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 432
    move-object/from16 p0, v6

    .line 435
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "height":I
    .end local v3    # "newConfig":Landroid/graphics/Bitmap$Config;
    .end local v4    # "newHeight":I
    .end local v5    # "newWidth":I
    .end local v6    # "outBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "paint":Landroid/graphics/Paint;
    .end local v8    # "scale":F
    .end local v9    # "width":I
    :cond_2
    return-object p0
.end method

.method private static sendKeyEvent(Landroid/app/PendingIntent;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p0, "pi"    # Landroid/app/PendingIntent;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 452
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :goto_0
    return-void

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "MediaSessionHelper"

    const-string v2, "Error sending media key down event:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public addMediaButtonListener(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/content/Context;)V
    .locals 4
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "mbrComponent"    # Landroid/content/ComponentName;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 360
    if-nez p1, :cond_1

    .line 361
    const-string v1, "MediaSessionHelper"

    const-string v2, "Pending intent was null, can\'t addMediaButtonListener."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHolder(Landroid/app/PendingIntent;Z)Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    move-result-object v0

    .line 365
    .local v0, "holder":Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    if-eqz v0, :cond_0

    .line 368
    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    if-eqz v1, :cond_2

    .line 370
    sget-boolean v1, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 371
    const-string v1, "MediaSessionHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addMediaButtonListener already added "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_2
    new-instance v1, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    invoke-direct {v1, p1, p3}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;-><init>(Landroid/app/PendingIntent;Landroid/content/Context;)V

    iput-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    .line 377
    iget v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    .line 378
    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    iget v2, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 379
    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v1, p1}, Landroid/media/session/MediaSession;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    .line 380
    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->update()V

    .line 381
    sget-boolean v1, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 382
    const-string v1, "MediaSessionHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addMediaButtonListener added "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addRccListener(Landroid/app/PendingIntent;Landroid/media/session/MediaSession$Callback;)V
    .locals 4
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Landroid/media/session/MediaSession$Callback;

    .prologue
    .line 316
    if-nez p1, :cond_1

    .line 317
    const-string v1, "MediaSessionHelper"

    const-string v2, "Pending intent was null, can\'t add rcc listener."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHolder(Landroid/app/PendingIntent;Z)Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    move-result-object v0

    .line 321
    .local v0, "holder":Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    if-eqz v0, :cond_0

    .line 324
    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    if-eqz v1, :cond_2

    .line 325
    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    if-ne v1, p2, :cond_2

    .line 326
    sget-boolean v1, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 327
    const-string v1, "MediaSessionHelper"

    const-string v2, "addRccListener listener already added."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 333
    :cond_2
    iput-object p2, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    .line 334
    iget v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    .line 335
    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    iget v2, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 336
    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->update()V

    .line 337
    sget-boolean v1, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 338
    const-string v1, "MediaSessionHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added rcc listener for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSession(Landroid/app/PendingIntent;)Landroid/media/session/MediaSession;
    .locals 2
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 173
    iget-object v1, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    .line 174
    .local v0, "holder":Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    goto :goto_0
.end method

.method public isGlobalPriorityActive()Z
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v0}, Landroid/media/session/MediaSessionManager;->isGlobalPriorityActive()Z

    move-result v0

    return v0
.end method

.method public removeMediaButtonListener(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 387
    if-nez p1, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHolder(Landroid/app/PendingIntent;Z)Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    move-result-object v0

    .line 391
    .local v0, "holder":Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    if-eqz v1, :cond_0

    .line 392
    iget v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    .line 393
    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    iget v2, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 394
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    .line 396
    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->update()V

    .line 397
    sget-boolean v1, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 398
    const-string v1, "MediaSessionHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeMediaButtonListener removed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeRccListener(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 343
    if-nez p1, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHolder(Landroid/app/PendingIntent;Z)Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    move-result-object v0

    .line 347
    .local v0, "holder":Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    if-eqz v1, :cond_0

    .line 348
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    .line 349
    iget v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    .line 350
    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    iget v2, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 351
    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->update()V

    .line 352
    sget-boolean v1, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 353
    const-string v1, "MediaSessionHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed rcc listener for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendAdjustVolumeBy(III)V
    .locals 2
    .param p1, "suggestedStream"    # I
    .param p2, "delta"    # I
    .param p3, "flags"    # I

    .prologue
    .line 305
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/session/MediaSessionManager;->dispatchAdjustVolume(III)V

    .line 306
    sget-boolean v0, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 307
    const-string v0, "MediaSessionHelper"

    const-string v1, "dispatched volume adjustment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    return-void
.end method

.method public sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V
    .locals 3
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    .line 178
    if-nez p1, :cond_1

    .line 179
    const-string v0, "MediaSessionHelper"

    const-string v1, "Tried to send a null key event. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 183
    sget-boolean v0, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 184
    const-string v0, "MediaSessionHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatched media key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 18
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "musicOnly"    # Z

    .prologue
    .line 189
    if-nez p1, :cond_1

    .line 190
    const-string v14, "MediaSessionHelper"

    const-string v15, "Tried to send a null key event. Ignoring."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v14

    if-nez v14, :cond_3

    const/4 v6, 0x1

    .line 195
    .local v6, "down":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    const/4 v13, 0x1

    .line 197
    .local v13, "up":Z
    :goto_2
    const/4 v5, 0x0

    .line 198
    .local v5, "direction":I
    const/4 v9, 0x0

    .line 199
    .local v9, "isMute":Z
    const/4 v12, 0x0

    .line 200
    .local v12, "newKeyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    .line 218
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v14

    invoke-static {v14}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, "deviceName":Ljava/lang/String;
    if-eqz v4, :cond_8

    const-string v14, "Headset"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 220
    const/4 v8, 0x0

    .line 222
    .local v8, "isLongPress":Z
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/media/session/MediaSessionLegacyHelper;->isVolumeKeyDown:Z

    if-eqz v14, :cond_2

    .line 223
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v16

    sub-long v2, v14, v16

    .line 224
    .local v2, "debounceTime":J
    const-wide/16 v14, 0x3e8

    cmp-long v14, v2, v14

    if-lez v14, :cond_2

    .line 225
    const/4 v8, 0x1

    .line 229
    .end local v2    # "debounceTime":J
    :cond_2
    if-eqz v6, :cond_5

    .line 230
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v14

    if-nez v14, :cond_0

    .line 231
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/media/session/MediaSessionLegacyHelper;->isVolumeKeyDown:Z

    .line 232
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/media/session/MediaSessionLegacyHelper;->isVolumeKeyHandled:Z

    goto :goto_0

    .line 194
    .end local v4    # "deviceName":Ljava/lang/String;
    .end local v5    # "direction":I
    .end local v6    # "down":Z
    .end local v8    # "isLongPress":Z
    .end local v9    # "isMute":Z
    .end local v12    # "newKeyCode":I
    .end local v13    # "up":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 195
    .restart local v6    # "down":Z
    :cond_4
    const/4 v13, 0x0

    goto :goto_2

    .line 202
    .restart local v5    # "direction":I
    .restart local v9    # "isMute":Z
    .restart local v12    # "newKeyCode":I
    .restart local v13    # "up":Z
    :sswitch_0
    const/4 v5, 0x1

    .line 203
    const/16 v12, 0x57

    .line 204
    goto :goto_3

    .line 206
    :sswitch_1
    const/4 v5, -0x1

    .line 207
    const/16 v12, 0x58

    .line 208
    goto :goto_3

    .line 210
    :sswitch_2
    const/4 v9, 0x1

    goto :goto_3

    .line 239
    .restart local v4    # "deviceName":Ljava/lang/String;
    .restart local v8    # "isLongPress":Z
    :cond_5
    if-eqz v13, :cond_0

    .line 240
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/media/session/MediaSessionLegacyHelper;->isVolumeKeyDown:Z

    if-eqz v14, :cond_0

    .line 241
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/media/session/MediaSessionLegacyHelper;->isVolumeKeyDown:Z

    .line 242
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/media/session/MediaSessionLegacyHelper;->isVolumeKeyHandled:Z

    if-nez v14, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v14

    if-nez v14, :cond_0

    .line 243
    if-eqz v8, :cond_6

    .line 244
    const-string v14, "MediaSessionHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "long press,send media key="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance v10, Landroid/view/KeyEvent;

    const/4 v14, 0x0

    invoke-direct {v10, v14, v12}, Landroid/view/KeyEvent;-><init>(II)V

    .line 246
    .local v10, "keyEvent_D":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/session/MediaSessionLegacyHelper;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v14, v10}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 247
    new-instance v11, Landroid/view/KeyEvent;

    const/4 v14, 0x1

    invoke-direct {v11, v14, v12}, Landroid/view/KeyEvent;-><init>(II)V

    .line 248
    .local v11, "keyEvent_U":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/session/MediaSessionLegacyHelper;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v14, v11}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    .line 250
    .end local v10    # "keyEvent_D":Landroid/view/KeyEvent;
    .end local v11    # "keyEvent_U":Landroid/view/KeyEvent;
    :cond_6
    const-string v14, "MediaSessionHelper"

    const-string/jumbo v15, "press action,send volume key"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    if-eqz p2, :cond_7

    .line 253
    const/16 v7, 0x200

    .line 257
    .local v7, "flags":I
    :goto_4
    if-eqz v5, :cond_0

    .line 258
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/session/MediaSessionLegacyHelper;->mSessionManager:Landroid/media/session/MediaSessionManager;

    const/high16 v15, -0x80000000

    invoke-virtual {v14, v15, v5, v7}, Landroid/media/session/MediaSessionManager;->dispatchAdjustVolume(III)V

    goto/16 :goto_0

    .line 255
    .end local v7    # "flags":I
    :cond_7
    const/16 v7, 0x15

    .restart local v7    # "flags":I
    goto :goto_4

    .line 268
    .end local v7    # "flags":I
    .end local v8    # "isLongPress":Z
    :cond_8
    if-nez v6, :cond_9

    if-eqz v13, :cond_0

    .line 270
    :cond_9
    if-eqz p2, :cond_b

    .line 273
    const/16 v7, 0x200

    .line 282
    .restart local v7    # "flags":I
    :goto_5
    if-eqz v5, :cond_d

    .line 284
    if-eqz v13, :cond_a

    .line 285
    const/4 v5, 0x0

    .line 287
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/session/MediaSessionLegacyHelper;->mSessionManager:Landroid/media/session/MediaSessionManager;

    const/high16 v15, -0x80000000

    invoke-virtual {v14, v15, v5, v7}, Landroid/media/session/MediaSessionManager;->dispatchAdjustVolume(III)V

    goto/16 :goto_0

    .line 276
    .end local v7    # "flags":I
    :cond_b
    if-eqz v13, :cond_c

    .line 277
    const/16 v7, 0x14

    .restart local v7    # "flags":I
    goto :goto_5

    .line 279
    .end local v7    # "flags":I
    :cond_c
    const/16 v7, 0x11

    .restart local v7    # "flags":I
    goto :goto_5

    .line 289
    :cond_d
    if-eqz v9, :cond_0

    .line 290
    if-eqz v6, :cond_e

    .line 293
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/session/MediaSessionLegacyHelper;->mSessionManager:Landroid/media/session/MediaSessionManager;

    const/high16 v15, -0x80000000

    const/16 v16, -0x63

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v7}, Landroid/media/session/MediaSessionManager;->dispatchAdjustVolume(III)V

    .line 296
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/session/MediaSessionLegacyHelper;->mSessionManager:Landroid/media/session/MediaSessionManager;

    const/high16 v15, -0x80000000

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v7}, Landroid/media/session/MediaSessionManager;->dispatchAdjustVolume(III)V

    goto/16 :goto_0

    .line 200
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_1
        0xa4 -> :sswitch_2
    .end sparse-switch
.end method
