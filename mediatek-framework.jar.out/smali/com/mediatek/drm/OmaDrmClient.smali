.class public Lcom/mediatek/drm/OmaDrmClient;
.super Ljava/lang/Object;
.source "OmaDrmClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/drm/OmaDrmClient$1;,
        Lcom/mediatek/drm/OmaDrmClient$Progress;,
        Lcom/mediatek/drm/OmaDrmClient$ProgressInfoListener;,
        Lcom/mediatek/drm/OmaDrmClient$ProgressListener;,
        Lcom/mediatek/drm/OmaDrmClient$getCidListener;
    }
.end annotation


# static fields
.field public static CTA_CANCEL_DONE:I = 0x0

.field public static CTA_DONE:I = 0x0

.field public static CTA_ERROR:I = 0x0

.field public static CTA_ERROR_BADKEY:I = 0x0

.field public static CTA_ERROR_CANCEL:I = 0x0

.field public static CTA_ERROR_GENRIC:I = 0x0

.field public static CTA_ERROR_INVALID_INPUT:I = 0x0

.field public static CTA_ERROR_NONE:I = 0x0

.field public static CTA_ERROR_NOSPACE:I = 0x0

.field public static CTA_MULTI_MEDIA_DECRYPT_DONE:I = 0x0

.field public static CTA_MULTI_MEDIA_ENCRYPT_DONE:I = 0x0

.field public static CTA_UPDATING:I = 0x0

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_UNKNOWN:I = -0x7d0

.field private static final TAG:Ljava/lang/String; = "OmaDrmClient"

.field public static sConsumeDialogQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsCtaDrmSupport:Z

.field private static sIsOmaDrmSupport:Z

.field public static sLicenseDialogQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field public static sProtectionInfoDialogQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field public static sSecureTimerDialogQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private mProgressInfoListener:Lcom/mediatek/drm/OmaDrmClient$ProgressInfoListener;

.field private mProgressListener:Lcom/mediatek/drm/OmaDrmClient$ProgressListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/drm/OmaDrmClient;->sSecureTimerDialogQueue:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/drm/OmaDrmClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/drm/OmaDrmClient;->sProtectionInfoDialogQueue:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/drm/OmaDrmClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    .line 96
    sput-boolean v2, Lcom/mediatek/drm/OmaDrmClient;->sIsOmaDrmSupport:Z

    .line 99
    sput-boolean v2, Lcom/mediatek/drm/OmaDrmClient;->sIsCtaDrmSupport:Z

    .line 102
    const-string v0, "ro.mtk_oma_drm_support"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/mediatek/drm/OmaDrmClient;->sIsOmaDrmSupport:Z

    .line 103
    const-string v0, "ro.mtk_cta_drm_support"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    sput-boolean v1, Lcom/mediatek/drm/OmaDrmClient;->sIsCtaDrmSupport:Z

    .line 847
    sput v2, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_NONE:I

    .line 851
    const/4 v0, -0x1

    sput v0, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_GENRIC:I

    .line 855
    const/4 v0, -0x2

    sput v0, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_BADKEY:I

    .line 859
    const/4 v0, -0x3

    sput v0, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_NOSPACE:I

    .line 863
    const/4 v0, -0x5

    sput v0, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_CANCEL:I

    .line 867
    const/4 v0, -0x6

    sput v0, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_INVALID_INPUT:I

    .line 871
    const/4 v0, -0x7

    sput v0, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR:I

    .line 875
    const/16 v0, 0x64

    sput v0, Lcom/mediatek/drm/OmaDrmClient;->CTA_DONE:I

    .line 879
    const/16 v0, 0x65

    sput v0, Lcom/mediatek/drm/OmaDrmClient;->CTA_CANCEL_DONE:I

    .line 883
    const/16 v0, 0x66

    sput v0, Lcom/mediatek/drm/OmaDrmClient;->CTA_UPDATING:I

    .line 888
    const/16 v0, 0x6e

    sput v0, Lcom/mediatek/drm/OmaDrmClient;->CTA_MULTI_MEDIA_ENCRYPT_DONE:I

    .line 893
    const/16 v0, 0x6f

    sput v0, Lcom/mediatek/drm/OmaDrmClient;->CTA_MULTI_MEDIA_DECRYPT_DONE:I

    return-void

    :cond_0
    move v0, v2

    .line 102
    goto :goto_0

    :cond_1
    move v1, v2

    .line 103
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1255
    iput-object v1, p0, Lcom/mediatek/drm/OmaDrmClient;->mProgressListener:Lcom/mediatek/drm/OmaDrmClient$ProgressListener;

    .line 1256
    new-instance v0, Lcom/mediatek/drm/OmaDrmClient$ProgressInfoListener;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/drm/OmaDrmClient$ProgressInfoListener;-><init>(Lcom/mediatek/drm/OmaDrmClient;Lcom/mediatek/drm/OmaDrmClient$1;)V

    iput-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mProgressInfoListener:Lcom/mediatek/drm/OmaDrmClient$ProgressInfoListener;

    .line 112
    const-string v0, "OmaDrmClient"

    const-string v1, "create OmaDrmClient instance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iput-object p1, p0, Lcom/mediatek/drm/OmaDrmClient;->mContext:Landroid/content/Context;

    .line 114
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/drm/OmaDrmClient;)Lcom/mediatek/drm/OmaDrmClient$ProgressListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/drm/OmaDrmClient;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mProgressListener:Lcom/mediatek/drm/OmaDrmClient$ProgressListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/drm/OmaDrmClient;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/mediatek/drm/OmaDrmClient;->parseEventMsg(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private getResultFromDrmInfo(Landroid/drm/DrmInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "info"    # Landroid/drm/DrmInfo;

    .prologue
    .line 1261
    const/4 v0, 0x0

    .line 1262
    .local v0, "data":[B
    if-eqz p1, :cond_0

    .line 1263
    invoke-virtual {p1}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v0

    .line 1265
    :cond_0
    const-string v2, ""

    .line 1266
    .local v2, "message":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1269
    :try_start_0
    new-instance v2, Ljava/lang/String;

    .end local v2    # "message":Ljava/lang/String;
    const-string v3, "US-ASCII"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1275
    .restart local v2    # "message":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v2

    .line 1270
    .end local v2    # "message":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1271
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v3, "OmaDrmClient"

    const-string v4, "Unsupported hongen encoding type of the returned DrmInfo data"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    const-string v2, ""

    .restart local v2    # "message":Ljava/lang/String;
    goto :goto_0
.end method

.method public static isCtaDrmSupport()Z
    .locals 1

    .prologue
    .line 1284
    sget-boolean v0, Lcom/mediatek/drm/OmaDrmClient;->sIsCtaDrmSupport:Z

    return v0
.end method

.method public static isOmaDrmEnabled()Z
    .locals 1

    .prologue
    .line 814
    sget-boolean v0, Lcom/mediatek/drm/OmaDrmClient;->sIsOmaDrmSupport:Z

    return v0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/mediatek/drm/OmaDrmClient;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    const-string v0, "OmaDrmClient"

    const-string v1, "new OmaDrmClient instance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v0, Lcom/mediatek/drm/OmaDrmClient;

    invoke-direct {v0, p0}, Lcom/mediatek/drm/OmaDrmClient;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private parseEventMsg(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1193
    new-instance v1, Ljava/util/HashMap;

    const/4 v5, 0x4

    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 1194
    .local v1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "::"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1195
    .local v0, "dataArr":[Ljava/lang/String;
    array-length v4, v0

    .line 1196
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 1197
    aget-object v5, v0, v2

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1198
    .local v3, "keyValue":[Ljava/lang/String;
    const/4 v5, 0x2

    array-length v6, v3

    if-ne v5, v6, :cond_0

    .line 1199
    const/4 v5, 0x0

    aget-object v5, v3, v5

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1203
    :cond_0
    const-string v5, "OmaDrmClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hongen map is not right:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1206
    .end local v3    # "keyValue":[Ljava/lang/String;
    :cond_1
    return-object v1
.end method


# virtual methods
.method public acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;
    .locals 1
    .param p1, "drmInfoRequest"    # Landroid/drm/DrmInfoRequest;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    return-object v0
.end method

.method public acquireRights(Landroid/drm/DrmInfoRequest;)I
    .locals 1
    .param p1, "drmInfoRequest"    # Landroid/drm/DrmInfoRequest;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->acquireRights(Landroid/drm/DrmInfoRequest;)I

    move-result v0

    return v0
.end method

.method public canHandle(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmManagerClient;->canHandle(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public canHandle(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public cancel(Ljava/io/FileDescriptor;)I
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 1091
    const-string v4, "OmaDrmClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cancel() fd "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",toString "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v4, 0x7e5

    const-string v5, "application/vnd.mtk.cta5.message"

    invoke-direct {v2, v4, v5}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1094
    .local v2, "request":Landroid/drm/DrmInfoRequest;
    const-string v4, "action"

    const-string v5, "CTA5Cancel"

    invoke-virtual {v2, v4, v5}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1095
    const-string v4, "CTA5Fd"

    invoke-virtual {v2, v4, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1097
    iget-object v4, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v4, v2}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 1098
    .local v0, "info":Landroid/drm/DrmInfo;
    invoke-direct {p0, v0}, Lcom/mediatek/drm/OmaDrmClient;->getResultFromDrmInfo(Landroid/drm/DrmInfo;)Ljava/lang/String;

    move-result-object v1

    .line 1099
    .local v1, "message":Ljava/lang/String;
    const-string v4, "success"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget v3, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_NONE:I

    .line 1101
    .local v3, "result":I
    :goto_0
    return v3

    .line 1099
    .end local v3    # "result":I
    :cond_0
    sget v3, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_CANCEL:I

    goto :goto_0
.end method

.method public changePassword(Ljava/io/FileDescriptor;[B[B)I
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "oldKey"    # [B
    .param p3, "newKey"    # [B

    .prologue
    .line 1024
    const-string v2, "OmaDrmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changePassword() : oldKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    new-instance v1, Landroid/drm/DrmInfoRequest;

    const/16 v2, 0x7e5

    const-string v3, "application/vnd.mtk.cta5.message"

    invoke-direct {v1, v2, v3}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1027
    .local v1, "request":Landroid/drm/DrmInfoRequest;
    const-string v2, "action"

    const-string v3, "CTA5ChangePassword"

    invoke-virtual {v1, v2, v3}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1029
    const-string v2, "CTA5Fd"

    invoke-virtual {v1, v2, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1030
    const-string v2, "CTA5oldKey"

    invoke-virtual {v1, v2, p2}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1031
    const-string v2, "CTA5newKey"

    invoke-virtual {v1, v2, p3}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1032
    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, v1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 1033
    .local v0, "info":Landroid/drm/DrmInfo;
    sget v2, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_NONE:I

    return v2
.end method

.method public checkRightsStatus(Landroid/net/Uri;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Landroid/net/Uri;I)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "action"    # I

    .prologue
    .line 440
    const-string v1, "OmaDrmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkRightsStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v1, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v1, p1, p2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Landroid/net/Uri;I)I

    move-result v0

    .line 442
    .local v0, "result":I
    const-string v1, "OmaDrmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkRightsStatus : result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return v0
.end method

.method public checkRightsStatus(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 393
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Ljava/lang/String;I)I
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "action"    # I

    .prologue
    .line 418
    const-string v1, "OmaDrmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkRightsStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v1, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v1, p1, p2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    .line 420
    .local v0, "result":I
    const-string v1, "OmaDrmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkRightsStatus : result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return v0
.end method

.method public clearToken(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 1323
    const-string v4, "OmaDrmClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearToken filePath:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    const/4 v3, 0x0

    .line 1325
    .local v3, "result":Z
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v4, 0x7e6

    const-string v5, "application/vnd.mtk.cta5.message"

    invoke-direct {v2, v4, v5}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1327
    .local v2, "request":Landroid/drm/DrmInfoRequest;
    const-string v4, "action"

    const-string v5, "CTA5Cleartoken"

    invoke-virtual {v2, v4, v5}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1328
    const-string v4, "CTA5FilePath"

    invoke-virtual {v2, v4, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1329
    const-string v4, "CTA5Token"

    invoke-virtual {v2, v4, p2}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1330
    iget-object v4, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v4, v2}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 1331
    .local v0, "info":Landroid/drm/DrmInfo;
    invoke-direct {p0, v0}, Lcom/mediatek/drm/OmaDrmClient;->getResultFromDrmInfo(Landroid/drm/DrmInfo;)Ljava/lang/String;

    move-result-object v1

    .line 1332
    .local v1, "message":Ljava/lang/String;
    const-string v4, "success"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 1333
    :goto_0
    return v3

    .line 1332
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public consumeRights(Landroid/net/Uri;I)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "action"    # I

    .prologue
    const/16 v2, -0x7d0

    .line 669
    const-string v3, "OmaDrmClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "consumeRights: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    if-eqz p1, :cond_0

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v3, p1, :cond_1

    .line 672
    :cond_0
    const-string v3, "OmaDrmClient"

    const-string v4, "consumeRights : Given uri is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :goto_0
    return v2

    .line 675
    :cond_1
    invoke-static {p2}, Lcom/mediatek/drm/OmaDrmStore$Action;->isValid(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 676
    const-string v3, "OmaDrmClient"

    const-string v4, "consumeRights : Given action is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 680
    :cond_2
    const/4 v1, 0x0

    .line 682
    .local v1, "path":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/drm/OmaDrmClient;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/mediatek/drm/OmaDrmUtils;->convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 687
    invoke-virtual {p0, v1, p2}, Lcom/mediatek/drm/OmaDrmClient;->consumeRights(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 683
    :catch_0
    move-exception v0

    .line 684
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "OmaDrmClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalArgumentException @consumeRights : "

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

.method public consumeRights(Ljava/lang/String;I)I
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "action"    # I

    .prologue
    const/16 v5, -0x7d0

    .line 699
    const-string v6, "OmaDrmClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "consumeRights : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with action "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    if-eqz p1, :cond_0

    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 702
    :cond_0
    const-string v6, "OmaDrmClient"

    const-string v7, "consumeRights : Given path is not valid"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_1
    :goto_0
    return v5

    .line 705
    :cond_2
    invoke-static {p2}, Lcom/mediatek/drm/OmaDrmStore$Action;->isValid(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 706
    const-string v6, "OmaDrmClient"

    const-string v7, "consumeRights : Given action is not valid"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 711
    :cond_3
    new-instance v4, Landroid/drm/DrmInfoRequest;

    const/16 v6, 0x7e5

    const-string v7, "application/vnd.oma.drm.content"

    invoke-direct {v4, v6, v7}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 714
    .local v4, "request":Landroid/drm/DrmInfoRequest;
    const-string v6, "action"

    const-string v7, "consumeRights"

    invoke-virtual {v4, v6, v7}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 716
    const-string v6, "data"

    invoke-virtual {v4, v6, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 717
    const-string v6, "data_extra_1"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 719
    iget-object v6, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v6, v4}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v2

    .line 722
    .local v2, "info":Landroid/drm/DrmInfo;
    invoke-virtual {v2}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v0

    .line 723
    .local v0, "data":[B
    const-string v3, ""

    .line 724
    .local v3, "message":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 727
    :try_start_0
    new-instance v3, Ljava/lang/String;

    .end local v3    # "message":Ljava/lang/String;
    const-string v6, "US-ASCII"

    invoke-direct {v3, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    .restart local v3    # "message":Ljava/lang/String;
    :cond_4
    :goto_1
    const-string v6, "OmaDrmClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "consumeRights : >"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const-string v6, "success"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    .line 728
    .end local v3    # "message":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 729
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, "OmaDrmClient"

    const-string v7, "Unsupported encoding type of the returned DrmInfo data"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const-string v3, ""

    .restart local v3    # "message":Ljava/lang/String;
    goto :goto_1
.end method

.method public decrypt(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)I
    .locals 5
    .param p1, "cipher_fd"    # Ljava/io/FileDescriptor;
    .param p2, "clear_fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 957
    const-string v2, "OmaDrmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decrypt() : cipher_fd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", clear_fd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 959
    :cond_0
    const-string v2, "OmaDrmClient"

    const-string v3, "encrypt bad input parameters"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    sget v2, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_INVALID_INPUT:I

    .line 968
    :goto_0
    return v2

    .line 962
    :cond_1
    new-instance v1, Landroid/drm/DrmInfoRequest;

    const/16 v2, 0x7e5

    const-string v3, "application/vnd.mtk.cta5.message"

    invoke-direct {v1, v2, v3}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 964
    .local v1, "request":Landroid/drm/DrmInfoRequest;
    const-string v2, "action"

    const-string v3, "CTA5Decrypt"

    invoke-virtual {v1, v2, v3}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 965
    const-string v2, "CTA5clearFd"

    invoke-virtual {v1, v2, p2}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 966
    const-string v2, "CTA5cipherFd"

    invoke-virtual {v1, v2, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 967
    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, v1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 968
    .local v0, "info":Landroid/drm/DrmInfo;
    sget v2, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_NONE:I

    goto :goto_0
.end method

.method public decrypt(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[B)I
    .locals 5
    .param p1, "cipher_fd"    # Ljava/io/FileDescriptor;
    .param p2, "clear_fd"    # Ljava/io/FileDescriptor;
    .param p3, "key"    # [B

    .prologue
    .line 982
    const-string v2, "OmaDrmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decrypt() : cipher_fd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", clear_fd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 984
    :cond_0
    const-string v2, "OmaDrmClient"

    const-string v3, "encrypt bad input parameters"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    sget v2, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_INVALID_INPUT:I

    .line 994
    :goto_0
    return v2

    .line 987
    :cond_1
    new-instance v1, Landroid/drm/DrmInfoRequest;

    const/16 v2, 0x7e5

    const-string v3, "application/vnd.mtk.cta5.message"

    invoke-direct {v1, v2, v3}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 989
    .local v1, "request":Landroid/drm/DrmInfoRequest;
    const-string v2, "action"

    const-string v3, "CTA5Decrypt"

    invoke-virtual {v1, v2, v3}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 990
    const-string v2, "CTA5clearFd"

    invoke-virtual {v1, v2, p2}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 991
    const-string v2, "CTA5cipherFd"

    invoke-virtual {v1, v2, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 992
    const-string v2, "CTA5key"

    invoke-virtual {v1, v2, p3}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 993
    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, v1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 994
    .local v0, "info":Landroid/drm/DrmInfo;
    sget v2, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_NONE:I

    goto :goto_0
.end method

.method public encrypt(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)I
    .locals 5
    .param p1, "clear_fd"    # Ljava/io/FileDescriptor;
    .param p2, "cipher_fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 904
    const-string v2, "OmaDrmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encrypt() : cipher_fd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", clear_fd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 906
    :cond_0
    const-string v2, "OmaDrmClient"

    const-string v3, "encrypt bad input parameters"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    sget v2, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_INVALID_INPUT:I

    .line 915
    :goto_0
    return v2

    .line 909
    :cond_1
    new-instance v1, Landroid/drm/DrmInfoRequest;

    const/16 v2, 0x7e5

    const-string v3, "application/vnd.mtk.cta5.message"

    invoke-direct {v1, v2, v3}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 911
    .local v1, "request":Landroid/drm/DrmInfoRequest;
    const-string v2, "action"

    const-string v3, "CTA5Encrypt"

    invoke-virtual {v1, v2, v3}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 912
    const-string v2, "CTA5clearFd"

    invoke-virtual {v1, v2, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 913
    const-string v2, "CTA5cipherFd"

    invoke-virtual {v1, v2, p2}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 914
    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, v1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 915
    .local v0, "info":Landroid/drm/DrmInfo;
    sget v2, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_NONE:I

    goto :goto_0
.end method

.method public encrypt(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/lang/String;)I
    .locals 5
    .param p1, "clear_fd"    # Ljava/io/FileDescriptor;
    .param p2, "cipher_fd"    # Ljava/io/FileDescriptor;
    .param p3, "mime"    # Ljava/lang/String;

    .prologue
    .line 928
    const-string v2, "OmaDrmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encrypt() : cipher_fd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", clear_fd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 930
    :cond_0
    const-string v2, "OmaDrmClient"

    const-string v3, "encrypt bad input parameters"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    sget v2, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_INVALID_INPUT:I

    .line 944
    :goto_0
    return v2

    .line 933
    :cond_1
    if-nez p3, :cond_2

    .line 934
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/drm/OmaDrmClient;->encrypt(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)I

    move-result v2

    goto :goto_0

    .line 936
    :cond_2
    new-instance v1, Landroid/drm/DrmInfoRequest;

    const/16 v2, 0x7e5

    const-string v3, "application/vnd.mtk.cta5.message"

    invoke-direct {v1, v2, v3}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 938
    .local v1, "request":Landroid/drm/DrmInfoRequest;
    const-string v2, "action"

    const-string v3, "CTA5Encrypt"

    invoke-virtual {v1, v2, v3}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 939
    const-string v2, "CTA5clearFd"

    invoke-virtual {v1, v2, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 940
    const-string v2, "CTA5cipherFd"

    invoke-virtual {v1, v2, p2}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 941
    const-string v2, "CTA5rawMime"

    invoke-virtual {v1, v2, p3}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 942
    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, v1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 944
    .local v0, "info":Landroid/drm/DrmInfo;
    sget v2, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_NONE:I

    goto :goto_0
.end method

.method public getAvailableDrmEngines()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->getAvailableDrmEngines()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConstraints(Landroid/net/Uri;I)Landroid/content/ContentValues;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "action"    # I

    .prologue
    .line 217
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/drm/OmaDrmClient;->getConstraints(Landroid/net/Uri;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "action"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDrmClient()Landroid/drm/DrmManagerClient;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object v0
.end method

.method public getDrmObjectType(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmManagerClient;->getDrmObjectType(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDrmObjectType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmManagerClient;->getDrmObjectType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMetadata(Landroid/net/Uri;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->getMetadata(Landroid/net/Uri;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getMethod(Landroid/net/Uri;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 747
    const-string v2, "OmaDrmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMethod : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, p1}, Landroid/drm/DrmManagerClient;->getMetadata(Landroid/net/Uri;)Landroid/content/ContentValues;

    move-result-object v0

    .line 750
    .local v0, "cv":Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    const-string v2, "drm_method"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 751
    const-string v2, "drm_method"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 752
    .local v1, "m":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 753
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 756
    .end local v1    # "m":Ljava/lang/Integer;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMethod(Ljava/lang/String;)I
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 766
    const-string v2, "OmaDrmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMethod : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, p1}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 769
    .local v0, "cv":Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    const-string v2, "drm_method"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 770
    const-string v2, "drm_method"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 771
    .local v1, "m":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 772
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 775
    .end local v1    # "m":Ljava/lang/Integer;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getOriginalMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgress(Ljava/io/FileDescriptor;)Lcom/mediatek/drm/OmaDrmClient$Progress;
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    const-wide/16 v2, 0x1

    .line 1067
    const-string v1, "OmaDrmClient"

    const-string v4, "getProgress()"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    new-instance v7, Landroid/drm/DrmInfoRequest;

    const/16 v1, 0x7e5

    const-string v4, "application/vnd.mtk.cta5.message"

    invoke-direct {v7, v1, v4}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1070
    .local v7, "request":Landroid/drm/DrmInfoRequest;
    const-string v1, "action"

    const-string v4, "CTA5GetProgress"

    invoke-virtual {v7, v1, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1071
    const-string v1, "CTA5Fd"

    invoke-virtual {v7, v1, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1072
    iget-object v1, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v1, v7}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 1073
    .local v0, "info":Landroid/drm/DrmInfo;
    new-instance v1, Lcom/mediatek/drm/OmaDrmClient$Progress;

    const/4 v6, 0x0

    move-wide v4, v2

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/drm/OmaDrmClient$Progress;-><init>(JJI)V

    return-object v1
.end method

.method public getThubnail(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 1042
    const-string v0, "OmaDrmClient"

    const-string v1, "getThubnail()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThubnail(Ljava/io/FileDescriptor;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "height"    # I
    .param p3, "width"    # I

    .prologue
    .line 1055
    const-string v0, "OmaDrmClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getThubnail():fd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const/4 v0, 0x0

    return-object v0
.end method

.method public getToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1291
    const-string v3, "OmaDrmClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getToken filePath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    const/4 v2, 0x0

    .line 1293
    .local v2, "result":Ljava/lang/String;
    new-instance v1, Landroid/drm/DrmInfoRequest;

    const/16 v3, 0x7e6

    const-string v4, "application/vnd.mtk.cta5.message"

    invoke-direct {v1, v3, v4}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1295
    .local v1, "request":Landroid/drm/DrmInfoRequest;
    const-string v3, "action"

    const-string v4, "CTA5Gettoken"

    invoke-virtual {v1, v3, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1296
    const-string v3, "CTA5FilePath"

    invoke-virtual {v1, v3, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1297
    iget-object v3, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v3, v1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 1298
    .local v0, "info":Landroid/drm/DrmInfo;
    invoke-direct {p0, v0}, Lcom/mediatek/drm/OmaDrmClient;->getResultFromDrmInfo(Landroid/drm/DrmInfo;)Ljava/lang/String;

    move-result-object v2

    .line 1299
    return-object v2
.end method

.method public installDrmEngine(Ljava/lang/String;)V
    .locals 1
    .param p1, "engineFilePath"    # Ljava/lang/String;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->installDrmEngine(Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public installDrmMsg(Landroid/net/Uri;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/16 v2, -0x7d0

    .line 491
    const-string v3, "OmaDrmClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installDrmMsg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    if-eqz p1, :cond_0

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v3, p1, :cond_1

    .line 494
    :cond_0
    const-string v3, "OmaDrmClient"

    const-string v4, "installDrmMsg : Given uri is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :goto_0
    return v2

    .line 498
    :cond_1
    const/4 v1, 0x0

    .line 500
    .local v1, "path":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/drm/OmaDrmClient;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/mediatek/drm/OmaDrmUtils;->convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 505
    invoke-virtual {p0, v1}, Lcom/mediatek/drm/OmaDrmClient;->installDrmMsg(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 501
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "OmaDrmClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalArgumentException @installDrmMsg : "

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

.method public installDrmMsg(Ljava/lang/String;)I
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 516
    const-string v0, "OmaDrmClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installDrmMsg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/drm/OmaDrmClient;->installDrmMsg(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public installDrmMsg(Ljava/lang/String;Z)I
    .locals 21
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "useFd"    # Z

    .prologue
    .line 562
    const-string v17, "OmaDrmClient"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "installDrmMsg FD path : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    if-eqz p1, :cond_0

    const-string v17, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 565
    :cond_0
    const-string v17, "OmaDrmClient"

    const-string v18, "installDrmMsg : Given path is not valid"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/16 v17, -0x7d0

    .line 656
    :cond_1
    :goto_0
    return v17

    .line 568
    :cond_2
    const/4 v13, 0x0

    .line 569
    .local v13, "info":Landroid/drm/DrmInfo;
    const/4 v10, 0x0

    .line 570
    .local v10, "dmStream":Ljava/io/RandomAccessFile;
    const/4 v6, 0x0

    .line 571
    .local v6, "dcfStream":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .line 572
    .local v8, "dmFd":Ljava/io/FileDescriptor;
    const/4 v3, 0x0

    .line 574
    .local v3, "dcfFd":Ljava/io/FileDescriptor;
    :try_start_0
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 575
    .local v9, "dmFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 576
    new-instance v11, Ljava/io/RandomAccessFile;

    const-string v17, "rw"

    move-object/from16 v0, v17

    invoke-direct {v11, v9, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    .end local v10    # "dmStream":Ljava/io/RandomAccessFile;
    .local v11, "dmStream":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    move-object v10, v11

    .line 579
    .end local v11    # "dmStream":Ljava/io/RandomAccessFile;
    .restart local v10    # "dmStream":Ljava/io/RandomAccessFile;
    :cond_3
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/mediatek/drm/OmaDrmUtils;->generateDcfFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 580
    .local v5, "dcfPath":Ljava/lang/String;
    const-string v17, "OmaDrmClient"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "installDrmMsg :dcfPathL: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    if-nez v5, :cond_a

    .line 582
    const-string v17, "OmaDrmClient"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "installDrmMsg : dcfPath is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 583
    if-eqz v10, :cond_4

    .line 585
    :try_start_3
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 590
    :cond_4
    :goto_1
    const/16 v17, -0x7d0

    .line 623
    if-eqz v10, :cond_5

    .line 625
    :try_start_4
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 630
    :cond_5
    :goto_2
    if-eqz v6, :cond_1

    .line 632
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 633
    :catch_0
    move-exception v12

    .line 634
    .local v12, "e":Ljava/io/IOException;
    const-string v18, "OmaDrmClient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "close dcf stream: I/O Exception: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 586
    .end local v12    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v12

    .line 587
    .restart local v12    # "e":Ljava/io/IOException;
    :try_start_6
    const-string v17, "OmaDrmClient"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "close dm stream: I/O Exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 619
    .end local v5    # "dcfPath":Ljava/lang/String;
    .end local v9    # "dmFile":Ljava/io/File;
    .end local v12    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v14

    .line 621
    .local v14, "ioe":Ljava/io/IOException;
    :goto_3
    :try_start_7
    const-string v17, "OmaDrmClient"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getOriginalMimeType: File I/O exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 623
    if-eqz v10, :cond_6

    .line 625
    :try_start_8
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 630
    :cond_6
    :goto_4
    if-eqz v6, :cond_7

    .line 632
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 640
    .end local v14    # "ioe":Ljava/io/IOException;
    :cond_7
    :goto_5
    const/4 v2, 0x0

    .line 641
    .local v2, "data":[B
    if-eqz v13, :cond_8

    .line 642
    invoke-virtual {v13}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v2

    .line 644
    :cond_8
    const-string v15, ""

    .line 645
    .local v15, "message":Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 648
    :try_start_a
    new-instance v15, Ljava/lang/String;

    .end local v15    # "message":Ljava/lang/String;
    const-string v17, "US-ASCII"

    move-object/from16 v0, v17

    invoke-direct {v15, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_a

    .line 654
    .restart local v15    # "message":Ljava/lang/String;
    :cond_9
    :goto_6
    const-string v17, "OmaDrmClient"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "installDrmMsg FD path: >"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const-string v17, "success"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    const/16 v17, 0x0

    goto/16 :goto_0

    .line 626
    .end local v2    # "data":[B
    .end local v15    # "message":Ljava/lang/String;
    .restart local v5    # "dcfPath":Ljava/lang/String;
    .restart local v9    # "dmFile":Ljava/io/File;
    :catch_3
    move-exception v12

    .line 627
    .restart local v12    # "e":Ljava/io/IOException;
    const-string v18, "OmaDrmClient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "close dm stream: I/O Exception: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 592
    .end local v12    # "e":Ljava/io/IOException;
    :cond_a
    :try_start_b
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 593
    .local v4, "dcfFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_b

    .line 594
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 596
    :cond_b
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 597
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 598
    .end local v6    # "dcfStream":Ljava/io/FileOutputStream;
    .local v7, "dcfStream":Ljava/io/FileOutputStream;
    :try_start_c
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result-object v3

    move-object v6, v7

    .line 602
    .end local v7    # "dcfStream":Ljava/io/FileOutputStream;
    .restart local v6    # "dcfStream":Ljava/io/FileOutputStream;
    :cond_c
    :try_start_d
    new-instance v16, Landroid/drm/DrmInfoRequest;

    const/16 v17, 0x7e5

    const-string v18, "application/vnd.oma.drm.message"

    invoke-direct/range {v16 .. v18}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 604
    .local v16, "request":Landroid/drm/DrmInfoRequest;
    const-string v17, "action"

    const-string v18, "installDrmMsgByFd"

    invoke-virtual/range {v16 .. v18}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 605
    const-string v17, "dmFd"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 608
    const-string v17, "dcfFd"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 609
    const-string v17, "OmaDrmClient"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "installDrmMsg FD:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v13

    .line 612
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 613
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 615
    :cond_d
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 616
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 623
    :cond_e
    if-eqz v10, :cond_f

    .line 625
    :try_start_e
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    .line 630
    :cond_f
    :goto_7
    if-eqz v6, :cond_7

    .line 632
    :try_start_f
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    goto/16 :goto_5

    .line 633
    :catch_4
    move-exception v12

    .line 634
    .restart local v12    # "e":Ljava/io/IOException;
    const-string v17, "OmaDrmClient"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "close dcf stream: I/O Exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 626
    .end local v12    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v12

    .line 627
    .restart local v12    # "e":Ljava/io/IOException;
    const-string v17, "OmaDrmClient"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "close dm stream: I/O Exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 626
    .end local v4    # "dcfFile":Ljava/io/File;
    .end local v5    # "dcfPath":Ljava/lang/String;
    .end local v9    # "dmFile":Ljava/io/File;
    .end local v12    # "e":Ljava/io/IOException;
    .end local v16    # "request":Landroid/drm/DrmInfoRequest;
    .restart local v14    # "ioe":Ljava/io/IOException;
    :catch_6
    move-exception v12

    .line 627
    .restart local v12    # "e":Ljava/io/IOException;
    const-string v17, "OmaDrmClient"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "close dm stream: I/O Exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 633
    .end local v12    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v12

    .line 634
    .restart local v12    # "e":Ljava/io/IOException;
    const-string v17, "OmaDrmClient"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "close dcf stream: I/O Exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 623
    .end local v12    # "e":Ljava/io/IOException;
    .end local v14    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v17

    :goto_8
    if-eqz v10, :cond_10

    .line 625
    :try_start_10
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    .line 630
    :cond_10
    :goto_9
    if-eqz v6, :cond_11

    .line 632
    :try_start_11
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    .line 635
    :cond_11
    :goto_a
    throw v17

    .line 626
    :catch_8
    move-exception v12

    .line 627
    .restart local v12    # "e":Ljava/io/IOException;
    const-string v18, "OmaDrmClient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "close dm stream: I/O Exception: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 633
    .end local v12    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v12

    .line 634
    .restart local v12    # "e":Ljava/io/IOException;
    const-string v18, "OmaDrmClient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "close dcf stream: I/O Exception: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 649
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v2    # "data":[B
    :catch_a
    move-exception v12

    .line 650
    .local v12, "e":Ljava/io/UnsupportedEncodingException;
    const-string v17, "OmaDrmClient"

    const-string v18, "Unsupported encoding type of the returned DrmInfo data"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const-string v15, ""

    .restart local v15    # "message":Ljava/lang/String;
    goto/16 :goto_6

    .line 656
    .end local v12    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_12
    const/16 v17, -0x7d0

    goto/16 :goto_0

    .line 623
    .end local v2    # "data":[B
    .end local v10    # "dmStream":Ljava/io/RandomAccessFile;
    .end local v15    # "message":Ljava/lang/String;
    .restart local v9    # "dmFile":Ljava/io/File;
    .restart local v11    # "dmStream":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v17

    move-object v10, v11

    .end local v11    # "dmStream":Ljava/io/RandomAccessFile;
    .restart local v10    # "dmStream":Ljava/io/RandomAccessFile;
    goto :goto_8

    .end local v6    # "dcfStream":Ljava/io/FileOutputStream;
    .restart local v4    # "dcfFile":Ljava/io/File;
    .restart local v5    # "dcfPath":Ljava/lang/String;
    .restart local v7    # "dcfStream":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v17

    move-object v6, v7

    .end local v7    # "dcfStream":Ljava/io/FileOutputStream;
    .restart local v6    # "dcfStream":Ljava/io/FileOutputStream;
    goto :goto_8

    .line 619
    .end local v4    # "dcfFile":Ljava/io/File;
    .end local v5    # "dcfPath":Ljava/lang/String;
    .end local v10    # "dmStream":Ljava/io/RandomAccessFile;
    .restart local v11    # "dmStream":Ljava/io/RandomAccessFile;
    :catch_b
    move-exception v14

    move-object v10, v11

    .end local v11    # "dmStream":Ljava/io/RandomAccessFile;
    .restart local v10    # "dmStream":Ljava/io/RandomAccessFile;
    goto/16 :goto_3

    .end local v6    # "dcfStream":Ljava/io/FileOutputStream;
    .restart local v4    # "dcfFile":Ljava/io/File;
    .restart local v5    # "dcfPath":Ljava/lang/String;
    .restart local v7    # "dcfStream":Ljava/io/FileOutputStream;
    :catch_c
    move-exception v14

    move-object v6, v7

    .end local v7    # "dcfStream":Ljava/io/FileOutputStream;
    .restart local v6    # "dcfStream":Ljava/io/FileOutputStream;
    goto/16 :goto_3
.end method

.method public isCTAFile(Ljava/io/FileDescriptor;)Z
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 1110
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v4, 0x7e5

    const-string v5, "application/vnd.mtk.cta5.message"

    invoke-direct {v2, v4, v5}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1112
    .local v2, "request":Landroid/drm/DrmInfoRequest;
    const-string v4, "action"

    const-string v5, "CTA5IsCtaFile"

    invoke-virtual {v2, v4, v5}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1113
    const-string v4, "CTA5Fd"

    invoke-virtual {v2, v4, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1114
    iget-object v4, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v4, v2}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 1115
    .local v0, "info":Landroid/drm/DrmInfo;
    invoke-direct {p0, v0}, Lcom/mediatek/drm/OmaDrmClient;->getResultFromDrmInfo(Landroid/drm/DrmInfo;)Ljava/lang/String;

    move-result-object v1

    .line 1116
    .local v1, "message":Ljava/lang/String;
    const-string v4, "success"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 1117
    .local v3, "result":Z
    :goto_0
    return v3

    .line 1116
    .end local v3    # "result":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isCTAFile(Ljava/lang/String;)Z
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1126
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v4, 0x7e5

    const-string v5, "application/vnd.mtk.cta5.message"

    invoke-direct {v2, v4, v5}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1128
    .local v2, "request":Landroid/drm/DrmInfoRequest;
    const-string v4, "action"

    const-string v5, "CTA5IsCtaFile"

    invoke-virtual {v2, v4, v5}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1129
    const-string v4, "CTA5FilePath"

    invoke-virtual {v2, v4, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1130
    iget-object v4, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v4, v2}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 1131
    .local v0, "info":Landroid/drm/DrmInfo;
    invoke-direct {p0, v0}, Lcom/mediatek/drm/OmaDrmClient;->getResultFromDrmInfo(Landroid/drm/DrmInfo;)Ljava/lang/String;

    move-result-object v1

    .line 1132
    .local v1, "message":Ljava/lang/String;
    const-string v4, "success"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 1133
    .local v3, "result":Z
    :goto_0
    return v3

    .line 1132
    .end local v3    # "result":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isTokenValid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 1306
    const-string v4, "OmaDrmClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isTokenValid filePath:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    const/4 v3, 0x0

    .line 1308
    .local v3, "result":Z
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v4, 0x7e6

    const-string v5, "application/vnd.mtk.cta5.message"

    invoke-direct {v2, v4, v5}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1310
    .local v2, "request":Landroid/drm/DrmInfoRequest;
    const-string v4, "action"

    const-string v5, "CTA5Checktoken"

    invoke-virtual {v2, v4, v5}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1311
    const-string v4, "CTA5FilePath"

    invoke-virtual {v2, v4, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1312
    const-string v4, "CTA5Token"

    invoke-virtual {v2, v4, p2}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1313
    iget-object v4, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v4, v2}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 1314
    .local v0, "info":Landroid/drm/DrmInfo;
    invoke-direct {p0, v0}, Lcom/mediatek/drm/OmaDrmClient;->getResultFromDrmInfo(Landroid/drm/DrmInfo;)Ljava/lang/String;

    move-result-object v1

    .line 1315
    .local v1, "message":Ljava/lang/String;
    const-string v4, "success"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 1316
    :goto_0
    return v3

    .line 1315
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public processDrmInfo(Landroid/drm/DrmInfo;)I
    .locals 1
    .param p1, "drmInfo"    # Landroid/drm/DrmInfo;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->processDrmInfo(Landroid/drm/DrmInfo;)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 133
    const-string v0, "OmaDrmClient"

    const-string v1, "release OmaDrmClient instance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->release()V

    .line 137
    :cond_0
    return-void
.end method

.method public removeAllRights()I
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->removeAllRights()I

    move-result v0

    return v0
.end method

.method public removeRights(Landroid/net/Uri;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 470
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->removeRights(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public removeRights(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 459
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->removeRights(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public rescanDrmMediaFiles(Landroid/content/Context;Landroid/drm/DrmRights;Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rights"    # Landroid/drm/DrmRights;
    .param p3, "callback"    # Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;

    .prologue
    .line 792
    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    new-instance v3, Lcom/mediatek/drm/OmaDrmClient$getCidListener;

    invoke-direct {v3, p0, p1, p3}, Lcom/mediatek/drm/OmaDrmClient$getCidListener;-><init>(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;)V

    invoke-virtual {v2, v3}, Landroid/drm/DrmManagerClient;->setOnEventListener(Landroid/drm/DrmManagerClient$OnEventListener;)V

    .line 795
    new-instance v0, Landroid/drm/DrmInfo;

    const/16 v2, 0x7e6

    invoke-virtual {p2}, Landroid/drm/DrmRights;->getData()[B

    move-result-object v3

    invoke-virtual {p2}, Landroid/drm/DrmRights;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Landroid/drm/DrmInfo;-><init>(I[BLjava/lang/String;)V

    .line 798
    .local v0, "info":Landroid/drm/DrmInfo;
    const-string v2, "action"

    const-string v3, "getContentId"

    invoke-virtual {v0, v2, v3}, Landroid/drm/DrmInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 801
    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, v0}, Landroid/drm/DrmManagerClient;->processDrmInfo(Landroid/drm/DrmInfo;)I

    move-result v1

    .line 802
    .local v1, "result":I
    const-string v2, "OmaDrmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OmaDrmClient#rescanDrmMediaFiles: > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    return v1
.end method

.method public saveRights(Landroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "drmRights"    # Landroid/drm/DrmRights;
    .param p2, "rightsPath"    # Ljava/lang/String;
    .param p3, "contentPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/drm/DrmManagerClient;->saveRights(Landroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setKey([B)I
    .locals 5
    .param p1, "key"    # [B

    .prologue
    .line 1006
    const-string v2, "OmaDrmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setKey() : key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    new-instance v1, Landroid/drm/DrmInfoRequest;

    const/16 v2, 0x7e5

    const-string v3, "application/vnd.mtk.cta5.message"

    invoke-direct {v1, v2, v3}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1009
    .local v1, "request":Landroid/drm/DrmInfoRequest;
    const-string v2, "action"

    const-string v3, "CTA5SetKey"

    invoke-virtual {v1, v2, v3}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1010
    const-string v2, "CTA5key"

    invoke-virtual {v1, v2, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1011
    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, v1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 1012
    .local v0, "info":Landroid/drm/DrmInfo;
    sget v2, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_NONE:I

    return v2
.end method

.method public setProgressListener(Lcom/mediatek/drm/OmaDrmClient$ProgressListener;)I
    .locals 2
    .param p1, "progressListener"    # Lcom/mediatek/drm/OmaDrmClient$ProgressListener;

    .prologue
    .line 1080
    iput-object p1, p0, Lcom/mediatek/drm/OmaDrmClient;->mProgressListener:Lcom/mediatek/drm/OmaDrmClient$ProgressListener;

    .line 1081
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    iget-object v1, p0, Lcom/mediatek/drm/OmaDrmClient;->mProgressInfoListener:Lcom/mediatek/drm/OmaDrmClient$ProgressInfoListener;

    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClient;->setOnInfoListener(Landroid/drm/DrmManagerClient$OnInfoListener;)V

    .line 1082
    sget v0, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_NONE:I

    return v0
.end method
