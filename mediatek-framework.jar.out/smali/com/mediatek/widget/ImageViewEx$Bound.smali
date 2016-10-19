.class Lcom/mediatek/widget/ImageViewEx$Bound;
.super Ljava/lang/Object;
.source "ImageViewEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/widget/ImageViewEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Bound"
.end annotation


# instance fields
.field private height:I

.field final synthetic this$0:Lcom/mediatek/widget/ImageViewEx;

.field private width:I


# direct methods
.method private constructor <init>(Lcom/mediatek/widget/ImageViewEx;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/mediatek/widget/ImageViewEx$Bound;->this$0:Lcom/mediatek/widget/ImageViewEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/widget/ImageViewEx;Lcom/mediatek/widget/ImageViewEx$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/widget/ImageViewEx;
    .param p2, "x1"    # Lcom/mediatek/widget/ImageViewEx$1;

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lcom/mediatek/widget/ImageViewEx$Bound;-><init>(Lcom/mediatek/widget/ImageViewEx;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/widget/ImageViewEx$Bound;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/widget/ImageViewEx$Bound;

    .prologue
    .line 330
    iget v0, p0, Lcom/mediatek/widget/ImageViewEx$Bound;->width:I

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/widget/ImageViewEx$Bound;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/widget/ImageViewEx$Bound;
    .param p1, "x1"    # I

    .prologue
    .line 330
    iput p1, p0, Lcom/mediatek/widget/ImageViewEx$Bound;->width:I

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/widget/ImageViewEx$Bound;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/widget/ImageViewEx$Bound;

    .prologue
    .line 330
    iget v0, p0, Lcom/mediatek/widget/ImageViewEx$Bound;->height:I

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/widget/ImageViewEx$Bound;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/widget/ImageViewEx$Bound;
    .param p1, "x1"    # I

    .prologue
    .line 330
    iput p1, p0, Lcom/mediatek/widget/ImageViewEx$Bound;->height:I

    return p1
.end method
