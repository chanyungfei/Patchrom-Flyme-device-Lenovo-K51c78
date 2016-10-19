.class Lcom/mediatek/mom/MobileManagerService$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mom/MobileManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private mTypes:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public q(I)Z
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/mediatek/mom/MobileManagerService$a;->mTypes:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r(I)V
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/mediatek/mom/MobileManagerService$a;->mTypes:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/mom/MobileManagerService$a;->mTypes:I

    .line 207
    return-void
.end method
