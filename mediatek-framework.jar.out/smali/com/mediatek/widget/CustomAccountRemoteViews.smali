.class public Lcom/mediatek/widget/CustomAccountRemoteViews;
.super Ljava/lang/Object;
.source "CustomAccountRemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;,
        Lcom/mediatek/widget/CustomAccountRemoteViews$IdIndex;
    }
.end annotation


# static fields
.field private static final MOSTACCOUNTNUMBER:I = 0x8

.field private static final ROWACCOUNTNUMBER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CustomAccountRemoteViews"


# instance fields
.field private final RESOURCE_ID:[[I

.field private mBigRemoteViews:Landroid/widget/RemoteViews;

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalRemoteViews:Landroid/widget/RemoteViews;

.field private mOtherAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/widget/CustomAccountRemoteViews;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "data":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;>;"
    const/4 v4, 0x0

    const/4 v3, 0x6

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x8

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v3

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->RESOURCE_ID:[[I

    .line 82
    new-instance v0, Landroid/widget/RemoteViews;

    const v1, 0x807001a

    invoke-direct {v0, p2, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mNormalRemoteViews:Landroid/widget/RemoteViews;

    .line 83
    new-instance v0, Landroid/widget/RemoteViews;

    const v1, 0x807000e

    invoke-direct {v0, p2, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    .line 85
    iput-object p3, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mData:Ljava/util/List;

    .line 86
    iput-object p1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mContext:Landroid/content/Context;

    .line 87
    iput v4, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mRequestCode:I

    .line 88
    return-void

    .line 33
    :array_0
    .array-data 4
        0x811007e
        0x8110024
        0x8110027
        0x8110028
        0x8110025
        0x8110026
    .end array-data

    :array_1
    .array-data 4
        0x811007f
        0x811000b
        0x811000e
        0x811000f
        0x811000c
        0x811000d
    .end array-data

    :array_2
    .array-data 4
        0x8110080
        0x811001f
        0x8110022
        0x8110023
        0x8110020
        0x8110021
    .end array-data

    :array_3
    .array-data 4
        0x8110081
        0x811001a
        0x811001d
        0x811001e
        0x811001b
        0x811001c
    .end array-data

    :array_4
    .array-data 4
        0x8110005
        0x8110006
        0x8110009
        0x811000a
        0x8110007
        0x8110008
    .end array-data

    :array_5
    .array-data 4
        0x8110083
        0x8110000
        0x8110003
        0x8110004
        0x8110001
        0x8110002
    .end array-data

    :array_6
    .array-data 4
        0x8110084
        0x8110015
        0x8110018
        0x8110019
        0x8110016
        0x8110017
    .end array-data

    :array_7
    .array-data 4
        0x8110085
        0x8110010
        0x8110013
        0x8110014
        0x8110011
        0x8110012
    .end array-data
.end method

.method private configureAccount([ILcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;)V
    .locals 8
    .param p1, "resourceId"    # [I
    .param p2, "accountInfo"    # Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 201
    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v5

    invoke-virtual {v1, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 203
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v3

    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 211
    :goto_0
    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 212
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v6

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 218
    :goto_1
    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getNumber()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 219
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v7

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 225
    :goto_2
    const-string v1, "CustomAccountRemoteViews"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "active: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->isActive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->isActive()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 229
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x4

    aget v2, p1, v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 230
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x5

    aget v2, p1, v2

    invoke-virtual {v1, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 237
    :goto_3
    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mRequestCode:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mRequestCode:I

    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x8000000

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 239
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v5

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 241
    .end local v0    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_0
    return-void

    .line 204
    :cond_1
    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getIconId()I

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v5

    invoke-virtual {v1, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 206
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v3

    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getIconId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 208
    :cond_2
    const-string v1, "CustomAccountRemoteViews"

    const-string v2, "--- The icon of account is null ---"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 214
    :cond_3
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v6

    invoke-virtual {v1, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 215
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v6

    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 221
    :cond_4
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v7

    invoke-virtual {v1, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 222
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v7

    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 233
    :cond_5
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x4

    aget v2, p1, v2

    invoke-virtual {v1, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 234
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x5

    aget v2, p1, v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_3
.end method

.method private generateOtherAccount()Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    .locals 5

    .prologue
    .line 192
    new-instance v1, Landroid/content/Intent;

    const-string v3, "SELECT_OTHER_ACCOUNTS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .local v1, "otherIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mContext:Landroid/content/Context;

    const v4, 0x80500cd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "other_accounts":Ljava/lang/String;
    new-instance v0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    const v3, 0x8020004

    const/4 v4, 0x0

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 196
    .local v0, "otherAccount":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    return-object v0
.end method

.method private hasActiveAccount(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    .line 184
    .local v0, "account":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    invoke-virtual {v0}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    const/4 v2, 0x1

    .line 188
    .end local v0    # "account":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private resetAccounts()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 174
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 175
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->RESOURCE_ID:[[I

    aget-object v2, v2, v0

    aget v2, v2, v3

    invoke-virtual {v1, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_0
    const/4 v0, 0x4

    :goto_1
    if-ge v0, v5, :cond_1

    .line 178
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->RESOURCE_ID:[[I

    aget-object v2, v2, v0

    aget v2, v2, v3

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 180
    :cond_1
    return-void
.end method


# virtual methods
.method public configureView()V
    .locals 11

    .prologue
    const v10, 0x8110082

    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x7

    .line 120
    iget-object v4, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mData:Ljava/util/List;

    if-eqz v4, :cond_5

    .line 122
    const-string v4, "CustomAccountRemoteViews"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---configureView---"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-direct {p0}, Lcom/mediatek/widget/CustomAccountRemoteViews;->resetAccounts()V

    .line 126
    iget-object v4, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_0

    .line 127
    iget-object v4, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v4, v10, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 132
    :goto_0
    iget-object v4, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v8, :cond_4

    .line 133
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    if-ge v1, v7, :cond_1

    .line 134
    const-string v4, "CustomAccountRemoteViews"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--- configure account id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v4, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mData:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    .line 138
    .local v0, "accountInfo":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    iget-object v4, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->RESOURCE_ID:[[I

    aget-object v3, v4, v1

    .line 139
    .local v3, "resourceId":[I
    invoke-direct {p0, v3, v0}, Lcom/mediatek/widget/CustomAccountRemoteViews;->configureAccount([ILcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;)V

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 129
    .end local v0    # "accountInfo":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    .end local v1    # "i":I
    .end local v3    # "resourceId":[I
    :cond_0
    iget-object v4, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v4, v10, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 141
    .restart local v1    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mData:Ljava/util/List;

    iget-object v5, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4, v7, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mOtherAccounts:Ljava/util/List;

    .line 142
    invoke-direct {p0}, Lcom/mediatek/widget/CustomAccountRemoteViews;->generateOtherAccount()Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    move-result-object v2

    .line 143
    .local v2, "otherAccount":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    iget-object v4, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mOtherAccounts:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/mediatek/widget/CustomAccountRemoteViews;->hasActiveAccount(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 144
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->setActiveStatus(Z)V

    .line 149
    :goto_2
    iget-object v4, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->RESOURCE_ID:[[I

    aget-object v4, v4, v7

    invoke-direct {p0, v4, v2}, Lcom/mediatek/widget/CustomAccountRemoteViews;->configureAccount([ILcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;)V

    .line 164
    .end local v1    # "i":I
    .end local v2    # "otherAccount":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    :cond_2
    :goto_3
    return-void

    .line 146
    .restart local v1    # "i":I
    .restart local v2    # "otherAccount":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    :cond_3
    invoke-virtual {v2, v9}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->setActiveStatus(Z)V

    goto :goto_2

    .line 152
    .end local v1    # "i":I
    .end local v2    # "otherAccount":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v4, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    if-ge v1, v8, :cond_2

    .line 153
    const-string v4, "CustomAccountRemoteViews"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--- configure account id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v4, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mData:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    .line 157
    .restart local v0    # "accountInfo":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    iget-object v4, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->RESOURCE_ID:[[I

    aget-object v3, v4, v1

    .line 158
    .restart local v3    # "resourceId":[I
    invoke-direct {p0, v3, v0}, Lcom/mediatek/widget/CustomAccountRemoteViews;->configureAccount([ILcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;)V

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 162
    .end local v0    # "accountInfo":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    .end local v1    # "i":I
    .end local v3    # "resourceId":[I
    :cond_5
    const-string v4, "CustomAccountRemoteViews"

    const-string v5, "Data can not be null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public getBigRemoteViews()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getNormalRemoteViews()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mNormalRemoteViews:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getOtherAccounts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mOtherAccounts:Ljava/util/List;

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;>;"
    iput-object p1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mData:Ljava/util/List;

    .line 114
    return-void
.end method
