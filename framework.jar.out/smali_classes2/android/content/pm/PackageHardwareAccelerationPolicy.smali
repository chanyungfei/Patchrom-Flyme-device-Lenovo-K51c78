.class public final Landroid/content/pm/PackageHardwareAccelerationPolicy;
.super Ljava/lang/Object;
.source "PackageHardwareAccelerationPolicy.java"


# static fields
.field private static sWhistlist:Ljava/util/List;
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
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/pm/PackageHardwareAccelerationPolicy;->sWhistlist:Ljava/util/List;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getList()Ljava/util/List;
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
    .line 58
    sget-object v0, Landroid/content/pm/PackageHardwareAccelerationPolicy;->sWhistlist:Ljava/util/List;

    return-object v0
.end method

.method public static match(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 67
    sget-object v0, Landroid/content/pm/PackageHardwareAccelerationPolicy;->sWhistlist:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
