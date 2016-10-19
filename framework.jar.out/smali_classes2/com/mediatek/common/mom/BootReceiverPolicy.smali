.class public final Lcom/mediatek/common/mom/BootReceiverPolicy;
.super Ljava/lang/Object;
.source "BootReceiverPolicy.java"


# static fields
.field private static mBootIntentFilter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/common/mom/BootReceiverPolicy;->mBootIntentFilter:Ljava/util/List;

    .line 56
    sget-object v0, Lcom/mediatek/common/mom/BootReceiverPolicy;->mBootIntentFilter:Ljava/util/List;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/mediatek/common/mom/BootReceiverPolicy;->mBootIntentFilter:Ljava/util/List;

    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBootPolicy()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    sget-object v0, Lcom/mediatek/common/mom/BootReceiverPolicy;->mBootIntentFilter:Ljava/util/List;

    return-object v0
.end method

.method public static match(Ljava/lang/String;)Z
    .locals 1
    .param p0, "intent"    # Ljava/lang/String;

    .prologue
    .line 65
    sget-object v0, Lcom/mediatek/common/mom/BootReceiverPolicy;->mBootIntentFilter:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
