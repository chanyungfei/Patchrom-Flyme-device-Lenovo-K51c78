.class Landroid/provider/MediaStore$InternalThumbnails;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalThumbnails"
.end annotation


# static fields
.field static final DEFAULT_GROUP_ID:I = 0x0

.field private static final FULL_SCREEN_KIND:I = 0x2

.field private static final MICRO_KIND:I = 0x3

.field private static final MINI_KIND:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final SELECTION:[Ljava/lang/String;

.field private static sThumbBuf:[B

.field private static final sThumbBufLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 669
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    .line 670
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "width"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "height"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->SELECTION:[Ljava/lang/String;

    .line 673
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cancelThumbnailRequest(Landroid/content/ContentResolver;JLandroid/net/Uri;J)V
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "origId"    # J
    .param p3, "baseUri"    # Landroid/net/Uri;
    .param p4, "groupId"    # J

    .prologue
    .line 711
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "cancel"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "orig_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "group_id"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 714
    .local v1, "cancelUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 716
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 719
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 721
    :cond_0
    return-void

    .line 719
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method private static getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 678
    const/4 v0, 0x0

    .line 679
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 681
    .local v6, "thumbUri":Landroid/net/Uri;
    const/4 v7, 0x0

    :try_start_0
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 682
    .local v4, "thumbId":J
    const/4 v7, 0x1

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 683
    .local v2, "filePath":Ljava/lang/String;
    invoke-static {p1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 684
    const-string v7, "r"

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 685
    .local v3, "pfdInput":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, p3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 687
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    .line 696
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "pfdInput":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "thumbId":J
    :goto_0
    return-object v0

    .line 688
    :catch_0
    move-exception v1

    .line 689
    .local v1, "ex":Ljava/io/FileNotFoundException;
    const-string v7, "MediaStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t open thumbnail "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 690
    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 691
    .local v1, "ex":Ljava/io/IOException;
    const-string v7, "MediaStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t open thumbnail "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 692
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 693
    .local v1, "ex":Ljava/lang/OutOfMemoryError;
    const-string v7, "MediaStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to allocate memory for thumbnail "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .locals 31
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "origId"    # J
    .param p3, "groupId"    # J
    .param p5, "kind"    # I
    .param p6, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p7, "baseUri"    # Landroid/net/Uri;
    .param p8, "isVideo"    # Z

    .prologue
    .line 740
    const/4 v13, 0x0

    .line 741
    .local v13, "bitmap":Landroid/graphics/Bitmap;
    const-wide/16 v24, 0x0

    .line 742
    .local v24, "thumb_ID":J
    const-string v4, "MediaStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getThumbnail: origId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", kind="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", Uri="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", isVideo="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    new-instance v23, Landroid/media/MiniThumbFile;

    if-eqz p8, :cond_5

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Landroid/media/MiniThumbFile;-><init>(Landroid/net/Uri;)V

    .line 747
    .local v23, "thumbFile":Landroid/media/MiniThumbFile;
    const/4 v14, 0x0

    .line 748
    .local v14, "c":Landroid/database/Cursor;
    new-instance v22, Landroid/media/MiniThumbFile$ThumbResult;

    invoke-direct/range {v22 .. v22}, Landroid/media/MiniThumbFile$ThumbResult;-><init>()V

    .line 750
    .local v22, "result":Landroid/media/MiniThumbFile$ThumbResult;
    :try_start_0
    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/media/MiniThumbFile;->getMagic(J)J

    move-result-wide v20

    .line 751
    .local v20, "magic":J
    const-wide/16 v8, 0x0

    cmp-long v4, v20, v8

    if-eqz v4, :cond_2

    .line 752
    const/4 v4, 0x3

    move/from16 v0, p5

    if-ne v0, v4, :cond_c

    .line 753
    if-nez p8, :cond_6

    .line 754
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-wide/from16 v2, p1

    # invokes: Landroid/provider/MediaStore;->getImageThumbnailId(Landroid/content/ContentResolver;Landroid/net/Uri;J)J
    invoke-static {v0, v1, v2, v3}, Landroid/provider/MediaStore;->access$000(Landroid/content/ContentResolver;Landroid/net/Uri;J)J

    move-result-wide v24

    .line 759
    :goto_1
    cmp-long v4, v20, v24

    if-nez v4, :cond_2

    .line 760
    sget-object v6, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 761
    :try_start_1
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    if-nez v4, :cond_0

    .line 762
    const/16 v4, 0x4000

    new-array v4, v4, [B

    sput-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 764
    :cond_0
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[BLandroid/media/MiniThumbFile$ThumbResult;)[B

    move-result-object v4

    if-eqz v4, :cond_1

    .line 766
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    const/4 v8, 0x0

    sget-object v9, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    array-length v9, v9

    move-object/from16 v0, p6

    invoke-static {v4, v8, v9, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 767
    if-nez v13, :cond_1

    .line 768
    const-string v4, "MediaStore"

    const-string v8, "couldn\'t decode byte array."

    invoke-static {v4, v8}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 772
    :try_start_2
    invoke-virtual/range {v22 .. v22}, Landroid/media/MiniThumbFile$ThumbResult;->getDetail()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_a

    .line 774
    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .line 775
    .local v28, "values":Landroid/content/ContentValues;
    const-string v4, "mini_thumb_magic"

    const-string v6, "0"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string v29, "_id=? "

    .line 777
    .local v29, "where":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v30, v0

    const/4 v4, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v30, v4

    .line 778
    .local v30, "whereArgs":[Ljava/lang/String;
    if-nez p8, :cond_8

    .line 779
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 784
    :goto_2
    const-wide/16 v24, 0x0

    .line 802
    .end local v28    # "values":Landroid/content/ContentValues;
    .end local v29    # "where":Ljava/lang/String;
    .end local v30    # "whereArgs":[Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v6, "blocking"

    const-string v8, "1"

    invoke-virtual {v4, v6, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v6, "orig_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v6, "group_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 805
    .local v5, "blockingUri":Landroid/net/Uri;
    if-eqz v14, :cond_3

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 807
    :cond_3
    sget-object v6, Landroid/provider/MediaStore$InternalThumbnails;->SELECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v14

    .line 809
    if-nez v14, :cond_f

    const/4 v4, 0x0

    .line 888
    if-eqz v14, :cond_4

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 890
    :cond_4
    invoke-virtual/range {v23 .. v23}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 891
    const/16 v23, 0x0

    .line 893
    .end local v5    # "blockingUri":Landroid/net/Uri;
    .end local v20    # "magic":J
    :goto_3
    return-object v4

    .line 745
    .end local v14    # "c":Landroid/database/Cursor;
    .end local v22    # "result":Landroid/media/MiniThumbFile$ThumbResult;
    .end local v23    # "thumbFile":Landroid/media/MiniThumbFile;
    :cond_5
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_0

    .line 756
    .restart local v14    # "c":Landroid/database/Cursor;
    .restart local v20    # "magic":J
    .restart local v22    # "result":Landroid/media/MiniThumbFile$ThumbResult;
    .restart local v23    # "thumbFile":Landroid/media/MiniThumbFile;
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-wide/from16 v2, p1

    # invokes: Landroid/provider/MediaStore;->getVideoThumbnailId(Landroid/content/ContentResolver;Landroid/net/Uri;J)J
    invoke-static {v0, v1, v2, v3}, Landroid/provider/MediaStore;->access$100(Landroid/content/ContentResolver;Landroid/net/Uri;J)J
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v24

    goto/16 :goto_1

    .line 771
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 885
    .end local v20    # "magic":J
    :catch_0
    move-exception v17

    .line 886
    .local v17, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_6
    const-string v4, "MediaStore"

    const-string v6, ""

    move-object/from16 v0, v17

    invoke-static {v4, v6, v0}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 888
    if-eqz v14, :cond_7

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 890
    :cond_7
    invoke-virtual/range {v23 .. v23}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 891
    const/16 v23, 0x0

    .end local v17    # "ex":Landroid/database/sqlite/SQLiteException;
    :goto_4
    move-object v4, v13

    .line 893
    goto :goto_3

    .line 781
    .restart local v20    # "magic":J
    .restart local v28    # "values":Landroid/content/ContentValues;
    .restart local v29    # "where":Ljava/lang/String;
    .restart local v30    # "whereArgs":[Ljava/lang/String;
    :cond_8
    :try_start_7
    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 888
    .end local v20    # "magic":J
    .end local v28    # "values":Landroid/content/ContentValues;
    .end local v29    # "where":Ljava/lang/String;
    .end local v30    # "whereArgs":[Ljava/lang/String;
    :catchall_1
    move-exception v4

    if-eqz v14, :cond_9

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 890
    :cond_9
    invoke-virtual/range {v23 .. v23}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 891
    const/16 v23, 0x0

    throw v4

    .line 888
    .restart local v20    # "magic":J
    :cond_a
    if-eqz v14, :cond_b

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 890
    :cond_b
    invoke-virtual/range {v23 .. v23}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 891
    const/16 v23, 0x0

    move-object v4, v13

    goto :goto_3

    .line 790
    :cond_c
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_2

    .line 791
    if-eqz p8, :cond_e

    :try_start_8
    const-string v16, "video_id="

    .line 792
    .local v16, "column":Ljava/lang/String;
    :goto_5
    sget-object v6, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p7

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 793
    if-eqz v14, :cond_2

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 794
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    invoke-static {v14, v0, v1, v2}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v13

    .line 795
    if-eqz v13, :cond_2

    .line 888
    if-eqz v14, :cond_d

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 890
    :cond_d
    invoke-virtual/range {v23 .. v23}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 891
    const/16 v23, 0x0

    move-object v4, v13

    goto/16 :goto_3

    .line 791
    .end local v16    # "column":Ljava/lang/String;
    :cond_e
    :try_start_9
    const-string v16, "image_id="

    goto :goto_5

    .line 813
    .restart local v5    # "blockingUri":Landroid/net/Uri;
    :cond_f
    const/4 v4, 0x3

    move/from16 v0, p5

    if-ne v0, v4, :cond_17

    const-wide/16 v8, 0x0

    cmp-long v4, v24, v8

    if-nez v4, :cond_17

    .line 814
    if-nez p8, :cond_16

    .line 815
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-wide/from16 v2, p1

    # invokes: Landroid/provider/MediaStore;->getImageThumbnailId(Landroid/content/ContentResolver;Landroid/net/Uri;J)J
    invoke-static {v0, v1, v2, v3}, Landroid/provider/MediaStore;->access$000(Landroid/content/ContentResolver;Landroid/net/Uri;J)J

    move-result-wide v24

    .line 820
    :goto_6
    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/media/MiniThumbFile;->getMagic(J)J

    move-result-wide v26

    .line 821
    .local v26, "thumb_id":J
    const-wide/16 v8, 0x0

    cmp-long v4, v8, v24

    if-eqz v4, :cond_12

    cmp-long v4, v26, v24

    if-nez v4, :cond_12

    .line 822
    sget-object v6, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 823
    :try_start_a
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    if-nez v4, :cond_10

    .line 824
    const/16 v4, 0x4000

    new-array v4, v4, [B

    sput-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 826
    :cond_10
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[B)[B

    move-result-object v4

    if-eqz v4, :cond_11

    .line 828
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    const/4 v8, 0x0

    sget-object v9, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    array-length v9, v9

    move-object/from16 v0, p6

    invoke-static {v4, v8, v9, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 829
    if-nez v13, :cond_11

    .line 830
    const-string v4, "MediaStore"

    const-string v8, "couldn\'t decode byte array."

    invoke-static {v4, v8}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_11
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 846
    .end local v26    # "thumb_id":J
    :cond_12
    :goto_7
    if-nez v13, :cond_1b

    .line 847
    :try_start_b
    const-string v4, "MediaStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Create the thumbnail in memory: origId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", kind="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", isVideo="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "thumbnails"

    const-string v8, "media"

    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 852
    .local v7, "uri":Landroid/net/Uri;
    if-eqz v14, :cond_13

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 853
    :cond_13
    sget-object v8, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 854
    if-eqz v14, :cond_14

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result v4

    if-nez v4, :cond_1a

    .line 855
    :cond_14
    const/4 v4, 0x0

    .line 888
    if-eqz v14, :cond_15

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 890
    :cond_15
    invoke-virtual/range {v23 .. v23}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 891
    const/16 v23, 0x0

    goto/16 :goto_3

    .line 817
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_16
    :try_start_c
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-wide/from16 v2, p1

    # invokes: Landroid/provider/MediaStore;->getVideoThumbnailId(Landroid/content/ContentResolver;Landroid/net/Uri;J)J
    invoke-static {v0, v1, v2, v3}, Landroid/provider/MediaStore;->access$100(Landroid/content/ContentResolver;Landroid/net/Uri;J)J
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result-wide v24

    goto/16 :goto_6

    .line 833
    .restart local v26    # "thumb_id":J
    :catchall_2
    move-exception v4

    :try_start_d
    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw v4

    .line 835
    .end local v26    # "thumb_id":J
    :cond_17
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_18

    .line 836
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 837
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    invoke-static {v14, v0, v1, v2}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13

    goto/16 :goto_7

    .line 839
    :cond_18
    const-wide/16 v8, 0x0

    cmp-long v4, v24, v8

    if-eqz v4, :cond_19

    .line 840
    const-string v4, "MediaStore"

    const-string v6, "------for thumb_ID !=null------"

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 842
    :cond_19
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported kind: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 857
    .restart local v7    # "uri":Landroid/net/Uri;
    :cond_1a
    const/4 v4, 0x1

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 858
    .local v18, "filePath":Ljava/lang/String;
    if-eqz v18, :cond_1b

    .line 859
    if-eqz p8, :cond_1d

    .line 860
    move-object/from16 v0, v18

    move/from16 v1, p5

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 867
    :goto_8
    invoke-static/range {v18 .. v18}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 868
    .local v19, "mimeType":Ljava/lang/String;
    if-eqz v13, :cond_1b

    const-string v4, "image/gif"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 869
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 871
    .local v12, "b":Landroid/graphics/Bitmap;
    if-eqz v12, :cond_1b

    .line 872
    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 874
    .local v15, "canvas":Landroid/graphics/Canvas;
    const/4 v4, -0x1

    invoke-virtual {v15, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 876
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v15, v13, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 877
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 878
    move-object v13, v12

    .line 888
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v12    # "b":Landroid/graphics/Bitmap;
    .end local v15    # "canvas":Landroid/graphics/Canvas;
    .end local v18    # "filePath":Ljava/lang/String;
    .end local v19    # "mimeType":Ljava/lang/String;
    :cond_1b
    if-eqz v14, :cond_1c

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 890
    :cond_1c
    invoke-virtual/range {v23 .. v23}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 891
    const/16 v23, 0x0

    .line 892
    goto/16 :goto_4

    .line 862
    .restart local v7    # "uri":Landroid/net/Uri;
    .restart local v18    # "filePath":Ljava/lang/String;
    :cond_1d
    :try_start_f
    move-object/from16 v0, v18

    move/from16 v1, p5

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-result-object v13

    goto :goto_8
.end method
