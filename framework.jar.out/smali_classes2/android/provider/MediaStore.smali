.class public final Landroid/provider/MediaStore;
.super Ljava/lang/Object;
.source "MediaStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MediaStore$Streaming;,
        Landroid/provider/MediaStore$Video;,
        Landroid/provider/MediaStore$Audio;,
        Landroid/provider/MediaStore$Images;,
        Landroid/provider/MediaStore$InternalThumbnails;,
        Landroid/provider/MediaStore$Files;,
        Landroid/provider/MediaStore$MediaColumns;
    }
.end annotation


# static fields
.field public static final ACTION_IMAGE_CAPTURE:Ljava/lang/String; = "android.media.action.IMAGE_CAPTURE"

.field public static final ACTION_IMAGE_CAPTURE_SECURE:Ljava/lang/String; = "android.media.action.IMAGE_CAPTURE_SECURE"

.field public static final ACTION_MTP_SESSION_END:Ljava/lang/String; = "android.provider.action.MTP_SESSION_END"

.field public static final ACTION_VIDEO_CAPTURE:Ljava/lang/String; = "android.media.action.VIDEO_CAPTURE"

.field public static final AUTHORITY:Ljava/lang/String; = "media"

.field private static final CONTENT_AUTHORITY_SLASH:Ljava/lang/String; = "content://media/"

.field public static final EXTRA_DURATION_LIMIT:Ljava/lang/String; = "android.intent.extra.durationLimit"

.field public static final EXTRA_FINISH_ON_COMPLETION:Ljava/lang/String; = "android.intent.extra.finishOnCompletion"

.field public static final EXTRA_FULL_SCREEN:Ljava/lang/String; = "android.intent.extra.fullScreen"

.field public static final EXTRA_LOOP_PLAYBACK:Ljava/lang/String; = "android.intent.extra.loopPlayback"

.field public static final EXTRA_MEDIA_ALBUM:Ljava/lang/String; = "android.intent.extra.album"

.field public static final EXTRA_MEDIA_ARTIST:Ljava/lang/String; = "android.intent.extra.artist"

.field public static final EXTRA_MEDIA_FOCUS:Ljava/lang/String; = "android.intent.extra.focus"

.field public static final EXTRA_MEDIA_GENRE:Ljava/lang/String; = "android.intent.extra.genre"

.field public static final EXTRA_MEDIA_PLAYLIST:Ljava/lang/String; = "android.intent.extra.playlist"

.field public static final EXTRA_MEDIA_RADIO_CHANNEL:Ljava/lang/String; = "android.intent.extra.radio_channel"

.field public static final EXTRA_MEDIA_TITLE:Ljava/lang/String; = "android.intent.extra.title"

.field public static final EXTRA_OUTPUT:Ljava/lang/String; = "output"

.field public static final EXTRA_SCREEN_ORIENTATION:Ljava/lang/String; = "android.intent.extra.screenOrientation"

.field public static final EXTRA_SHOW_ACTION_ICONS:Ljava/lang/String; = "android.intent.extra.showActionIcons"

.field public static final EXTRA_SIZE_LIMIT:Ljava/lang/String; = "android.intent.extra.sizeLimit"

.field public static final EXTRA_URI_LIST:Ljava/lang/String; = "android.intent.extra.uriList"

.field public static final EXTRA_VIDEO_QUALITY:Ljava/lang/String; = "android.intent.extra.videoQuality"

.field public static final INTENT_ACTION_MEDIA_PLAY_FROM_SEARCH:Ljava/lang/String; = "android.media.action.MEDIA_PLAY_FROM_SEARCH"

.field public static final INTENT_ACTION_MEDIA_SEARCH:Ljava/lang/String; = "android.intent.action.MEDIA_SEARCH"

.field public static final INTENT_ACTION_MUSIC_PLAYER:Ljava/lang/String; = "android.intent.action.MUSIC_PLAYER"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INTENT_ACTION_STILL_IMAGE_CAMERA:Ljava/lang/String; = "android.media.action.STILL_IMAGE_CAMERA"

.field public static final INTENT_ACTION_STILL_IMAGE_CAMERA_SECURE:Ljava/lang/String; = "android.media.action.STILL_IMAGE_CAMERA_SECURE"

.field public static final INTENT_ACTION_TEXT_OPEN_FROM_SEARCH:Ljava/lang/String; = "android.media.action.TEXT_OPEN_FROM_SEARCH"

.field public static final INTENT_ACTION_VIDEO_CAMERA:Ljava/lang/String; = "android.media.action.VIDEO_CAMERA"

.field public static final INTENT_ACTION_VIDEO_PLAY_FROM_SEARCH:Ljava/lang/String; = "android.media.action.VIDEO_PLAY_FROM_SEARCH"

.field public static final MEDIA_IGNORE_FILENAME:Ljava/lang/String; = ".nomedia"

.field public static final MEDIA_SCANNER_VOLUME:Ljava/lang/String; = "volume"

.field public static final MTP_TRANSFER_FILE_PATH:Ljava/lang/String; = "mtp_transfer_file_path"

.field public static final PARAM_DELETE_DATA:Ljava/lang/String; = "deletedata"

.field private static final TAG:Ljava/lang/String; = "MediaStore"

.field public static final UNHIDE_CALL:Ljava/lang/String; = "unhide"

.field public static final UNKNOWN_STRING:Ljava/lang/String; = "<unknown>"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2674
    return-void
.end method

.method static synthetic access$000(Landroid/content/ContentResolver;Landroid/net/Uri;J)J
    .locals 2
    .param p0, "x0"    # Landroid/content/ContentResolver;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # J

    .prologue
    .line 57
    invoke-static {p0, p1, p2, p3}, Landroid/provider/MediaStore;->getImageThumbnailId(Landroid/content/ContentResolver;Landroid/net/Uri;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Landroid/content/ContentResolver;Landroid/net/Uri;J)J
    .locals 2
    .param p0, "x0"    # Landroid/content/ContentResolver;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # J

    .prologue
    .line 57
    invoke-static {p0, p1, p2, p3}, Landroid/provider/MediaStore;->getVideoThumbnailId(Landroid/content/ContentResolver;Landroid/net/Uri;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getImageThumbnailId(Landroid/content/ContentResolver;Landroid/net/Uri;J)J
    .locals 16
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "origId"    # J

    .prologue
    .line 2836
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2837
    .local v14, "tmpUri":Ljava/lang/String;
    const-string v2, "content://media/external/images/media/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2838
    .local v3, "imagesUri":Landroid/net/Uri;
    const-wide/16 v10, 0x0

    .line 2839
    .local v10, "thumb_Id":J
    const/4 v8, 0x0

    .line 2841
    .local v8, "c":Landroid/database/Cursor;
    const/4 v2, 0x1

    :try_start_0
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "mini_thumb_magic"

    aput-object v5, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2842
    if-nez v8, :cond_1

    .line 2843
    const-string v2, "MediaStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getImageThumbnailId: Null cursor! id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2852
    if-eqz v8, :cond_0

    .line 2853
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move-wide v12, v10

    .line 2856
    .end local v10    # "thumb_Id":J
    .local v12, "thumb_Id":J
    :goto_0
    return-wide v12

    .line 2846
    .end local v12    # "thumb_Id":J
    .restart local v10    # "thumb_Id":J
    :cond_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2847
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v10

    .line 2852
    :cond_2
    if-eqz v8, :cond_3

    .line 2853
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    move-wide v12, v10

    .line 2856
    .end local v10    # "thumb_Id":J
    .restart local v12    # "thumb_Id":J
    goto :goto_0

    .line 2849
    .end local v12    # "thumb_Id":J
    .restart local v10    # "thumb_Id":J
    :catch_0
    move-exception v9

    .line 2850
    .local v9, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v2, "MediaStore"

    const-string v4, "getImageThumbnailId: SQLiteException!"

    invoke-static {v2, v4, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2852
    if-eqz v8, :cond_3

    .line 2853
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2852
    .end local v9    # "ex":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_4

    .line 2853
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
.end method

.method public static getMediaScannerUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2628
    const-string v0, "content://media/none/media_scanner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getMtpTransferFileUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2821
    const-string v0, "content://media/none/mtp_transfer_file"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 2653
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://media/none/version"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2656
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 2658
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2659
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2662
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2665
    :cond_0
    :goto_0
    return-object v2

    .line 2662
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getVideoThumbnailId(Landroid/content/ContentResolver;Landroid/net/Uri;J)J
    .locals 16
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "origId"    # J

    .prologue
    .line 2863
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2864
    .local v14, "tmpUri":Ljava/lang/String;
    const-string v2, "content://media/external/video/media/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2865
    .local v3, "imagesUri":Landroid/net/Uri;
    const-wide/16 v10, 0x0

    .line 2866
    .local v10, "thumb_Id":J
    const/4 v8, 0x0

    .line 2868
    .local v8, "c":Landroid/database/Cursor;
    const/4 v2, 0x1

    :try_start_0
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "mini_thumb_magic"

    aput-object v5, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2869
    if-nez v8, :cond_1

    .line 2870
    const-string v2, "MediaStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVideoThumbnailId: Null cursor! id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2879
    if-eqz v8, :cond_0

    .line 2880
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move-wide v12, v10

    .line 2883
    .end local v10    # "thumb_Id":J
    .local v12, "thumb_Id":J
    :goto_0
    return-wide v12

    .line 2873
    .end local v12    # "thumb_Id":J
    .restart local v10    # "thumb_Id":J
    :cond_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2874
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v10

    .line 2879
    :cond_2
    if-eqz v8, :cond_3

    .line 2880
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    move-wide v12, v10

    .line 2883
    .end local v10    # "thumb_Id":J
    .restart local v12    # "thumb_Id":J
    goto :goto_0

    .line 2876
    .end local v12    # "thumb_Id":J
    .restart local v10    # "thumb_Id":J
    :catch_0
    move-exception v9

    .line 2877
    .local v9, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v2, "MediaStore"

    const-string v4, "getVideoThumbnailId: SQLiteException!"

    invoke-static {v2, v4, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2879
    if-eqz v8, :cond_3

    .line 2880
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2879
    .end local v9    # "ex":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_4

    .line 2880
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
.end method
