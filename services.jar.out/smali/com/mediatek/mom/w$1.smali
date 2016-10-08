.class Lcom/mediatek/mom/w$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mom/w;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aE:Lcom/mediatek/mom/w;


# direct methods
.method constructor <init>(Lcom/mediatek/mom/w;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/mediatek/mom/w$1;->aE:Lcom/mediatek/mom/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/mediatek/mom/w$1;->aE:Lcom/mediatek/mom/w;

    invoke-static {v0}, Lcom/mediatek/mom/w;->a(Lcom/mediatek/mom/w;)V

    .line 437
    return-void
.end method
