.class public Lcom/mediatek/drm/OmaDrmStore$DrmRequestKey;
.super Ljava/lang/Object;
.source "OmaDrmStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/drm/OmaDrmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrmRequestKey"
.end annotation


# static fields
.field public static final KEY_ACTION:Ljava/lang/String; = "action"

.field public static final KEY_CTA5_CIPHER_FD:Ljava/lang/String; = "CTA5cipherFd"

.field public static final KEY_CTA5_CLEAR_FD:Ljava/lang/String; = "CTA5clearFd"

.field public static final KEY_CTA5_FD:Ljava/lang/String; = "CTA5Fd"

.field public static final KEY_CTA5_FILEPATH:Ljava/lang/String; = "CTA5FilePath"

.field public static final KEY_CTA5_KEY:Ljava/lang/String; = "CTA5key"

.field public static final KEY_CTA5_NEWKEY:Ljava/lang/String; = "CTA5newKey"

.field public static final KEY_CTA5_OLDKEY:Ljava/lang/String; = "CTA5oldKey"

.field public static final KEY_CTA5_RAW_MIME:Ljava/lang/String; = "CTA5rawMime"

.field public static final KEY_CTA5_TOKEN:Ljava/lang/String; = "CTA5Token"

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_DATA_EXTRA_1:Ljava/lang/String; = "data_extra_1"

.field public static final KEY_DATA_EXTRA_2:Ljava/lang/String; = "data_extra_2"

.field public static final KEY_DCF_FD:Ljava/lang/String; = "dcfFd"

.field public static final KEY_DM_FD:Ljava/lang/String; = "dmFd"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
