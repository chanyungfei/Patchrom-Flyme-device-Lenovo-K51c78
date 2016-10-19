.class Lcom/mediatek/mom/p$b;
.super Landroid/app/PackageInstallObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mom/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field ab:Lcom/mediatek/common/mom/IPackageInstallCallback;


# direct methods
.method public constructor <init>(Lcom/mediatek/common/mom/IPackageInstallCallback;)V
    .locals 1

    .prologue
    .line 240
    invoke-direct {p0}, Landroid/app/PackageInstallObserver;-><init>()V

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mom/p$b;->ab:Lcom/mediatek/common/mom/IPackageInstallCallback;

    .line 241
    iput-object p1, p0, Lcom/mediatek/mom/p$b;->ab:Lcom/mediatek/common/mom/IPackageInstallCallback;

    .line 242
    return-void
.end method
