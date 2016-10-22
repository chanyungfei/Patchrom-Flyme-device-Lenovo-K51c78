.class public Lcom/mediatek/drm/OmaDrmUtils;
.super Ljava/lang/Object;
.source "OmaDrmUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;,
        Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;,
        Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;
    }
.end annotation


# static fields
.field private static final CID_URIS:[Landroid/net/Uri;

.field private static final OMA_DRM_EXTEND_SUFFIX:Z

.field private static final TAG:Ljava/lang/String; = "OmaDrmUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 60
    const/4 v3, 0x6

    new-array v3, v3, [Landroid/net/Uri;

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v4, v3, v1

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v4, v3, v2

    const/4 v4, 0x2

    sget-object v5, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v5, v3, v4

    sput-object v3, Lcom/mediatek/drm/OmaDrmUtils;->CID_URIS:[Landroid/net/Uri;

    .line 73
    const-string v3, "drm.extend.suffix"

    const-string v4, "no"

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "drmExtendSuffix":Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "yes"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    sput-boolean v1, Lcom/mediatek/drm/OmaDrmUtils;->OMA_DRM_EXTEND_SUFFIX:Z

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    return-void
.end method

.method static convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 387
    const-string v0, "OmaDrmUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertUriToPath : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " @"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v8, 0x0

    .line 390
    .local v8, "path":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 391
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 392
    .local v10, "scheme":Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string v0, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 393
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 418
    .end local v10    # "scheme":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v0, "OmaDrmUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertUriToPath : >"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return-object v8

    .line 394
    .restart local v10    # "scheme":Ljava/lang/String;
    :cond_2
    const-string v0, "http"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 395
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 396
    :cond_3
    const-string v0, "content"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 397
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 398
    .local v2, "projection":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 400
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 401
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_6

    .line 402
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri could not be found in media store"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    :catch_0
    move-exception v7

    .line 407
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri is not formatted in a way so that it can be found in media store."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 410
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 404
    :cond_6
    :try_start_2
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 405
    .local v9, "pathIndex":I
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 409
    if-eqz v6, :cond_1

    .line 410
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 414
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "pathIndex":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri scheme is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static generateDcfFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 574
    const-string v3, "OmaDrmUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateDcfFilePath : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 577
    .local v0, "index":I
    const/4 v1, 0x0

    .line 578
    .local v1, "raw":Ljava/lang/String;
    const-string v2, ".dcf.tmp"

    .line 579
    .local v2, "suffix":Ljava/lang/String;
    const/4 v3, -0x1

    if-eq v3, v0, :cond_0

    .line 580
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 584
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    .line 582
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getDrmProfile(Landroid/content/Context;Landroid/net/Uri;Lcom/mediatek/drm/OmaDrmClient;)Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "client"    # Lcom/mediatek/drm/OmaDrmClient;

    .prologue
    .line 229
    const-string v2, "OmaDrmUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDrmProfile : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 232
    :cond_0
    const-string v2, "OmaDrmUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDrmProfile : invalid parameters client="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " context="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " uri="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 236
    :cond_1
    const/4 v11, 0x0

    .line 237
    .local v11, "isDrm":Z
    const/4 v12, 0x0

    .line 239
    .local v12, "method":I
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v15

    .line 240
    .local v15, "scheme":Ljava/lang/String;
    const-string v2, "content"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 242
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "is_drm"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "drm_method"

    aput-object v3, v4, v2

    .line 250
    .local v4, "projection":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 252
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 254
    if-eqz v8, :cond_3

    .line 255
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 256
    const-string v2, "is_drm"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 258
    .local v9, "columnIndex":I
    const/4 v2, -0x1

    if-eq v9, v2, :cond_2

    .line 259
    const-string v2, "1"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 262
    :cond_2
    const-string v2, "drm_method"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 264
    const/4 v2, -0x1

    if-eq v9, v2, :cond_3

    .line 265
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    .line 278
    .end local v9    # "columnIndex":I
    :cond_3
    if-eqz v8, :cond_4

    .line 279
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 280
    const/4 v8, 0x0

    .line 299
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_4
    :goto_0
    new-instance v14, Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;

    invoke-direct {v14, v12, v11}, Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;-><init>(IZ)V

    .line 300
    .local v14, "profile":Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;
    const-string v2, "OmaDrmUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDrmProfile : isDrm="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;->isDrm()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " method="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;->getMethod()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-object v14

    .line 269
    .end local v14    # "profile":Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;
    .restart local v4    # "projection":[Ljava/lang/String;
    .restart local v8    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 270
    .local v10, "ie":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v2, "OmaDrmUtils"

    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    if-eqz v8, :cond_4

    .line 279
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 280
    const/4 v8, 0x0

    goto :goto_0

    .line 271
    .end local v10    # "ie":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v17

    .line 272
    .local v17, "ue":Ljava/lang/UnsupportedOperationException;
    :try_start_2
    const-string v2, "OmaDrmUtils"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    if-eqz v8, :cond_4

    .line 279
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 280
    const/4 v8, 0x0

    goto :goto_0

    .line 273
    .end local v17    # "ue":Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v16

    .line 274
    .local v16, "se":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    const-string v2, "OmaDrmUtils"

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 278
    if-eqz v8, :cond_4

    .line 279
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 280
    const/4 v8, 0x0

    goto :goto_0

    .line 275
    .end local v16    # "se":Landroid/database/sqlite/SQLiteException;
    :catch_3
    move-exception v13

    .line 276
    .local v13, "oce":Landroid/os/OperationCanceledException;
    :try_start_4
    const-string v2, "OmaDrmUtils"

    invoke-static {v2, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 278
    if-eqz v8, :cond_4

    .line 279
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 280
    const/4 v8, 0x0

    goto :goto_0

    .line 278
    .end local v13    # "oce":Landroid/os/OperationCanceledException;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_5

    .line 279
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 280
    const/4 v8, 0x0

    :cond_5
    throw v2

    .line 283
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_6
    const-string v2, "file"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 285
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/drm/OmaDrmUtils;->isDrmSuffix(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 286
    const/4 v11, 0x1

    .line 287
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/mediatek/drm/OmaDrmClient;->getMethod(Landroid/net/Uri;)I

    move-result v12

    goto/16 :goto_0

    .line 289
    :cond_7
    const/4 v11, 0x0

    .line 292
    sget-boolean v2, Lcom/mediatek/drm/OmaDrmUtils;->OMA_DRM_EXTEND_SUFFIX:Z

    if-eqz v2, :cond_4

    .line 293
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/mediatek/drm/OmaDrmClient;->getMethod(Landroid/net/Uri;)I

    move-result v12

    .line 294
    if-eqz v12, :cond_8

    const/4 v11, 0x1

    :goto_1
    goto/16 :goto_0

    :cond_8
    const/4 v11, 0x0

    goto :goto_1
.end method

.method public static getDrmStorageFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 439
    const-string v4, "OmaDrmUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDrmStorageFileName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const-string v4, "."

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 442
    .local v0, "index":I
    const/4 v1, 0x0

    .line 443
    .local v1, "raw":Ljava/lang/String;
    const/4 v3, 0x0

    .line 444
    .local v3, "suffix":Ljava/lang/String;
    const/4 v4, -0x1

    if-eq v4, v0, :cond_1

    .line 445
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 446
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 452
    :goto_0
    move-object v2, p0

    .line 453
    .local v2, "result":Ljava/lang/String;
    const-string v4, ".dm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 454
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dcf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 467
    :cond_0
    :goto_1
    return-object v2

    .line 448
    .end local v2    # "result":Ljava/lang/String;
    :cond_1
    move-object v1, p0

    .line 449
    const-string v3, ""

    goto :goto_0

    .line 455
    .restart local v2    # "result":Ljava/lang/String;
    :cond_2
    const-string v4, ".dcf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 456
    move-object v2, p0

    goto :goto_1

    .line 459
    :cond_3
    const-string v4, "application/vnd.oma.drm.message"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "application/vnd.oma.drm.content"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 463
    :cond_4
    sget-boolean v4, Lcom/mediatek/drm/OmaDrmUtils;->OMA_DRM_EXTEND_SUFFIX:Z

    if-eqz v4, :cond_5

    move-object v2, p0

    :goto_2
    goto :goto_1

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dcf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method public static getImageThumbnail(Lcom/mediatek/drm/OmaDrmClient;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "drmClient"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 595
    const-string v14, "OmaDrmUtils"

    const-string v15, "getImageThumbnail"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const/4 v11, 0x0

    .line 597
    .local v11, "result":Landroid/graphics/Bitmap;
    if-nez p0, :cond_1

    .line 598
    const-string v14, "OmaDrmUtils"

    const-string v15, "omadrmclient instance is null."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    .end local v11    # "result":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v11

    .line 601
    .restart local v11    # "result":Landroid/graphics/Bitmap;
    :cond_1
    const/16 v13, 0x60

    .line 602
    .local v13, "width":I
    const/16 v9, 0x60

    .line 603
    .local v9, "height":I
    if-nez p1, :cond_2

    .line 604
    const-string v14, "OmaDrmUtils"

    const-string v15, "getImageThumbnail() path is null"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 610
    :cond_2
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/mediatek/drm/OmaDrmClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 613
    new-instance v7, Lcom/mediatek/dcfdecoder/DcfDecoder;

    invoke-direct {v7}, Lcom/mediatek/dcfdecoder/DcfDecoder;-><init>()V

    .line 614
    .local v7, "dcfDecoder":Lcom/mediatek/dcfdecoder/DcfDecoder;
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v14}, Lcom/mediatek/dcfdecoder/DcfDecoder;->forceDecryptFile(Ljava/lang/String;Z)[B

    move-result-object v6

    .line 615
    .local v6, "buffer":[B
    if-nez v6, :cond_3

    .line 616
    const-string v14, "OmaDrmUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getImageThumbnail() file is not exist:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/4 v11, 0x0

    goto :goto_0

    .line 619
    :cond_3
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 620
    .local v10, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v14, 0x1

    iput-boolean v14, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 621
    const/4 v14, 0x0

    array-length v15, v6

    invoke-static {v6, v14, v15, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 623
    const/4 v14, 0x0

    iput-boolean v14, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 625
    iget v8, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 626
    .local v8, "h":I
    iget v12, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 627
    .local v12, "w":I
    div-int v4, v12, v13

    .line 628
    .local v4, "beW":I
    div-int v3, v8, v9

    .line 629
    .local v3, "beH":I
    if-ge v4, v3, :cond_4

    move v2, v3

    .line 632
    .local v2, "be":I
    :goto_1
    iput v2, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 633
    const/4 v14, 0x0

    array-length v15, v6

    invoke-static {v6, v14, v15, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .local v5, "btm":Landroid/graphics/Bitmap;
    move-object v11, v5

    .line 635
    goto :goto_0

    .end local v2    # "be":I
    .end local v5    # "btm":Landroid/graphics/Bitmap;
    :cond_4
    move v2, v4

    .line 629
    goto :goto_1
.end method

.method public static getMediaActionType(Ljava/lang/String;)I
    .locals 2
    .param p0, "mime"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 88
    const-string v1, "image/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    const/4 v0, 0x7

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    const-string v1, "audio/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "video/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public static getMsgFromInfoStatus(Landroid/drm/DrmInfoStatus;)Ljava/lang/String;
    .locals 6
    .param p0, "status"    # Landroid/drm/DrmInfoStatus;

    .prologue
    .line 370
    iget-object v3, p0, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    invoke-virtual {v3}, Landroid/drm/ProcessedData;->getData()[B

    move-result-object v0

    .line 371
    .local v0, "data":[B
    const-string v2, ""

    .line 372
    .local v2, "message":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 375
    :try_start_0
    new-instance v2, Ljava/lang/String;

    .end local v2    # "message":Ljava/lang/String;
    const-string v3, "US-ASCII"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    .restart local v2    # "message":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v3, "OmaDrmUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMsgFromInfoStatus : >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return-object v2

    .line 376
    .end local v2    # "message":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 377
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v3, "OmaDrmUtils"

    const-string v4, "Unsupported encoding type"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string v2, ""

    .restart local v2    # "message":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getVideoThumbnail(Lcom/mediatek/drm/OmaDrmClient;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "drmClient"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "targetWidth"    # I

    .prologue
    const/4 v8, 0x0

    .line 672
    const-string v9, "OmaDrmUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getVideoThumbnail honge ,targetWidth: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v0, 0x0

    .line 674
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez p0, :cond_1

    .line 675
    const-string v8, "OmaDrmUtils"

    const-string v9, "omadrmclient instance is null."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v0

    .line 712
    :cond_0
    :goto_0
    return-object v8

    .line 678
    :cond_1
    invoke-virtual {p0, p1, v8}, Lcom/mediatek/drm/OmaDrmClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 679
    const-string v8, "OmaDrmUtils"

    const-string v9, "getVideoThumbnail honge ,not drm file"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v0

    .line 680
    goto :goto_0

    .line 682
    :cond_2
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 684
    .local v4, "retriever":Landroid/media/MediaMetadataRetriever;
    if-eqz p1, :cond_3

    .line 685
    :try_start_0
    invoke-virtual {v4, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 687
    :cond_3
    const-wide/16 v10, -0x1

    invoke-virtual {v4, v10, v11}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 694
    :try_start_1
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 700
    :goto_1
    if-eqz v0, :cond_0

    .line 704
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 705
    .local v7, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 706
    .local v3, "height":I
    if-le v7, p2, :cond_4

    .line 707
    int-to-float v8, p2

    int-to-float v9, v7

    div-float v5, v8, v9

    .line 708
    .local v5, "scale":F
    int-to-float v8, v7

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 709
    .local v6, "w":I
    int-to-float v8, v3

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 710
    .local v2, "h":I
    const/4 v8, 0x1

    invoke-static {v0, v6, v2, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .end local v2    # "h":I
    .end local v5    # "scale":F
    .end local v6    # "w":I
    :cond_4
    move-object v8, v0

    .line 712
    goto :goto_0

    .line 695
    .end local v3    # "height":I
    .end local v7    # "width":I
    :catch_0
    move-exception v1

    .line 697
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v9, "OmaDrmUtils"

    const-string v10, "retriever release error."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 688
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v9

    .line 694
    :try_start_2
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 695
    :catch_2
    move-exception v1

    .line 697
    .restart local v1    # "ex":Ljava/lang/RuntimeException;
    const-string v9, "OmaDrmUtils"

    const-string v10, "retriever release error."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 690
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v9

    .line 694
    :try_start_3
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    .line 695
    :catch_4
    move-exception v1

    .line 697
    .restart local v1    # "ex":Ljava/lang/RuntimeException;
    const-string v9, "OmaDrmUtils"

    const-string v10, "retriever release error."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 693
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v8

    .line 694
    :try_start_4
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    .line 698
    :goto_2
    throw v8

    .line 695
    :catch_5
    move-exception v1

    .line 697
    .restart local v1    # "ex":Ljava/lang/RuntimeException;
    const-string v9, "OmaDrmUtils"

    const-string v10, "retriever release error."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static isDrmDcfFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 533
    const-string v0, "OmaDrmUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDrmDcfFile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    if-eqz p0, :cond_0

    .line 535
    const-string v0, "application/vnd.oma.drm.content"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 540
    :goto_0
    return v0

    .line 537
    :cond_0
    if-eqz p1, :cond_1

    .line 538
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".dcf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 540
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDrmFile(Ljava/lang/String;)Z
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 477
    const-string v0, "OmaDrmUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDrmFile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    if-eqz p0, :cond_1

    const-string v0, "application/vnd.oma.drm.message"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/vnd.oma.drm.content"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDrmMsgFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 512
    const-string v0, "OmaDrmUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDrmMsgFile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    if-eqz p0, :cond_0

    .line 514
    const-string v0, "application/vnd.oma.drm.message"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 519
    :goto_0
    return v0

    .line 516
    :cond_0
    if-eqz p1, :cond_1

    .line 517
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 519
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDrmRightsFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 555
    const-string v2, "OmaDrmUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDrmRightsFile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    if-eqz p0, :cond_2

    .line 557
    const-string v2, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 564
    :cond_1
    :goto_0
    return v0

    .line 560
    :cond_2
    if-eqz p1, :cond_1

    .line 561
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".dr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".drc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static isDrmSuffix(Ljava/lang/String;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 495
    const-string v0, "OmaDrmUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDrmSuffix : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".dcf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static rescanDrmMediaFiles(Landroid/content/Context;Ljava/lang/String;Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;)I
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drmContentUri"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;

    .prologue
    .line 108
    const-string v3, "OmaDrmUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "rescanDrmMediaFiles : "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, " with callback "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 111
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v4, "drm_content_uri=?"

    .line 112
    .local v4, "where":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v5, v3

    .line 113
    .local v5, "whereArgs":[Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v11, "pathArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v3, Lcom/mediatek/drm/OmaDrmUtils;->CID_URIS:[Landroid/net/Uri;

    array-length v10, v3

    .line 115
    .local v10, "length":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v10, :cond_2

    .line 116
    sget-object v3, Lcom/mediatek/drm/OmaDrmUtils;->CID_URIS:[Landroid/net/Uri;

    aget-object v2, v3, v9

    .line 117
    .local v2, "uri":Landroid/net/Uri;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v15, "_data"

    aput-object v15, v3, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 118
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 119
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 122
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 115
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 126
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 127
    .local v14, "total":I
    const/4 v3, 0x1

    if-ge v14, v3, :cond_4

    .line 128
    if-eqz p2, :cond_3

    .line 129
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;->onScanCompletedAll(I)V

    .line 147
    :cond_3
    return v14

    .line 132
    :cond_4
    new-array v12, v14, [Ljava/lang/String;

    .line 133
    .local v12, "paths":[Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 134
    if-eqz p2, :cond_5

    .line 135
    new-instance v7, Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;

    move-object/from16 v0, p2

    invoke-direct {v7, v0, v14}, Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;-><init>(Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;I)V

    .line 136
    .local v7, "clientProxy":Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v12, v3, v7}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 141
    .end local v7    # "clientProxy":Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;
    :goto_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 142
    .local v13, "size":I
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v13, :cond_3

    .line 143
    const-string v6, "OmaDrmUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "rescanDrmMediaFiles : #"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, " path="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 138
    .end local v13    # "size":I
    :cond_5
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v12, v3, v6}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_2
.end method

.method public static scanDrmMediaFile(Landroid/content/Context;Ljava/lang/String;Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;

    .prologue
    const/4 v5, 0x0

    .line 160
    const-string v2, "OmaDrmUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scanDrmMediaFile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with callback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 163
    .local v1, "paths":[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 164
    new-instance v0, Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;

    array-length v2, v1

    invoke-direct {v0, p2, v2}, Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;-><init>(Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;I)V

    .line 165
    .local v0, "clientProxy":Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;
    invoke-static {p0, v1, v5, v0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 170
    .end local v0    # "clientProxy":Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;
    :goto_0
    array-length v2, v1

    return v2

    .line 167
    :cond_0
    invoke-static {p0, v1, v5, v5}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_0
.end method
