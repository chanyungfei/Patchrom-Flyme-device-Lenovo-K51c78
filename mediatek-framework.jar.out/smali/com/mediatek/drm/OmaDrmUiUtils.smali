.class public Lcom/mediatek/drm/OmaDrmUiUtils;
.super Ljava/lang/Object;
.source "OmaDrmUiUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;,
        Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;
    }
.end annotation


# static fields
.field private static final OMA_DRM_FL_ONLY:Z

.field private static final TAG:Ljava/lang/String; = "OmaDrmUiUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    const-string v1, "drm.forwardlock.only"

    const-string v2, "no"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "drmFLOnly":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/mediatek/drm/OmaDrmUiUtils;->OMA_DRM_FL_ONLY:Z

    .line 74
    return-void

    .line 72
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1060
    return-void
.end method

.method private static checkCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1145
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;>;"
    const-string v2, "OmaDrmUiUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkCustomAlertDialog : check existing dialog @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    monitor-enter p0

    .line 1149
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1150
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1151
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    .line 1152
    .local v0, "dialog":Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    const-string v2, "OmaDrmUiUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkCustomAlertDialog : existing dialog @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->getCreatorContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    invoke-virtual {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->getCreatorContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1154
    const-string v2, "OmaDrmUiUtils"

    const-string v3, "checkCustomAlertDialog : context match, dismiss it"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    invoke-virtual {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->dismiss()V

    .line 1159
    .end local v0    # "dialog":Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    :cond_1
    monitor-exit p0

    .line 1160
    return-void

    .line 1159
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static overlayBitmap(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bgdBmpId"    # I
    .param p3, "frontId"    # I

    .prologue
    .line 190
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 191
    .local v0, "bgdBmp":Landroid/graphics/Bitmap;
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 192
    .local v2, "front":Landroid/graphics/drawable/Drawable;
    invoke-static {p0, v0, v2}, Lcom/mediatek/drm/OmaDrmUiUtils;->overlayBitmap(Lcom/mediatek/drm/OmaDrmClient;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 193
    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 194
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 195
    const/4 v0, 0x0

    .line 197
    :cond_0
    return-object v1
.end method

.method public static overlayBitmap(Lcom/mediatek/drm/OmaDrmClient;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "bgdBmp"    # Landroid/graphics/Bitmap;
    .param p2, "front"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 156
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p0, :cond_1

    .line 157
    :cond_0
    const-string v8, "OmaDrmUiUtils"

    const-string v9, "overlayBitmap : invalid parameters"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    .line 176
    :goto_0
    return-object v0

    .line 161
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 164
    .local v0, "bMutable":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 166
    .local v3, "overlayCanvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_2

    .line 167
    invoke-virtual {v3, p1, v11, v11, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 169
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 170
    .local v5, "overlayWidth":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 171
    .local v4, "overlayHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int v1, v7, v5

    .line 172
    .local v1, "left":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int v6, v7, v4

    .line 173
    .local v6, "top":I
    new-instance v2, Landroid/graphics/Rect;

    add-int v7, v1, v5

    add-int v8, v6, v4

    invoke-direct {v2, v1, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 174
    .local v2, "newBounds":Landroid/graphics/Rect;
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 175
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public static overlayBitmapSkew(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bgdBmpId"    # I
    .param p3, "frontId"    # I

    .prologue
    .line 134
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    .local v0, "bgdBmp":Landroid/graphics/Bitmap;
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 136
    .local v2, "front":Landroid/graphics/drawable/Drawable;
    invoke-static {p0, v0, v2}, Lcom/mediatek/drm/OmaDrmUiUtils;->overlayBitmapSkew(Lcom/mediatek/drm/OmaDrmClient;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 137
    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 138
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 139
    const/4 v0, 0x0

    .line 141
    :cond_0
    return-object v1
.end method

.method public static overlayBitmapSkew(Lcom/mediatek/drm/OmaDrmClient;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "bgdBmp"    # Landroid/graphics/Bitmap;
    .param p2, "front"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 87
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p0, :cond_1

    .line 88
    :cond_0
    const-string v12, "OmaDrmUiUtils"

    const-string v13, "overlayBitmapSkew : invalid parameters"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v1, 0x0

    .line 119
    :goto_0
    return-object v1

    .line 93
    :cond_1
    const/4 v7, 0x0

    .line 94
    .local v7, "offset":I
    invoke-virtual {p0}, Lcom/mediatek/drm/OmaDrmClient;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 95
    .local v2, "context":Landroid/content/Context;
    instance-of v12, v2, Landroid/app/Activity;

    if-eqz v12, :cond_3

    .line 96
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 97
    .local v5, "metric":Landroid/util/DisplayMetrics;
    check-cast v2, Landroid/app/Activity;

    .end local v2    # "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 98
    iget v3, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 99
    .local v3, "densityDpi":I
    const/16 v12, 0x3c0

    div-int v7, v12, v3

    .line 104
    .end local v3    # "densityDpi":I
    .end local v5    # "metric":Landroid/util/DisplayMetrics;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    add-int/2addr v12, v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 107
    .local v1, "bMutable":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 109
    .local v8, "overlayCanvas":Landroid/graphics/Canvas;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v12

    if-nez v12, :cond_2

    .line 110
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 112
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 113
    .local v10, "overlayWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 114
    .local v9, "overlayHeight":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    sub-int v4, v12, v10

    .line 115
    .local v4, "left":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    sub-int v11, v12, v9

    .line 116
    .local v11, "top":I
    new-instance v6, Landroid/graphics/Rect;

    add-int v12, v4, v10

    add-int v13, v11, v9

    invoke-direct {v6, v4, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 117
    .local v6, "newBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 118
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 101
    .end local v1    # "bMutable":Landroid/graphics/Bitmap;
    .end local v4    # "left":I
    .end local v6    # "newBounds":Landroid/graphics/Rect;
    .end local v8    # "overlayCanvas":Landroid/graphics/Canvas;
    .end local v9    # "overlayHeight":I
    .end local v10    # "overlayWidth":I
    .end local v11    # "top":I
    .restart local v2    # "context":Landroid/content/Context;
    :cond_3
    const-string v12, "OmaDrmUiUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "overlayBitmapSkew : not in Activity context @"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static overlayDrmIcon(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/res/Resources;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "action"    # I
    .param p4, "bgdBmpId"    # I

    .prologue
    .line 299
    invoke-static {p1, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 300
    .local v0, "bgdBmp":Landroid/graphics/Bitmap;
    invoke-static {p0, p1, p2, p3, v0}, Lcom/mediatek/drm/OmaDrmUiUtils;->overlayDrmIcon(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/res/Resources;Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 301
    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 302
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 303
    const/4 v0, 0x0

    .line 305
    :cond_0
    return-object v1
.end method

.method public static overlayDrmIcon(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/res/Resources;Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "action"    # I
    .param p4, "bgdBmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 267
    invoke-virtual {p0, p2}, Lcom/mediatek/drm/OmaDrmClient;->getMethod(Ljava/lang/String;)I

    move-result v2

    .line 268
    .local v2, "method":I
    if-nez v2, :cond_0

    .line 269
    const-string v4, "OmaDrmUiUtils"

    const-string v5, "overlayDrmIcon : not drm type, no icon overlayed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local p4    # "bgdBmp":Landroid/graphics/Bitmap;
    :goto_0
    return-object p4

    .line 272
    .restart local p4    # "bgdBmp":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 273
    const-string v4, "OmaDrmUiUtils"

    const-string v5, "overlayDrmIcon : method FL, no icon overlayed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 277
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/drm/OmaDrmClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v3

    .line 278
    .local v3, "rightsStatus":I
    if-nez v3, :cond_2

    const v1, 0x802004a

    .line 282
    .local v1, "lockId":I
    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 283
    .local v0, "front":Landroid/graphics/drawable/Drawable;
    invoke-static {p0, p4, v0}, Lcom/mediatek/drm/OmaDrmUiUtils;->overlayBitmap(Lcom/mediatek/drm/OmaDrmClient;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p4

    goto :goto_0

    .line 278
    .end local v0    # "front":Landroid/graphics/drawable/Drawable;
    .end local v1    # "lockId":I
    :cond_2
    const v1, 0x802004b

    goto :goto_1
.end method

.method public static overlayDrmIconSkew(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/res/Resources;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "action"    # I
    .param p4, "bgdBmpId"    # I

    .prologue
    .line 245
    invoke-static {p1, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 246
    .local v0, "bgdBmp":Landroid/graphics/Bitmap;
    invoke-static {p0, p1, p2, p3, v0}, Lcom/mediatek/drm/OmaDrmUiUtils;->overlayDrmIconSkew(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/res/Resources;Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 247
    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 248
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 249
    const/4 v0, 0x0

    .line 251
    :cond_0
    return-object v1
.end method

.method public static overlayDrmIconSkew(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/res/Resources;Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "action"    # I
    .param p4, "bgdBmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 213
    invoke-virtual {p0, p2}, Lcom/mediatek/drm/OmaDrmClient;->getMethod(Ljava/lang/String;)I

    move-result v2

    .line 214
    .local v2, "method":I
    if-nez v2, :cond_0

    .line 215
    const-string v4, "OmaDrmUiUtils"

    const-string v5, "overlayDrmIconSkew : not drm type, no icon overlayed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .end local p4    # "bgdBmp":Landroid/graphics/Bitmap;
    :goto_0
    return-object p4

    .line 218
    .restart local p4    # "bgdBmp":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 219
    const-string v4, "OmaDrmUiUtils"

    const-string v5, "overlayDrmIconSkew : method FL, no icon overlayed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/drm/OmaDrmClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v3

    .line 224
    .local v3, "rightsStatus":I
    if-nez v3, :cond_2

    const v1, 0x802004a

    .line 228
    .local v1, "lockId":I
    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 229
    .local v0, "front":Landroid/graphics/drawable/Drawable;
    invoke-static {p0, p4, v0}, Lcom/mediatek/drm/OmaDrmUiUtils;->overlayBitmapSkew(Lcom/mediatek/drm/OmaDrmClient;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p4

    goto :goto_0

    .line 224
    .end local v0    # "front":Landroid/graphics/drawable/Drawable;
    .end local v1    # "lockId":I
    :cond_2
    const v1, 0x802004b

    goto :goto_1
.end method

.method public static showConsumeDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 385
    const-string v3, "OmaDrmUiUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showConsumeDialog @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    instance-of v3, p0, Landroid/app/Activity;

    if-nez v3, :cond_1

    .line 388
    const-string v3, "OmaDrmUiUtils"

    const-string v4, "showConsumeDialog : not an Acitivty context"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v2, 0x0

    .line 412
    :cond_0
    :goto_0
    return-object v2

    .line 392
    :cond_1
    sget-object v3, Lcom/mediatek/drm/OmaDrmClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    invoke-static {v3, p0}, Lcom/mediatek/drm/OmaDrmUiUtils;->checkCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 393
    sget-object v3, Lcom/mediatek/drm/OmaDrmClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    invoke-static {v3, p0}, Lcom/mediatek/drm/OmaDrmUiUtils;->validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v2

    .line 394
    .local v2, "result":Landroid/app/Dialog;
    if-nez v2, :cond_0

    .line 398
    new-instance v0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    sget-object v3, Lcom/mediatek/drm/OmaDrmClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 399
    .local v0, "dialog":Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 400
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v3, -0x1

    const v4, 0x104000a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, p1}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 403
    const/4 v3, -0x2

    const/high16 v4, 0x1040000

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, p1}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 406
    const v3, 0x108009b

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setIcon(I)V

    .line 407
    const v3, 0x805005b

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setTitle(I)V

    .line 408
    const v3, 0x805005c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 409
    invoke-virtual {v0, p2}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 410
    invoke-virtual {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->show()V

    move-object v2, v0

    .line 412
    goto :goto_0
.end method

.method public static showConsumeRightsDialogForVideoPlayer(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)Landroid/app/Dialog;
    .locals 6
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;

    .prologue
    .line 822
    const-string v3, "OmaDrmUiUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showConsumeRights @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    sget-object v3, Lcom/mediatek/drm/OmaDrmClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    invoke-static {v3, p1}, Lcom/mediatek/drm/OmaDrmUiUtils;->checkCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 825
    sget-object v3, Lcom/mediatek/drm/OmaDrmClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    invoke-static {v3, p1}, Lcom/mediatek/drm/OmaDrmUiUtils;->validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v2

    .line 826
    .local v2, "result":Landroid/app/Dialog;
    if-eqz v2, :cond_0

    .line 872
    .end local v2    # "result":Landroid/app/Dialog;
    :goto_0
    return-object v2

    .line 830
    .restart local v2    # "result":Landroid/app/Dialog;
    :cond_0
    new-instance v0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    sget-object v3, Lcom/mediatek/drm/OmaDrmClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    invoke-direct {v0, p1, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 831
    .local v0, "dialog":Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 833
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v3, -0x1

    const v4, 0x104000a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/mediatek/drm/OmaDrmUiUtils$5;

    invoke-direct {v5, p2}, Lcom/mediatek/drm/OmaDrmUiUtils$5;-><init>(Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)V

    invoke-virtual {v0, v3, v4, v5}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 845
    const/4 v3, -0x2

    const/high16 v4, 0x1040000

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/mediatek/drm/OmaDrmUiUtils$6;

    invoke-direct {v5, p2}, Lcom/mediatek/drm/OmaDrmUiUtils$6;-><init>(Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)V

    invoke-virtual {v0, v3, v4, v5}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 856
    const v3, 0x108009b

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setIcon(I)V

    .line 857
    const v3, 0x805005b

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setTitle(I)V

    .line 858
    const v3, 0x805005c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 860
    new-instance v3, Lcom/mediatek/drm/OmaDrmUiUtils$7;

    invoke-direct {v3, p2}, Lcom/mediatek/drm/OmaDrmUiUtils$7;-><init>(Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)V

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 870
    invoke-virtual {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->show()V

    move-object v2, v0

    .line 872
    goto :goto_0
.end method

.method public static showProtectionInfoDialog(Landroid/content/Context;Landroid/net/Uri;)Landroid/app/Dialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 424
    if-eqz p1, :cond_0

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v3, p1, :cond_1

    .line 425
    :cond_0
    const-string v3, "OmaDrmUiUtils"

    const-string v4, "showProtectionInfoDialog : Given uri is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :goto_0
    return-object v2

    .line 429
    :cond_1
    const/4 v1, 0x0

    .line 431
    .local v1, "path":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1}, Lcom/mediatek/drm/OmaDrmUtils;->convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 436
    invoke-static {p0, v1}, Lcom/mediatek/drm/OmaDrmUiUtils;->showProtectionInfoDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_0

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "OmaDrmUiUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalArgumentException @showProtectionInfoDialog : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static showProtectionInfoDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 36
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 448
    const-string v31, "OmaDrmUiUtils"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "showProtectionInfoDialog : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " @"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    if-eqz p1, :cond_0

    const-string v31, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2

    .line 451
    :cond_0
    const-string v31, "OmaDrmUiUtils"

    const-string v32, "showProtectionInfoDialog : Given path is not valid"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const/16 v21, 0x0

    .line 645
    :cond_1
    :goto_0
    return-object v21

    .line 455
    :cond_2
    sget-object v31, Lcom/mediatek/drm/OmaDrmClient;->sProtectionInfoDialogQueue:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/mediatek/drm/OmaDrmUiUtils;->validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v21

    .line 456
    .local v21, "result":Landroid/app/Dialog;
    if-nez v21, :cond_1

    .line 460
    const v31, 0x8070013

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v25

    .line 463
    .local v25, "scrollView":Landroid/view/View;
    const v31, 0x8110041

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 466
    .local v15, "fileNameView":Landroid/widget/TextView;
    if-nez v15, :cond_3

    .line 467
    const-string v31, "OmaDrmUiUtils"

    const-string v32, "showProtectionInfoDialog : the TextView: fileNameView is null"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/16 v21, 0x0

    goto :goto_0

    .line 471
    :cond_3
    const-string v31, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v26

    .line 472
    .local v26, "start":I
    const-string v31, "."

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 473
    .local v10, "end":I
    add-int/lit8 v31, v26, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 474
    .local v14, "fileNameStr":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    const v31, 0x8110042

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 479
    .local v18, "protectionInfoStatusView":Landroid/widget/TextView;
    if-nez v18, :cond_4

    .line 480
    const-string v31, "OmaDrmUiUtils"

    const-string v32, "showProtectionInfoDialog : the TextView: protectionInfoStatusView is null"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/16 v21, 0x0

    goto :goto_0

    .line 484
    :cond_4
    new-instance v7, Lcom/mediatek/drm/OmaDrmClient;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/mediatek/drm/OmaDrmClient;-><init>(Landroid/content/Context;)V

    .line 485
    .local v7, "client":Lcom/mediatek/drm/OmaDrmClient;
    const/16 v31, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v7, v0, v1}, Lcom/mediatek/drm/OmaDrmClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v24

    .line 486
    .local v24, "rightsStatus":I
    if-nez v24, :cond_5

    const v6, 0x805003f

    .line 489
    .local v6, "canForward":I
    :goto_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 491
    const v31, 0x8110043

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 494
    .local v5, "beginView":Landroid/widget/TextView;
    if-nez v5, :cond_6

    .line 495
    const-string v31, "OmaDrmUiUtils"

    const-string v32, "showProtectionInfoDialog : the TextView: beginView is null"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 486
    .end local v5    # "beginView":Landroid/widget/TextView;
    .end local v6    # "canForward":I
    :cond_5
    const v6, 0x8050040

    goto :goto_1

    .line 498
    .restart local v5    # "beginView":Landroid/widget/TextView;
    .restart local v6    # "canForward":I
    :cond_6
    const v31, 0x8110045

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 501
    .local v13, "endView":Landroid/widget/TextView;
    if-nez v13, :cond_7

    .line 502
    const-string v31, "OmaDrmUiUtils"

    const-string v32, "showProtectionInfoDialog : the TextView: endView is null"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 505
    :cond_7
    const v31, 0x8110047

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 508
    .local v29, "useLeftView":Landroid/widget/TextView;
    if-nez v29, :cond_8

    .line 509
    const-string v31, "OmaDrmUiUtils"

    const-string v32, "showProtectionInfoDialog : the TextView: useLeftView is null"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 512
    :cond_8
    const v31, 0x8110044

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 515
    .local v4, "beginValueView":Landroid/widget/TextView;
    if-nez v4, :cond_9

    .line 516
    const-string v31, "OmaDrmUiUtils"

    const-string v32, "showProtectionInfoDialog : the TextView: beginValueView is null"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 519
    :cond_9
    const v31, 0x8110046

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 522
    .local v12, "endValueView":Landroid/widget/TextView;
    if-nez v12, :cond_a

    .line 523
    const-string v31, "OmaDrmUiUtils"

    const-string v32, "showProtectionInfoDialog : the TextView: endValueView is null"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 526
    :cond_a
    const v31, 0x8110048

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 529
    .local v28, "useLeftValueView":Landroid/widget/TextView;
    if-nez v28, :cond_b

    .line 530
    const-string v31, "OmaDrmUiUtils"

    const-string v32, "showProtectionInfoDialog : the TextView: useLeftValueView is null"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 534
    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/mediatek/drm/OmaDrmClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 535
    .local v17, "mime":Ljava/lang/String;
    if-nez v17, :cond_c

    .line 536
    const-string v31, "OmaDrmUiUtils"

    const-string v32, "showProtectionInfoDialog : failed to get the original mime type"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 540
    :cond_c
    new-instance v9, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    sget-object v31, Lcom/mediatek/drm/OmaDrmClient;->sProtectionInfoDialogQueue:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v9, v0, v1}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 542
    .local v9, "dialog":Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 543
    .local v20, "res":Landroid/content/res/Resources;
    invoke-static/range {v17 .. v17}, Lcom/mediatek/drm/OmaDrmUtils;->getMediaActionType(Ljava/lang/String;)I

    move-result v31

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v7, v0, v1}, Lcom/mediatek/drm/OmaDrmClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v30

    .line 545
    .local v30, "values":Landroid/content/ContentValues;
    if-eqz v30, :cond_d

    invoke-virtual/range {v30 .. v30}, Landroid/content/ContentValues;->size()I

    move-result v31

    if-nez v31, :cond_10

    .line 546
    :cond_d
    const v31, 0x8050042

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 547
    const-string v31, ""

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    const-string v31, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/mediatek/drm/OmaDrmClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v8

    .line 551
    .local v8, "cv":Landroid/content/ContentValues;
    const/16 v22, 0x0

    .line 552
    .local v22, "rightsIssuer":Ljava/lang/String;
    if-eqz v8, :cond_e

    const-string v31, "drm_rights_issuer"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_e

    .line 553
    const-string v31, "drm_rights_issuer"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 557
    :cond_e
    move-object/from16 v23, v22

    .line 558
    .local v23, "rightsIssuerFinal":Ljava/lang/String;
    if-eqz v23, :cond_f

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_f

    .line 559
    const/16 v31, -0x1

    const v32, 0x8050048

    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    new-instance v33, Lcom/mediatek/drm/OmaDrmUiUtils$1;

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/drm/OmaDrmUiUtils$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    move/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v9, v0, v1, v2}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 633
    .end local v8    # "cv":Landroid/content/ContentValues;
    .end local v22    # "rightsIssuer":Ljava/lang/String;
    .end local v23    # "rightsIssuerFinal":Ljava/lang/String;
    :cond_f
    :goto_2
    const/16 v31, -0x3

    const v32, 0x104000a

    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    new-instance v33, Lcom/mediatek/drm/OmaDrmUiUtils$2;

    invoke-direct/range {v33 .. v33}, Lcom/mediatek/drm/OmaDrmUiUtils$2;-><init>()V

    move/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v9, v0, v1, v2}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 641
    const v31, 0x8050062

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setTitle(I)V

    .line 642
    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setView(Landroid/view/View;)V

    .line 643
    invoke-virtual {v9}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->show()V

    move-object/from16 v21, v9

    .line 645
    goto/16 :goto_0

    .line 572
    :cond_10
    const-string v31, "license_start_time"

    invoke-virtual/range {v30 .. v31}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_13

    .line 573
    const-string v31, "license_start_time"

    invoke-virtual/range {v30 .. v31}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v27

    .line 575
    .local v27, "startL":Ljava/lang/Long;
    if-nez v27, :cond_11

    .line 576
    const-string v31, "OmaDrmUiUtils"

    const-string v32, "showProtectionInfoDialog : startL is null"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 579
    :cond_11
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    const-wide/16 v34, -0x1

    cmp-long v31, v32, v34

    if-nez v31, :cond_12

    .line 580
    const v31, 0x8050041

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 589
    .end local v27    # "startL":Ljava/lang/Long;
    :goto_3
    const-string v31, "license_expiry_time"

    invoke-virtual/range {v30 .. v31}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_16

    .line 590
    const-string v31, "license_expiry_time"

    invoke-virtual/range {v30 .. v31}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    .line 592
    .local v11, "endL":Ljava/lang/Long;
    if-nez v11, :cond_14

    .line 593
    const-string v31, "OmaDrmUiUtils"

    const-string v32, "showProtectionInfoDialog : endL is null"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 583
    .end local v11    # "endL":Ljava/lang/Long;
    .restart local v27    # "startL":Ljava/lang/Long;
    :cond_12
    invoke-static/range {v27 .. v27}, Lcom/mediatek/drm/OmaDrmUiUtils;->toDateTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 586
    .end local v27    # "startL":Ljava/lang/Long;
    :cond_13
    const v31, 0x8050041

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 596
    .restart local v11    # "endL":Ljava/lang/Long;
    :cond_14
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    const-wide/16 v34, -0x1

    cmp-long v31, v32, v34

    if-nez v31, :cond_15

    .line 597
    const v31, 0x8050041

    move/from16 v0, v31

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    .line 606
    .end local v11    # "endL":Ljava/lang/Long;
    :goto_4
    const-string v31, "remaining_repeat_count"

    invoke-virtual/range {v30 .. v31}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_1b

    const-string v31, "max_repeat_count"

    invoke-virtual/range {v30 .. v31}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_1b

    .line 608
    const-string v31, "remaining_repeat_count"

    invoke-virtual/range {v30 .. v31}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    .line 610
    .local v19, "remainCount":Ljava/lang/Long;
    if-nez v19, :cond_17

    .line 611
    const-string v31, "OmaDrmUiUtils"

    const-string v32, "showProtectionInfoDialog : remainCount is null"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 600
    .end local v19    # "remainCount":Ljava/lang/Long;
    .restart local v11    # "endL":Ljava/lang/Long;
    :cond_15
    invoke-static {v11}, Lcom/mediatek/drm/OmaDrmUiUtils;->toDateTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 603
    .end local v11    # "endL":Ljava/lang/Long;
    :cond_16
    const v31, 0x8050041

    move/from16 v0, v31

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 614
    .restart local v19    # "remainCount":Ljava/lang/Long;
    :cond_17
    const-string v31, "max_repeat_count"

    invoke-virtual/range {v30 .. v31}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    .line 616
    .local v16, "maxCount":Ljava/lang/Long;
    if-nez v16, :cond_18

    .line 617
    const-string v31, "OmaDrmUiUtils"

    const-string v32, "showProtectionInfoDialog() : maxCount is null"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 620
    :cond_18
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    const-wide/16 v34, -0x1

    cmp-long v31, v32, v34

    if-eqz v31, :cond_19

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    const-wide/16 v34, -0x1

    cmp-long v31, v32, v34

    if-nez v31, :cond_1a

    .line 621
    :cond_19
    const v31, 0x8050041

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 624
    :cond_1a
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 628
    .end local v16    # "maxCount":Ljava/lang/Long;
    .end local v19    # "remainCount":Ljava/lang/Long;
    :cond_1b
    const v31, 0x8050041

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2
.end method

.method public static showRefreshLicenseDialog(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Landroid/net/Uri;)Landroid/app/Dialog;
    .locals 1
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 798
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/mediatek/drm/OmaDrmUiUtils;->showRefreshLicenseDialog(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Landroid/net/Uri;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static showRefreshLicenseDialog(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Landroid/net/Uri;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .locals 6
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    const/4 v2, 0x0

    .line 660
    const-string v3, "OmaDrmUiUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showRefreshLicenseDialog : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    sget-boolean v3, Lcom/mediatek/drm/OmaDrmUiUtils;->OMA_DRM_FL_ONLY:Z

    if-eqz v3, :cond_0

    .line 663
    const-string v3, "OmaDrmUiUtils"

    const-string v4, "showRefreshLicenseDialog : Forward-lock-only is set."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :goto_0
    return-object v2

    .line 666
    :cond_0
    if-eqz p2, :cond_1

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v3, p2, :cond_2

    .line 667
    :cond_1
    const-string v3, "OmaDrmUiUtils"

    const-string v4, "showRefreshLicenseDialog : Given uri is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 670
    :cond_2
    instance-of v3, p1, Landroid/app/Activity;

    if-nez v3, :cond_3

    .line 671
    const-string v3, "OmaDrmUiUtils"

    const-string v4, "showRefreshLicenseDialog : not an Activity context"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 675
    :cond_3
    const/4 v1, 0x0

    .line 677
    .local v1, "path":Ljava/lang/String;
    :try_start_0
    invoke-static {p1, p2}, Lcom/mediatek/drm/OmaDrmUtils;->convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 682
    invoke-static {p0, p1, v1, p3}, Lcom/mediatek/drm/OmaDrmUiUtils;->showRefreshLicenseDialog(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_0

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "OmaDrmUiUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalArgumentException @showRefreshLicenseDialog : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static showRefreshLicenseDialog(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 812
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/mediatek/drm/OmaDrmUiUtils;->showRefreshLicenseDialog(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static showRefreshLicenseDialog(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .locals 12
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 698
    const-string v9, "OmaDrmUiUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showRefreshLicenseDialog : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " @"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    sget-boolean v9, Lcom/mediatek/drm/OmaDrmUiUtils;->OMA_DRM_FL_ONLY:Z

    if-eqz v9, :cond_1

    .line 701
    const-string v9, "OmaDrmUiUtils"

    const-string v10, "showRefreshLicenseDialog : Forward-lock-only is set."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const/4 v6, 0x0

    .line 784
    :cond_0
    :goto_0
    return-object v6

    .line 704
    :cond_1
    if-eqz p2, :cond_2

    const-string v9, ""

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 705
    :cond_2
    const-string v9, "OmaDrmUiUtils"

    const-string v10, "showRefreshLicenseDialog : Given path is not valid"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const/4 v6, 0x0

    goto :goto_0

    .line 708
    :cond_3
    instance-of v9, p1, Landroid/app/Activity;

    if-nez v9, :cond_4

    .line 709
    const-string v9, "OmaDrmUiUtils"

    const-string v10, "showRefreshLicenseDialog : not an Activity context"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const/4 v6, 0x0

    goto :goto_0

    .line 713
    :cond_4
    sget-object v9, Lcom/mediatek/drm/OmaDrmClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    invoke-static {v9, p1}, Lcom/mediatek/drm/OmaDrmUiUtils;->checkCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 714
    sget-object v9, Lcom/mediatek/drm/OmaDrmClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    invoke-static {v9, p1}, Lcom/mediatek/drm/OmaDrmUiUtils;->validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v6

    .line 715
    .local v6, "result":Landroid/app/Dialog;
    if-nez v6, :cond_0

    .line 720
    invoke-virtual {p0, p2}, Lcom/mediatek/drm/OmaDrmClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 721
    .local v0, "cv":Landroid/content/ContentValues;
    const/4 v7, 0x0

    .line 723
    .local v7, "rightsIssuer":Ljava/lang/String;
    if-eqz v0, :cond_5

    const-string v9, "drm_rights_issuer"

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 724
    const-string v9, "drm_rights_issuer"

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 728
    :cond_5
    if-eqz v0, :cond_7

    const-string v9, "drm_method"

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 729
    const/4 v4, 0x0

    .line 730
    .local v4, "method":I
    const-string v9, "drm_method"

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 731
    .local v2, "m":Ljava/lang/Integer;
    if-eqz v2, :cond_6

    .line 732
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 734
    :cond_6
    const/4 v9, 0x1

    if-ne v4, v9, :cond_7

    .line 735
    const-string v9, "OmaDrmUiUtils"

    const-string v10, "showRefreshLicenseDialog: FL file, not show licese expired"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const/4 v6, 0x0

    goto :goto_0

    .line 741
    .end local v2    # "m":Ljava/lang/Integer;
    .end local v4    # "method":I
    :cond_7
    if-eqz v7, :cond_8

    const-string v9, "http"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 742
    :cond_8
    const v9, 0x805004b

    const/4 v10, 0x1

    invoke-static {p1, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 745
    const/4 v6, 0x0

    goto :goto_0

    .line 749
    :cond_9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 750
    .local v5, "res":Landroid/content/res/Resources;
    const v9, 0x805004a

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p2, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 754
    .local v3, "message":Ljava/lang/String;
    move-object v8, v7

    .line 756
    .local v8, "rightsIssuerFinal":Ljava/lang/String;
    new-instance v1, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    sget-object v9, Lcom/mediatek/drm/OmaDrmClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    invoke-direct {v1, p1, v9}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 758
    .local v1, "dialog":Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    const/4 v9, -0x1

    const v10, 0x8050048

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/mediatek/drm/OmaDrmUiUtils$3;

    invoke-direct {v11, v8, p1}, Lcom/mediatek/drm/OmaDrmUiUtils$3;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v1, v9, v10, v11}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 770
    const/4 v9, -0x2

    const/high16 v10, 0x1040000

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/mediatek/drm/OmaDrmUiUtils$4;

    invoke-direct {v11}, Lcom/mediatek/drm/OmaDrmUiUtils$4;-><init>()V

    invoke-virtual {v1, v9, v10, v11}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 778
    const v9, 0x108009b

    invoke-virtual {v1, v9}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setIcon(I)V

    .line 779
    const v9, 0x8050049

    invoke-virtual {v1, v9}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setTitle(I)V

    .line 780
    invoke-virtual {v1, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 781
    invoke-virtual {v1, p3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 782
    invoke-virtual {v1}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->show()V

    move-object v6, v1

    .line 784
    goto/16 :goto_0
.end method

.method public static showRefreshLicenseDialogForVideoPlayer(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Landroid/net/Uri;Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)Landroid/app/Dialog;
    .locals 6
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "listener"    # Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;

    .prologue
    const/4 v2, 0x0

    .line 926
    sget-boolean v3, Lcom/mediatek/drm/OmaDrmUiUtils;->OMA_DRM_FL_ONLY:Z

    if-eqz v3, :cond_0

    .line 927
    const-string v3, "OmaDrmUiUtils"

    const-string v4, "showRefreshLicense : Forward-lock-only is set"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :goto_0
    return-object v2

    .line 930
    :cond_0
    if-eqz p2, :cond_1

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v3, p2, :cond_2

    .line 931
    :cond_1
    const-string v3, "OmaDrmUiUtils"

    const-string v4, "showRefreshLicense : invalid uri"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 934
    :cond_2
    if-eqz p1, :cond_3

    instance-of v3, p1, Landroid/app/Activity;

    if-nez v3, :cond_4

    .line 935
    :cond_3
    const-string v3, "OmaDrmUiUtils"

    const-string v4, "showRefreshLicense : invalid context or not an Activity context"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 939
    :cond_4
    const/4 v1, 0x0

    .line 941
    .local v1, "path":Ljava/lang/String;
    :try_start_0
    invoke-static {p1, p2}, Lcom/mediatek/drm/OmaDrmUtils;->convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 946
    invoke-static {p0, p1, v1, p3}, Lcom/mediatek/drm/OmaDrmUiUtils;->showRefreshLicenseDialogForVideoPlayer(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Ljava/lang/String;Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_0

    .line 942
    :catch_0
    move-exception v0

    .line 943
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "OmaDrmUiUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalArgumenException @showRefreshLicense : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static showRefreshLicenseDialogForVideoPlayer(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Ljava/lang/String;Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)Landroid/app/Dialog;
    .locals 11
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 956
    const-string v7, "OmaDrmUiUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "showRefreshLicense @"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    sget-boolean v7, Lcom/mediatek/drm/OmaDrmUiUtils;->OMA_DRM_FL_ONLY:Z

    if-eqz v7, :cond_1

    .line 959
    const-string v7, "OmaDrmUiUtils"

    const-string v8, "showRefreshLicense : Forward-lock-only is set"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v1

    .line 1041
    :cond_0
    :goto_0
    return-object v4

    .line 962
    :cond_1
    if-eqz p2, :cond_2

    const-string v7, ""

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 963
    :cond_2
    const-string v7, "OmaDrmUiUtils"

    const-string v8, "showRefreshLicense : invalid path"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v1

    .line 964
    goto :goto_0

    .line 966
    :cond_3
    if-eqz p1, :cond_4

    instance-of v7, p1, Landroid/app/Activity;

    if-nez v7, :cond_5

    .line 967
    :cond_4
    const-string v7, "OmaDrmUiUtils"

    const-string v8, "showRefreshLicense : invalid context or not an Activity context"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v1

    .line 968
    goto :goto_0

    .line 971
    :cond_5
    sget-object v7, Lcom/mediatek/drm/OmaDrmClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    invoke-static {v7, p1}, Lcom/mediatek/drm/OmaDrmUiUtils;->checkCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 972
    sget-object v7, Lcom/mediatek/drm/OmaDrmClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    invoke-static {v7, p1}, Lcom/mediatek/drm/OmaDrmUiUtils;->validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v4

    .line 973
    .local v4, "result":Landroid/app/Dialog;
    if-nez v4, :cond_0

    .line 978
    invoke-virtual {p0, p2}, Lcom/mediatek/drm/OmaDrmClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 979
    .local v0, "cv":Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 980
    .local v5, "rightsIssuer":Ljava/lang/String;
    if-eqz v0, :cond_6

    const-string v7, "drm_rights_issuer"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 981
    const-string v7, "drm_rights_issuer"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 985
    :cond_6
    if-eqz v5, :cond_7

    const-string v7, "http"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 986
    :cond_7
    const v7, 0x805004b

    invoke-static {p1, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 989
    if-eqz p3, :cond_8

    .line 990
    const/4 v7, 0x2

    invoke-interface {p3, v7}, Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;->onOperated(I)V

    :cond_8
    move-object v4, v1

    .line 992
    goto :goto_0

    .line 996
    :cond_9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 997
    .local v3, "res":Landroid/content/res/Resources;
    const v7, 0x805004a

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1001
    .local v2, "message":Ljava/lang/String;
    move-object v6, v5

    .line 1003
    .local v6, "rightsIssuerFinal":Ljava/lang/String;
    new-instance v1, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    sget-object v7, Lcom/mediatek/drm/OmaDrmClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    invoke-direct {v1, p1, v7}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1005
    .local v1, "dialog":Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    const/4 v7, -0x1

    const v8, 0x8050048

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/mediatek/drm/OmaDrmUiUtils$10;

    invoke-direct {v9, v6, p1}, Lcom/mediatek/drm/OmaDrmUiUtils$10;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v1, v7, v8, v9}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1017
    const/4 v7, -0x2

    const/high16 v8, 0x1040000

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/mediatek/drm/OmaDrmUiUtils$11;

    invoke-direct {v9}, Lcom/mediatek/drm/OmaDrmUiUtils$11;-><init>()V

    invoke-virtual {v1, v7, v8, v9}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1025
    const v7, 0x108009b

    invoke-virtual {v1, v7}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setIcon(I)V

    .line 1026
    const v7, 0x8050049

    invoke-virtual {v1, v7}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setTitle(I)V

    .line 1027
    invoke-virtual {v1, v2}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1029
    new-instance v7, Lcom/mediatek/drm/OmaDrmUiUtils$12;

    invoke-direct {v7, p3}, Lcom/mediatek/drm/OmaDrmUiUtils$12;-><init>(Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)V

    invoke-virtual {v1, v7}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1039
    invoke-virtual {v1}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->show()V

    move-object v4, v1

    .line 1041
    goto/16 :goto_0
.end method

.method public static showSecureTimerInvalidDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 346
    const-string v3, "OmaDrmUiUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showSecureTimerInvalidDialog @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    instance-of v3, p0, Landroid/app/Activity;

    if-nez v3, :cond_1

    .line 349
    const-string v3, "OmaDrmUiUtils"

    const-string v4, "showSecureTimerInvalidDialog : not an Acitivty context"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v2, 0x0

    .line 369
    :cond_0
    :goto_0
    return-object v2

    .line 353
    :cond_1
    sget-object v3, Lcom/mediatek/drm/OmaDrmClient;->sSecureTimerDialogQueue:Ljava/util/ArrayList;

    invoke-static {v3, p0}, Lcom/mediatek/drm/OmaDrmUiUtils;->validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v2

    .line 354
    .local v2, "result":Landroid/app/Dialog;
    if-nez v2, :cond_0

    .line 358
    new-instance v0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    sget-object v3, Lcom/mediatek/drm/OmaDrmClient;->sSecureTimerDialogQueue:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 359
    .local v0, "dialog":Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 360
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v3, -0x1

    const v4, 0x104000a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, p1}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 363
    const v3, 0x108009b

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setIcon(I)V

    .line 364
    const v3, 0x8050052

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setTitle(I)V

    .line 365
    const v3, 0x8050056

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 366
    invoke-virtual {v0, p2}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 367
    invoke-virtual {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->show()V

    move-object v2, v0

    .line 369
    goto :goto_0
.end method

.method public static showSecureTimerInvalidDialogForVideoPlayer(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)Landroid/app/Dialog;
    .locals 6
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;

    .prologue
    .line 882
    const-string v3, "OmaDrmUiUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showSecureTimerInvalid @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    sget-object v3, Lcom/mediatek/drm/OmaDrmClient;->sSecureTimerDialogQueue:Ljava/util/ArrayList;

    invoke-static {v3, p1}, Lcom/mediatek/drm/OmaDrmUiUtils;->validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v2

    .line 885
    .local v2, "result":Landroid/app/Dialog;
    if-eqz v2, :cond_0

    .line 916
    .end local v2    # "result":Landroid/app/Dialog;
    :goto_0
    return-object v2

    .line 889
    .restart local v2    # "result":Landroid/app/Dialog;
    :cond_0
    new-instance v0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    sget-object v3, Lcom/mediatek/drm/OmaDrmClient;->sSecureTimerDialogQueue:Ljava/util/ArrayList;

    invoke-direct {v0, p1, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 890
    .local v0, "dialog":Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 892
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v3, -0x1

    const v4, 0x104000a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/mediatek/drm/OmaDrmUiUtils$8;

    invoke-direct {v5}, Lcom/mediatek/drm/OmaDrmUiUtils$8;-><init>()V

    invoke-virtual {v0, v3, v4, v5}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 900
    const v3, 0x108009b

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setIcon(I)V

    .line 901
    const v3, 0x8050052

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setTitle(I)V

    .line 902
    const v3, 0x8050056

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 904
    new-instance v3, Lcom/mediatek/drm/OmaDrmUiUtils$9;

    invoke-direct {v3, p2}, Lcom/mediatek/drm/OmaDrmUiUtils$9;-><init>(Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)V

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 914
    invoke-virtual {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->show()V

    move-object v2, v0

    .line 916
    goto :goto_0
.end method

.method private static toDateTimeString(Ljava/lang/Long;)Ljava/lang/String;
    .locals 8
    .param p0, "sec"    # Ljava/lang/Long;

    .prologue
    .line 1051
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 1052
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 1053
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1054
    .local v2, "str":Ljava/lang/String;
    return-object v2
.end method

.method private static validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .prologue
    .line 1125
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;>;"
    const-string v3, "OmaDrmUiUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "validateCustomAlertDialog : validate existing dialog @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    const/4 v2, 0x0

    .line 1129
    .local v2, "result":Landroid/app/Dialog;
    monitor-enter p0

    .line 1130
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1131
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1132
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    .line 1133
    .local v0, "dialog":Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    const-string v3, "OmaDrmUiUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "validateCustomAlertDialog : existing dialog @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->getCreatorContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    invoke-virtual {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->getCreatorContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1135
    const-string v3, "OmaDrmUiUtils"

    const-string v4, "validateCustomAlertDialog : context match, use this one"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    move-object v2, v0

    .line 1140
    .end local v0    # "dialog":Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    :cond_1
    monitor-exit p0

    .line 1141
    return-object v2

    .line 1140
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
